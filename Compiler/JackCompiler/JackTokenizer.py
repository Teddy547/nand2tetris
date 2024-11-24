import re

from Constants import tokenType
from Constants import keyWord
from Constants import constants


class Tokenizer(tokenType, keyWord, constants):
    comment = False
    line_of_code = False
    token_list = list()
    i = 0
    line = ""

    # constructor. takes a file and opens it for reading
    def __init__(self, file_name):
        self.file = open(file_name, "r")
        self.token_list = self.__advance_line()

    # reads the opened file line by line, ignores comments and empty lines and splits the line by symbols
    def __advance_line(self):
        while True:
            self.line = self.file.readline()
            self.line = self.line.strip(' ')

            if self.line.find('/**') >= 0 or self.line.find('/*') >= 0:
                self.comment = True

            if self.line.find('*/') >= 0:
                self.comment = False

            if not (self.line == '\n') and self.line.find('//') and not self.comment and not self.line.find('*/') >= 0:  # empty lines and comments are ignored
                self.line = self.line.split("//")
                self.line = self.line[0].strip(' ')  # strips inline comments
                self.line = re.split(r'([{}()\[\].,;+\-*/&|<>= ~])', self.line)  # splits the string into individual lexical elements
                self.line = [x.strip() for x in self.line]
                self.line = list(filter(None, self.line))  # removes all empty strings and each whitespace string
                self.line_of_code = True

            if self.line_of_code:
                break

        self.line_of_code = False
        return self.line

    # takes an already split list of tokens and returns them one by one. when the list reaches its end the iterator
    # is reset.
    def advance_token(self):

        if not self.token_list:
            return False

        if self.i < len(self.token_list):
            self.i = self.i + 1
            return self.token_list[self.i - 1]
        else:
            self.token_list = self.__advance_line()
            self.i = 1

        try:
            return self.token_list[self.i - 1]
        except IndexError:
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
    def has_more_tokens(line):
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
