from Constants import constants

# This class generates and writes assembly code to the output file
# The generated code depends on the type of command which the parser reads
class CodeWriter(constants):

    def __init__(self, file_name):
        self.file = open(file_name, "w")

    # Writes Assembly code for any arithmetic command
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

        # 'Lower than': Assembly code is analogous to 'equal'
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
                                f"D=A\n"                                # write index address in the data register
                                f"@{assembly_seg}\n"                    
                                f"A=D+M\n"                              # set address register to base address + index address
                                f"D=M\n")                               # set data register to the value to be pushed

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
                                f"D=A\n"                                # take address of index into the data register
                                f"@{assembly_seg}\n"
                                f"D=D+M\n"                              # take index address + base address (stored in the memory of 'assembly_seg') into the data register
                                f"@13\n"
                                f"M=D\n")                               # store address at the internal address '@13'
                self.__pop()                                            # pop topmost stack value into the data register
                self.file.write("@13\n"                                 
                                "A=M\n"                                 # set address register to address saved at '@13'
                                "M=D\n")                                # store the value from the data register at the target destination

    # Writes a label to the output file. The label is made unique
    # by adding the file name to it.
    def writeLabel(self, label, file_name):
        self.file.write(f"({label}.{file_name})\n")

    # Generates assembly code that realizes an unconditional jump
    # to the specified label.
    def writeGoto(self, label, file_name):
        self.file.write(f"@{label}.{file_name}\n"
                        f"0;JMP\n")

    # Generates assembly code that realizes a conditional jump
    # to the specified label. First, pops the stacks topmost value
    # into the data register. Jumps to label if value is not zero.
    def writeIf(self, label, file_name):
        self.__pop()
        self.file.write(f"@{label}.{file_name}\n"
                        f"D;JNE\n")

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