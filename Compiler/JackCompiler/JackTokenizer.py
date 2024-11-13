import re

from Constants import tokenType
from Constants import keyWord
from Constants import constants


class Tokenizer(tokenType, keyWord, constants):
    comment = False
    token_list = list
    i = 0

    # constructor. takes a file and opens it for reading
    def __init__(self, file_name):
        self.file = open(file_name, "r")

    # reads the opened file line by line, ignores comments and empty lines and splits the line by symbols
    def advance_line(self):
        line = self.file.readline()
        line = line.strip(' ')

        if line.find('/**') >= 0 or line.find('/*') >= 0:
            self.comment = True

        if line.find('*/') >= 0:
            self.comment = False
            return self.NOTHING

        if not (line == '\n') and line.find('//') and not self.comment:  # empty lines and comments are ignored
            line = line.split("//")
            line = line[0].strip(' ')  # strips inline comments
            line = re.split(r'([{}()\[\].,;+\-*/&|<>= ~])', line)  # splits the string into individual lexical elements
            line = [x.strip() for x in line]
            line = list(filter(None, line))  # removes all empty strings and each whitespace string
            return line

        else:
            return self.NOTHING

    # takes an already split list of tokens and returns them one by one. when the list reaches its end the iterator
    # is reset.
    def advance_token(self, token_list):
        if self.i < len(token_list):
            self.i = self.i + 1
            return token_list[self.i - 1]
        else:
            self.i = 0
            return False

    # returns a constant representing the type of token
    def token_type(self, token):
        is_integer = self.represents_int(token)

        if (token == "class" or token == "constructor" or token == "function" or token == "method" or token == "field"
                or token == 'static' or token == "var" or token == "int" or token == "char" or token == "boolean" or
                token == "void" or token == "true" or token == "false" or token == "null" or token == "this"
                or token == "let" or token == "do" or token == "if" or token == "else" or token == "while"
                or token == "return"):
            return self.KEYWORD

        if (token == "{" or token == "}" or token == "(" or token == ")" or token == "[" or token == "]"
                or token == "." or token == "," or token == ";" or token == "+" or token == "-" or token == "*"
                or token == "/" or token == "&" or token == "|" or token == "<" or token == ">" or token == "="
                or token == "~"):
            return self.SYMBOL

        if is_integer:
            return self.INT_CONST

        if token.find('\"') == 0:
            return self.STRING_CONST

        else:
            return self.IDENTIFIER

    @staticmethod
    def has_more_lines(line):
        if line:
            return True
        else:
            return False

    @staticmethod
    def represents_int(s):
        try:
            int(s)
        except ValueError:
            return False
        else:
            return True
