from Constants import constants

# This class is used to read a single line from the input file and to return constants for the type of arguments and then the arguments themselves
class Parser(constants):

    # The class constructor. Takes a path to a .vm file as input and opens a readable stream to it.
    # param: path to file
    def __init__(self, file_name):
        self.file = open(file_name, "r")

    # Reads one line of the input file, strips any blank space and the newline, then returns the line. Comments or newline lines are ignored.
    # param: none
    def advance(self):
        command = self.file.readline()

        if not (command == '\n') and (command.find('//')):
            command.strip()
            command.strip('\n')
            return command

        else:
            return self.NOTHING

    def has_more_lines(self, line):
        if line:
            return True
        else:
            return False

    # Returns the current command type as a constant.
    # param: current line as returned by 'advance'
    def command_type(self, line):
        c_type = line.split()

        if not c_type:
            return ''

        if c_type[0] == 'add' or c_type[0] == 'sub' or c_type[0] == 'neg' or c_type[0] == 'eq' or c_type[0] == 'gt' or c_type[0] == 'lt' or c_type[0] == 'and' or c_type[0] == 'or' or c_type[0] == 'not':
            return self.C_ARITHMETIC

        elif c_type[0] == 'push':
            return self.C_PUSH

        elif c_type[0] == 'pop':
            return self.C_POP

        elif c_type[0] == 'label':
            return  self.C_LABEL

        elif c_type[0] == 'goto':
            return self.C_GOTO

        elif c_type[0] == 'if-goto':
            return self.C_IF

        elif c_type[0] == 'function':
            return self.C_FUNCTION

        elif c_type[0] == 'return':
            return self.C_RETURN

        elif c_type[0] == 'call':
            return self.C_CALL
        else:
            return ''

    # Returns the first argument of the command. In case of arithmetic commands the command itself is returned
    # param: current line; command type
    def arg1(self, line, c_type):
        argument_1 = line.split()

        if not argument_1:
            return ''

        if c_type == self.C_ARITHMETIC:
            return argument_1[0]
        else:
            return argument_1[1]

    # Returns the second argument of the command
    # param: current line
    def arg2(self, line):
        argument_2 = line.split()

        if not argument_2[2]:
            return ''
        else:
            return argument_2[2]

    def close_file(self):
        self.file.close()
