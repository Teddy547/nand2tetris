from Parser import Parser
from CodeWriter import CodeWriter

if __name__ == '__main__':
    file_to_read = "/home/christian/dev/virtual_machine/Test_Dateien/BasicTest.vm"
    line_number = 0

    file_to_write = file_to_read.strip(".vm")
    file_to_write = file_to_write + ".asm"

    input_source = Parser(file_to_read)
    output_source = CodeWriter(file_to_write)

    while True:
        line = input_source.advance()
        line_number = line_number + 1

        if not line == input_source.NOTHING and line:
            c_type = input_source.command_type(line)
            argument_1 = input_source.arg1(line, c_type)

            if c_type == input_source.C_PUSH or c_type == input_source.C_POP or c_type == input_source.C_FUNCTION or c_type == input_source.C_CALL:
                argument_2 = input_source.arg2(line)
            else:
                argument_2 = ''

            #Write the current VM command as a comment in the assembly file for easier debugging
            output_source.file.write(f"\n//{line}")

            if c_type == input_source.C_PUSH or c_type == input_source.C_POP:
                output_source.write_push_pop(c_type, argument_1, argument_2)

            if c_type == input_source.C_ARITHMETIC:
                output_source.write_arithmetic(argument_1, line_number)

        if not line:
            output_source.finishing_line()
            break

    input_source.close_file()
    output_source.close_file()