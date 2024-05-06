from Parser import Parser
from CodeWriter import CodeWriter

if __name__ == '__main__':
    file_to_read = "/home/christian/dev/virtual_machine/Test_Dateien/SimpleFunction.vm"
    line_number = 0

    # Construct the output file name
    file_to_write = file_to_read.strip(".vm")
    file_to_write = file_to_write + ".asm"

    # Construct the file name needed to differentiate static variables and labels
    file_name = file_to_read.split("/")
    file_name = file_name[-1].strip(".vm")

    input_source = Parser(file_to_read)
    output_source = CodeWriter(file_to_write)

    # Loop breaks when has_more_lines returns false
    while True:
        line = input_source.advance()
        line_number = line_number + 1
        argument_1 = ''
        argument_2 = ''
        function_name = ''

        if not line == input_source.NOTHING and input_source.has_more_lines(line):
            c_type = input_source.command_type(line)

            if not c_type == input_source.C_RETURN:
                argument_1 = input_source.arg1(line, c_type)

            if c_type == input_source.C_PUSH or c_type == input_source.C_POP or c_type == input_source.C_FUNCTION or c_type == input_source.C_CALL:
                argument_2 = input_source.arg2(line)
                if c_type == input_source.C_FUNCTION:
                    function_name = argument_1
                elif c_type == input_source.C_RETURN:
                    function_name = ''
            else:
                argument_2 = ''

            # Write the current VM command as a comment in the assembly file for easier debugging
            output_source.file.write(f"\n//{line}")

            if c_type == input_source.C_PUSH or c_type == input_source.C_POP:
                output_source.write_push_pop(c_type, argument_1, argument_2, file_name)

            if c_type == input_source.C_ARITHMETIC:
                output_source.write_arithmetic(argument_1, line_number, file_name)

            if c_type == input_source.C_LABEL:
                output_source.write_label(file_name, function_name, argument_1)

            if c_type == input_source.C_GOTO:
                output_source.write_goto(file_name, function_name, argument_1)

            if c_type == input_source.C_IF:
                output_source.write_if(file_name, function_name, argument_1)

            if c_type == input_source.C_FUNCTION:
                output_source.write_function(file_name, function_name, argument_2)

            if c_type == input_source.C_RETURN:
                output_source.write_return()

        if not input_source.has_more_lines(line):
            output_source.finishing_line()
            break

    input_source.close_file()
    output_source.close_file()