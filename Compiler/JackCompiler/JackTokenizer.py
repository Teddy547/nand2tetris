from Constants import tokenType
from Constants import keyWord
from Constants import constants


class Tokenizer(tokenType, keyWord, constants):
    comment = False

    def __init__(self, file_name):
        self.file = open(file_name, "r")

    def advance(self):
        line = self.file.readline()

        if line.find('/**') >= 0 or line.find('/*') >= 0:
            self.comment = True

        if line.find('*/') >= 0:
            self.comment = False
            return self.NOTHING

        if not (line == '\n') and (line.find('//') and not self.comment):
            line.strip()
            line.strip('\n')
            return line

        else:
            return self.NOTHING

    @staticmethod
    def has_more_lines(line):
        if line:
            return True
        else:
            return False
