import os
import glob

from Parser import Parser
from CodeWriter import CodeWriter

if __name__ == '__main__':

    folder_to_read = "/home/christian/dev/virtual_machine/Test_Dateien/FibonacciElement"
    line_number = 0
    counter = 1
    files = [100]
    input_source = ""
    output_source = ""

    # Check if the supplied 'folder_to_read' is actually a folder
    # or a single file and then generate the output file accordingly
    if os.path.isdir(folder_to_read):
        files = glob.glob(folder_to_read + "/*.vm")
        file_to_write_name = folder_to_read.split("/")
        file_to_write = folder_to_read + "/" + file_to_write_name[-1] + ".asm"
    elif os.path.isfile(folder_to_read):
        files[0] = folder_to_read
        file_to_write = folder_to_read.strip(".vm")
        file_to_write = file_to_write + ".asm"
    else:
        file_to_write = ""

    # Removes any existing '.asm' output file
    try:
        os.remove(file_to_write)
    except OSError:
        pass

    output_source = CodeWriter(file_to_write)

    # Loops over all '.vm' files in the folder or just over one single supplied '.vm' file. Whatever is the case
    for i in range(len(files)):
        input_source = Parser(files[i])
        file_name = files[i].split("/")
        file_name = file_name[-1].strip(".vm")

        function_name = ''

    # Loop breaks when has_more_lines returns false
        while True:
            line = input_source.advance()
            line_number = line_number + 1
            argument_1 = ''
            argument_2 = ''

            if not line == input_source.NOTHING and input_source.has_more_lines(line):
                c_type = input_source.command_type(line)

                if not c_type == input_source.C_RETURN:
                    argument_1 = input_source.arg1(line, c_type)

                if (c_type == input_source.C_PUSH or c_type == input_source.C_POP or c_type == input_source.C_FUNCTION
                        or c_type == input_source.C_CALL):
                    argument_2 = input_source.arg2(line)
                    if c_type == input_source.C_FUNCTION:
                        function_name = argument_1
                    elif c_type == input_source.C_RETURN:
                        function_name = ''
                else:
                    argument_2 = ''

                # Write the current VM command as a comment in the assembly file for easier debugging
                # output_source.file.write(f"\n//{line}")

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
                    output_source.write_function(function_name, argument_2)

                if c_type == input_source.C_CALL:
                    output_source.write_call(argument_1, counter, argument_2)
                    counter = counter + 1

                if c_type == input_source.C_RETURN:
                    output_source.write_return()

            if not input_source.has_more_lines(line):
                input_source.close_file()
                break

    output_source.finishing_line()
    output_source.close_file()
