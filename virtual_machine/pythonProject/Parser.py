from Constants import constants

class Parser(constants):

    def __init__(self, file_name):
        self.file = open(file_name, "r")

    def advance(self):
        command = self.file.readline()

        if not (command == '\n') and (command.find('//')):
            command.strip()
            command.strip('\n')
            return command

        else:
            return self.NOTHING

    def command_type(self, line):
        line = line.strip('\n')
        c_type = line.split()

        if not c_type:
            return ''

        if c_type[0] == 'add' or c_type[0] == 'sub' or c_type[0] == 'neg' or c_type[0] == 'eq' or c_type[0] == 'gt' or c_type[0] == 'lt' or c_type[0] == 'and' or c_type[0] == 'or' or c_type[0] == 'not':
            return self.C_ARITHMETIC

        if c_type[0] == 'push':
            return self.C_PUSH

        if c_type[0] == 'pop':
            return self.C_POP

    def arg1(self, line, c_type):
        argument_1 = line.split()

        if not argument_1:
            return ''

        if c_type == 1:
            return argument_1[0]
        else:
            return argument_1[1]

    def arg2(self, line):
        argument_2 = line.split()

        if not argument_2[2]:
            return ''
        else:
            return argument_2[2]

    def close_file(self):
        self.file.close()
