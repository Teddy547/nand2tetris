from Constants import constants

class CodeWriter(constants):

    def __init__(self, file_name):
        self.file = open(file_name, "w")

    def write_arithmetic(self, command, line_number):

        if command == "add":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=M+D\n")
            self.__push()

        if command == "sub":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=D-M\n")
            self.__push()

        if command == "neg":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.file.write("D=-M\n")
            self.__push()

        if command == "eq":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=D-M\n")
            self.file.write(f"@EQUAL.{line_number}\n"
                            "D;JEQ\n"
                            f"@NOTEQUAL.{line_number}\n"
                            "D;JNE\n"
                            f"(EQUAL.{line_number})\n"
                            "D=-1\n"
                            f"@AFTER.{line_number}\n"
                            "0;JMP\n"
                            f"(NOTEQUAL.{line_number})\n"
                            "D=0\n"
                            f"(AFTER.{line_number})\n")
            self.__push()

        if command == "gt":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=D-M\n")
            self.file.write(f"@GREATER.{line_number}\n"
                            "D;JGT\n"
                            f"@NOTGREATER.{line_number}\n"
                            "D;JLE\n"
                            f"(GREATER.{line_number})\n"
                            "D=-1\n"
                            f"@AFTER.{line_number}\n"
                            "0;JMP\n"
                            f"(NOTGREATER.{line_number})\n"
                            "D=0\n"
                            f"(AFTER.{line_number})\n")
            self.__push()

        if command == "lt":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=D-M\n")
            self.file.write(f"@LOWER.{line_number}\n"
                            "D;JLT\n"
                            f"@NOTLOWER.{line_number}\n"
                            "D;JGE\n"
                            f"(LOWER.{line_number})\n"
                            "D=-1\n"
                            f"@AFTER.{line_number}\n"
                            "0;JMP\n"
                            f"(NOTLOWER.{line_number})\n"
                            "D=0\n"
                            f"(AFTER.{line_number})\n")
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

    def write_push_pop(self, command, segment, index):
        assembly_seg = ''

        if segment == "local":
            assembly_seg = "LCL"
        elif segment == "argument":
            assembly_seg = "ARG"
        elif segment == "this" or (segment == "pointer" and index == 0):
            assembly_seg = "THIS"
        elif segment == "that" or (segment == "pointer" and index == 1):
            assembly_seg = "THAT"
        elif segment == "temp":
            index = 5 +index

        if command == self.C_PUSH:
            self.file.write(f"@{assembly_seg}{index}\n")

            if segment == "constant":
                self.file.write("D=A\n")
            else:
                self.file.write("M=D\n")

            self.__push()

        if command == self.C_POP:
            self.__pop()
            self.file.write(f"@{assembly_seg}{index}\n"
                            f"M=D\n")

    def __pop(self):
        self.file.write("@SP\n"
                        "M=M-1\n"
                        "A=M\n"
                        "D=M\n")

    def __push(self):
        self.file.write("@SP\n"
                        "A=M\n"
                        "M=D\n"
                        "@SP\n"
                        "M=M+1\n")

    def finishing_line(self):
        self.file.write("//finish\n"
                        "(END)\n"
                        "@END\n"
                        "0;JMP")

    def close_file(self):
        self.file.close()