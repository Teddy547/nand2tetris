from Constants import constants

class CodeWriter(constants):

    def __init__(self, file_name):
        self.file = open(file_name, "w")

    def write_arithmetic(self, command):

        if command == "add":
            self.__pop()
            self.file.write("@13\n"
                            "M=D\n")
            self.__pop()
            self.file.write("@13\n"
                            "D=M+D\n")
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