from Constants import constants


# This class generates and writes assembly code to the output file
# The generated code depends on the type of command which the parser reads
# The file is opened in append mode to properly merge more than one input file
# into a single output file
class CodeWriter(constants):

    def __init__(self, file_name):
        self.file = open(file_name, "a")

        self.file.write("@256\n"
                        "D=A\n"
                        "@SP\n"
                        "M=D\n")
        self.write_call("Sys.init", '0', '0')
        self.write_global_equal()
        self.write_global_greater_than()
        self.write_global_lower_than()
        self.__write_global_call()
        self.__write_global_return()

    # Writes Assembly code for any arithmetic command
    # All commands compute directly on the stack bypassing "push" and "pop" completely
    # Thus the generated code is as short and as efficient as possible
    def write_arithmetic(self, command, line_number, file_name):

        if command == "add":
            self.file.write("@SP\n"
                            "AM=M-1\n"
                            "D=M\n"
                            "A=A-1\n"
                            "M=D+M\n")

        if command == "sub":
            self.file.write("@SP\n"
                            "AM=M-1\n"
                            "D=M\n"
                            "A=A-1\n"
                            "M=M-D\n")

        if command == "neg":
            self.file.write("@SP\n"
                            "A=M-1\n"
                            "M=-M\n")

        # 'Equal': Subtracts to topmost values on the stack from each other.
        # If the value is '0' they are equal, else they are not.
        # Labels and Jump commands are used to differentiate accordingly.
        # The labels are named and numbered to differentiate between them
        # The computation is performed directly on the stack without any use of "push" or "pop"
        if command == "eq":
            self.file.write(f"@EQUAL.{file_name}.{line_number}\n"
                            f"D=A\n"
                            f"@15\n"
                            f"M=D\n"
                            f"@GLOBAL_EQUAL\n"
                            f"0;JMP\n"
                            f"(EQUAL.{file_name}.{line_number})\n")

        # 'Greater than': Assembly code is analogous to 'equal'
        if command == "gt":
            self.file.write(f"@GREATERTHAN.{file_name}.{line_number}\n"
                            f"D=A\n"
                            f"@15\n"
                            f"M=D\n"
                            f"@GLOBAL_GREATERTHAN\n"
                            f"0;JMP\n"
                            f"(GREATERTHAN.{file_name}.{line_number})\n")

        # 'Lower than': Assembly code is analogous to 'equal'
        if command == "lt":
            self.file.write(f"@LOWERTHAN.{file_name}.{line_number}\n"
                            f"D=A\n"
                            f"@15\n"
                            f"M=D\n"
                            f"@GLOBAL_LOWERTHAN\n"
                            f"0;JMP\n"
                            f"(LOWERTHAN.{file_name}.{line_number})\n")

        if command == "and":
            self.file.write("@SP\n"
                            "AM=M-1\n"
                            "D=M\n"
                            "A=A-1\n"
                            "M=D&M\n")

        if command == "or":
            self.file.write("@SP\n"
                            "AM=M-1\n"
                            "D=M\n"
                            "A=A-1\n"
                            "M=D|M\n")

        if command == "not":
            self.file.write("@SP\n"
                            "A=M-1\n"
                            "M=!M\n")

    def write_global_equal(self):
        self.file.write("\n //equal\n")

        self.file.write("(GLOBAL_EQUAL)\n")

        self.file.write("@SP\n"
                        "AM=M-1\n"
                        "D=M\n"
                        "A=A-1\n"
                        "D=M-D\n")

        self.file.write(f"@NOTEQUAL\n"
                        "D;JNE\n"
                        f"@SP\n"
                        f"A=M-1\n"
                        "M=-1\n"
                        f"@AFTERNOTEQUAL\n"
                        "0;JMP\n"
                        f"(NOTEQUAL)\n"
                        "@SP\n"
                        "A=M-1\n"
                        "M=0\n"
                        f"(AFTERNOTEQUAL)\n")

        self.file.write("@15\n"
                        "A=M\n"
                        "0;JMP\n")

    def write_global_greater_than(self):
        self.file.write("\n //greater\n")

        self.file.write("(GLOBAL_GREATERTHAN)\n")

        self.file.write("@SP\n"
                        "AM=M-1\n"
                        "D=M\n"
                        "A=A-1\n"
                        "D=M-D\n")

        self.file.write(f"@NOTGREATER\n"
                        "D;JLE\n"
                        "@SP\n"
                        "A=M-1\n"
                        "M=-1\n"
                        f"@AFTERNOTGREATER\n"
                        "0;JMP\n"
                        f"(NOTGREATER)\n"
                        f"@SP\n"
                        f"A=M-1\n"
                        "M=0\n"
                        f"(AFTERNOTGREATER)\n")

        self.file.write("@15\n"
                        "A=M\n"
                        "0;JMP\n")

    def write_global_lower_than(self):
        self.file.write("\n //lower\n")

        self.file.write("(GLOBAL_LOWERTHAN)\n")

        self.file.write("@SP\n"
                        "AM=M-1\n"
                        "D=M\n"
                        "A=A-1\n"
                        "D=M-D\n")

        self.file.write(f"@NOTLOWER\n"
                        "D;JGE\n"
                        "@SP\n"
                        "A=M-1\n"
                        "M=-1\n"
                        f"@AFTERNOTLOWER\n"
                        "0;JMP\n"
                        f"(NOTLOWER)\n"
                        f"@SP\n"
                        f"A=M-1\n"
                        "M=0\n"
                        f"(AFTERNOTLOWER)\n")

        self.file.write("@15\n"
                        "A=M\n"
                        "0;JMP\n")

    # Realizes 'push' and 'pop' commands regarding different memory segments.
    def write_push_pop(self, command, segment, index, file_name):
        assembly_seg = ''

        # 'temp' segment starts at RAM address 5
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
                                f"D=A\n"  # write index address in the data register
                                f"@{assembly_seg}\n"
                                f"A=D+M\n"  # set address register to base address + index address
                                f"D=M\n")  # set data register to the value to be pushed

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
                                f"D=A\n"  # take address of index into the data register
                                f"@{assembly_seg}\n"
                                f"D=D+M\n"  # take index address + base address (stored in the memory of 'assembly_seg') into the data register
                                f"@13\n"
                                f"M=D\n")  # store address at the internal address '@13'
                self.__pop()  # pop topmost stack value into the data register
                self.file.write("@13\n"
                                "A=M\n"  # set address register to address saved at '@13'
                                "M=D\n")  # store the value from the data register at the target destination

    # Writes a label to the output file. The label is made unique
    # by adding the file name to it.
    def write_label(self, file_name, function_name, label):
        self.file.write(f"({file_name}.{function_name}${label})\n")

    # Generates assembly code that realizes an unconditional jump
    # to the specified label.
    def write_goto(self, file_name, function_name, label):
        self.file.write(f"@{file_name}.{function_name}${label}\n"
                        f"0;JMP\n")

    # Generates assembly code that realizes a conditional jump
    # to the specified label. First, pops the stacks topmost value
    # into the data register. Jumps to label if value is not zero.
    def write_if(self, file_name, function_name, label):
        self.__pop()
        self.file.write(f"@{file_name}.{function_name}${label}\n"
                        f"D;JNE\n")

    # Generates assembly code that realizes the function command.
    # First writes the entry point label and then initializes the
    # number of local variables to 0.
    def write_function(self, function_name, n_vars):
        i = int(n_vars)
        self.file.write(f"({function_name})\n"
                        f"@0\n"
                        f"D=A\n")
        while i != 0:
            self.__push()
            i = i - 1

    def write_call(self, function_name, counter, n_vars):
        counter = int(counter)
        i = int(n_vars) + 5

        self.file.write("\n//Save number of arguments at temporary address @14\n")
        self.file.write(f"@{i}\n"
                        f"D=A\n"
                        f"@14\n"
                        f"M=D\n")

        self.file.write("\n//Save called function address at temporary variable R15\n")
        self.file.write(f"@{function_name}\n"
                        "D=A\n"
                        "@15\n"
                        "M=D\n")

        self.file.write("\n//Take return address into D register and jump to GLOBAL_CALL\n")
        self.file.write(f"@{function_name}$ret.{counter}\n"
                        f"D=A\n")

        self.file.write("@GLOBAL_CALL\n"
                        "0;JMP\n")

        self.file.write("\n//Inject return address label\n")
        self.file.write(f"({function_name}$ret.{counter})\n")  # Inject return address label

    def __write_global_call(self):
        self.file.write("\n //global call\n")

        self.file.write("(GLOBAL_CALL)\n")

        self.__push()

        self.file.write("\n//Push 'LCL' on the stack\n")
        self.file.write("@LCL\n"
                        "D=M\n")
        self.__push()

        self.file.write("\n//Push 'ARG' on the stack\n")
        self.file.write("@ARG\n"
                        "D=M\n")
        self.__push()

        self.file.write("\n//Push 'THIS' on the stack\n")
        self.file.write("@THIS\n"
                        "D=M\n")
        self.__push()

        self.file.write("\n//Push 'THAT' on the stack\n")
        self.file.write("@THAT\n"
                        "D=M\n")
        self.__push()

        self.file.write("\n//Reposition 'ARG'\n")
        self.file.write(f"@SP\n"
                        f"D=M\n"
                        f"@14\n"
                        f"D=D-M\n"
                        f"@ARG\n"
                        f"M=D\n")  # Reposition 'ARG' to SP-5-n-vars

        self.file.write("\n//Reposition 'LCL'\n")
        self.file.write("@SP\n"
                        "D=M\n"
                        "@LCL\n"
                        "M=D\n")  # Reposition 'LCL' to 'SP'

        self.file.write((f"@15\n"
                         f"A=M\n"
                         f"0;JMP\n"))

    # Writes assembly code that realizes a function return.
    # This assembly code is always the same, regardless of function.
    # Therefore, it is written after a label as part of the bootstrap.
    # Every return call now just jumps to this label and achieves the
    # function return. HUGE optimization regarding shortening
    # the generated assembly code.
    def __write_global_return(self):
        self.file.write("\n //global return\n")

        self.file.write(f"(GLOBAL_RETURN)\n")

        self.file.write("\n//save frame address\n")
        self.file.write("@LCL\n"  # save the end address of the frame at the temporary variable 14
                        "D=M\n"
                        "@14\n"
                        "M=D\n")

        self.file.write("\n//save return address\n")
        self.file.write("@5\n"  # get the return address and save it at the temporary variable 15
                        "D=A\n"
                        "@14\n"
                        "A=M-D\n"
                        "D=M\n"
                        "@15\n"
                        "M=D\n")

        self.file.write("\n//Pop return value to top of stack\n")
        self.write_push_pop(self.C_POP, "argument", "0",
                            '')  # pop the return value to argument 0, which will be at the top of the stack after returning

        self.file.write("\n//reposition stack pointer for caller\n")
        self.file.write("@ARG\n"  # Reposition the stack pointer for the caller
                        "D=M+1\n"
                        "@SP\n"
                        "M=D\n")

        self.file.write("\n//reposition 'THAT' for caller\n")
        self.file.write("@1\n"  # Reposition THAT for the caller
                        "D=A\n"
                        "@14\n"
                        "A=M-D\n"
                        "D=M\n"
                        "@THAT\n"
                        "M=D\n")

        self.file.write("\n//reposition 'THIS' for caller\n")
        self.file.write("@2\n"  # Reposition THIS for the caller
                        "D=A\n"
                        "@14\n"
                        "A=M-D\n"
                        "D=M\n"
                        "@THIS\n"
                        "M=D\n")

        self.file.write("\n//reposition 'ARG' for caller\n")
        self.file.write("@3\n"  # Reposition ARG for the caller
                        "D=A\n"
                        "@14\n"
                        "A=M-D\n"
                        "D=M\n"
                        "@ARG\n"
                        "M=D\n")

        self.file.write("\n//reposition 'LCL' for caller\n")
        self.file.write("@4\n"  # Reposition LCL for the caller
                        "D=A\n"
                        "@14\n"
                        "A=M-D\n"
                        "D=M\n"
                        "@LCL\n"
                        "M=D\n")

        self.file.write("\n//jump to return address\n")
        self.file.write("@15\n"
                        "A=M\n"
                        "0;JMP\n")

    # Every time a function returns, it jumps to this label. It is
    # part of the bootstrap code and the code following it achieves
    # the return call for EVERY function.
    def write_return(self):
        self.file.write(f"@GLOBAL_RETURN\n"
                        "0;JMP\n")

    # Generic assembly code to pop the topmost stack value into
    # the data register.
    def __pop(self):
        self.file.write("@SP\n"
                        "AM=M-1\n"
                        "D=M\n")

    # Generic assembly code to push the value stored in the data
    # register to the top of the stack.
    def __push(self):
        self.file.write("@SP\n"
                        "M=M+1\n"
                        "A=M-1\n"
                        "M=D\n")

    # Generates assembly code that realizes an infinite loop. Good practice
    # to finish any assembly program.
    def finishing_line(self):
        self.file.write("\n//finish\n"
                        "(END)\n"
                        "@END\n"
                        "0;JMP")

    def close_file(self):
        self.file.close()
