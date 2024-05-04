from Constants import constants

class CodeWriter(constants):

    def __init__(self, file_name):
        self.file = open(file_name, "w")

    #Writes Assembly code for any arithmetic command
    def write_arithmetic(self, command, line_number, file_name):

        if command == "add":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=M+D\n")
            self.__push()

        if command == "sub":
            self.__subtract()
            self.__push()

        if command == "neg":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.file.write("D=-M\n")
            self.__push()

        # 'Equal': Subtracts to topmost values on the stack from each other.
        # If the value is '0' they are equal, else they are not.
        # Labels and Jump commands are used to differentiate accordingly.
        # The labels are named and numbered to differentiate between them
        if command == "eq":
            self.__subtract()
            self.file.write(f"@EQUAL.{file_name}.{line_number}\n"
                            "D;JEQ\n"
                            f"@NOTEQUAL.{file_name}.{line_number}\n"
                            "D;JNE\n"
                            f"(EQUAL.{file_name}.{line_number})\n"
                            "D=-1\n"
                            f"@AFTER.{file_name}.{line_number}\n"
                            "0;JMP\n"
                            f"(NOTEQUAL.{file_name}.{line_number})\n"
                            "D=0\n"
                            f"(AFTER.{file_name}.{line_number})\n")
            self.__push()

        # 'Greater than': Assembly code is analogous to 'egual'
        if command == "gt":
            self.__subtract()
            self.file.write(f"@GREATER.{file_name}.{line_number}\n"
                            "D;JGT\n"
                            f"@NOTGREATER.{file_name}.{line_number}\n"
                            "D;JLE\n"
                            f"(GREATER.{file_name}.{line_number})\n"
                            "D=-1\n"
                            f"@AFTER.{file_name}.{line_number}\n"
                            "0;JMP\n"
                            f"(NOTGREATER.{file_name}.{line_number})\n"
                            "D=0\n"
                            f"(AFTER.{file_name}.{line_number})\n")
            self.__push()

        # 'Lower than: Assembly code is analogous to 'equal'
        if command == "lt":
            self.__subtract()
            self.file.write(f"@LOWER.{file_name}.{line_number}\n"
                            "D;JLT\n"
                            f"@NOTLOWER.{file_name}.{line_number}\n"
                            "D;JGE\n"
                            f"(LOWER.{file_name}.{line_number})\n"
                            "D=-1\n"
                            f"@AFTER.{file_name}.{line_number}\n"
                            "0;JMP\n"
                            f"(NOTLOWER.{file_name}.{line_number})\n"
                            "D=0\n"
                            f"(AFTER.{file_name}.{line_number})\n")
            self.__push()

        if command == "and":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=M&D\n")
            self.__push()

        if command == "or":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=M|D\n")
            self.__push()

        if command == "not":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.file.write("D=!M\n")
            self.__push()

    # Realizes 'push' and 'pop' commands regarding different memory segments.
    def write_push_pop(self, command, segment, index, file_name):
        assembly_seg = ''

        # 'temp' segment starts at RAM adress 5
        # static is named by file name and numbered by line number of first appearance
        # to differentiate between different files and in one file.
        if segment == "local":
            assembly_seg = "LCL"
        elif segment == "argument":
            assembly_seg = "ARG"
        elif segment == "this" or (segment == "pointer" and index == "0"):
            assembly_seg = "THIS"
        elif segment == "that" or (segment == "pointer" and index == "1"):
            assembly_seg = "THAT"
        elif segment == "temp":
            index = int(5) + int(index)
        elif segment == "static":
            assembly_seg = f"{file_name}.{index}"

        if command == self.C_PUSH:

            if segment == "constant":
                self.file.write(f"@{index}\n"
                                f"D=A\n")
            elif segment == "temp":
                self.file.write(f"@{index}\n"
                                f"D=M\n")
            elif segment == "pointer" or segment == "static":
                self.file.write(f"@{assembly_seg}\n"
                                f"D=M\n")
            else:
                self.file.write(f"@{index}\n"                       
                                f"D=A\n"                                # write index adress in the data register
                                f"@{assembly_seg}\n"                    
                                f"A=D+M\n"                              # set adress register to base adress + index adress
                                f"D=M\n")

            self.__push()

        if command == self.C_POP:

            if segment == "temp":
                self.__pop()
                self.file.write(f"@{index}\n"
                                f"M=D\n")
            elif segment == "pointer" or segment == "static":
                self.__pop()
                self.file.write(f"@{assembly_seg}\n"
                                f"M=D\n")
            else:
                self.file.write(f"@{index}\n"
                                f"D=A\n"                                # take adress of index into the data register
                                f"@{assembly_seg}\n"
                                f"D=D+M\n"                              # take index adress + base adress (stored in the memory of 'assembly_seg') into the data register
                                f"@13\n"
                                f"M=D\n")                               # store adress at the internal adress '@13'
                self.__pop()                                            # pop topmost stack value into the data register
                self.file.write("@13\n"
                                "A=M\n"
                                "M=D\n")                                # get before saved adress from '@13', set the adress register accordingly and finally store the value from the data register

    # Generic assembly code to pop the topmost stack value into
    # the data register.
    def __pop(self):
        self.file.write("@SP\n"
                        "M=M-1\n"
                        "A=M\n"
                        "D=M\n")

    # Generic assembly code to push the value stored in the data
    # register to the top of the stack.
    def __push(self):
        self.file.write("@SP\n"
                        "A=M\n"
                        "M=D\n"
                        "@SP\n"
                        "M=M+1\n")

    # Assembly code that pops the two topmost values of the stack,
    # subtracts the second from the first one and stores the result
    # in the data register.
    def __subtract(self):
        self.__pop()
        self.file.write("@13\n"
                        "M=D\n")
        self.__pop()
        self.file.write("@13\n"
                        "D=D-M\n")

    # Generates assembly code that realizes an infinite loop. Good practice
    # to finish any assembly program.
    def finishing_line(self):
        self.file.write("\n//finish\n"
                        "(END)\n"
                        "@END\n"
                        "0;JMP")

    def close_file(self):
        self.file.close()