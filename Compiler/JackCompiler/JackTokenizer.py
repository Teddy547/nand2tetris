import re

from Constants import tokenType


class Tokenizer:

    # constructor. takes a file and opens it for reading
    def __init__(self, file_name):
        self.comment = False
        self.line_of_code = False
        self.token_list = list()
        self.i = 0
        self.line = ""
        self.file = open(file_name, "r")
        self.token_list = self.__advance_line()

    def __del__(self):
        self.file.close()

    # reads the opened file line by line, ignores comments and empty lines and splits the line by symbols
    def __advance_line(self):
        while True:
            self.line = self.file.readline()
            self.line = self.line.strip(' ')
            self.line = self.line.strip("\t")

            if self.line.find('/**') >= 0 or self.line.find('/*') >= 0:
                self.comment = True

            if self.line.find('*/') >= 0:
                self.comment = False

            if not (self.line == '\n') and self.line.find('//') and not self.comment and not self.line.find('*/') >= 0:  # empty lines and comments are ignored
                self.line = self.line.split("//")
                self.line = self.line[0].strip(' ')  # strips inline comments
                self.line = re.split(r'(["{}()\[\].,;+\-*/&|<>= ~])', self.line)  # splits the string into individual lexical elements
                self.line = [x.strip() for x in self.line]
                self.line = list(filter(None, self.line))  # removes all empty strings and each whitespace string
                self.line_of_code = True

            if self.line_of_code:                           # Loop is broken when actual code is read in and not a comment or empty line
                break

        self.line_of_code = False
        return self.line

    # takes an already split list of tokens and returns them one by one. When the list reaches its end the iterator
    # is reset and the next line is split into a list of tokens.
    def advance_token(self):
        if not self.token_list:
            return False

        # This block of code reunites a previously split string constant back into a single string token
        # and makes it the next token
        if self.i < len(self.token_list):
            if self.token_list[self.i] == '"':
                new_string = ""
                while True:
                    new_string = new_string + self.token_list[self.i] + " "
                    self.i = self.i + 1
                    if self.token_list[self.i] == '"':
                        new_string = new_string + self.token_list[self.i]
                        self.token_list[self.i] = new_string
                        break

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
        is_integer = self.__represents_int(token)

        if (token == "class" or token == "constructor" or token == "function" or token == "method" or token == "field"
                or token == 'static' or token == "var" or token == "int" or token == "char" or token == "boolean" or
                token == "void" or token == "true" or token == "false" or token == "null" or token == "this"
                or token == "let" or token == "do" or token == "if" or token == "else" or token == "while"
                or token == "return"):
            return tokenType.KEYWORD

        if (token == "{" or token == "}" or token == "(" or token == ")" or token == "[" or token == "]"
                or token == "." or token == "," or token == ";" or token == "+" or token == "-" or token == "*"
                or token == "/" or token == "&" or token == "|" or token == "<" or token == ">" or token == "="
                or token == "~"):
            return tokenType.SYMBOL

        if is_integer:
            return tokenType.INT_CONST

        if token.find('\"') == 0:
            return tokenType.STRING_CONST

        else:
            return tokenType.IDENTIFIER

    @staticmethod
    def has_more_tokens(token):
        if token:
            return True
        else:
            return False

    @staticmethod
    def __represents_int(s):
        try:
            int(s)
        except ValueError:
            return False
        else:
            return True
