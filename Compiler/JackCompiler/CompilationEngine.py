from JackTokenizer import Tokenizer
from SymbolTable import SymbolTable


class Engine(Tokenizer, SymbolTable):
    current_token = ""

    # The constructor. Initializes a tokenizer, gets the first token and opens the output file for writing
    def __init__(self, input_file, output_file):
        super().__init__(input_file)
        self.tokenizer = Tokenizer(input_file)
        self.current_token = self.tokenizer.advance_token()
        self.file = open(output_file, "w")
        self.file.write("<tokens>\n")
        self.class_table = SymbolTable

    # The destructor. Closes the file and destructs the tokenizer before destructing itself.
    def __del__(self):
        self.file.close()
        self.tokenizer.__del__()

    # 'class' className '{' classVarDec* subRoutineDec* '}'
    def compile_class(self):
        self.__process("class")
        self.__print_XML_token()
        self.current_token = self.tokenizer.advance_token()
        self.__process("{")
        self.__compile_class_var_dec()
        self.__compile_subroutine()
        self.__process("}")
        self.file.write("</tokens>")

        self.class_table.print_table(self)
        self.class_table.reset(self.class_table.table)

    # Compiles 0 or more class variable declarations
    # (static|field) type varName (',' varName)* ';'
    def __compile_class_var_dec(self):
        while self.current_token == "static" or self.current_token == "field":
            self.__print_XML_token()
            kind = self.current_token
            self.current_token = self.tokenizer.advance_token()
            token_Type = self.tokenizer.token_type(self.current_token)

            if self.__is_type(token_Type):
                self.__print_XML_token()
                var_type = self.current_token
                self.current_token = self.tokenizer.advance_token()
                token_Type = self.tokenizer.token_type(self.current_token)

                while token_Type == self.tokenizer.IDENTIFIER:
                    self.__print_XML_token()
                    name = self.current_token
                    self.current_token = self.tokenizer.advance_token()

                    self.class_table.add(self, name, var_type, kind)

                    if self.current_token == ",":
                        self.__process(",")
                        token_Type = self.tokenizer.token_type(self.current_token)
                    else:
                        break
            self.__process(";")
        return

    # Compiles 0 or more subroutine declarations
    # ('constructor'|'function'|'method) ('void'|type) subRoutineName '(' parameterList ')' subRoutineBody
    def __compile_subroutine(self):
        while self.current_token == "constructor" or self.current_token == "function" or self.current_token == "method":
            while not self.current_token == "(":
                self.__print_XML_token()
                self.current_token = self.tokenizer.advance_token()
            self.__process("(")
            self.__compile_parameter_list()
            self.__process(")")
            self.__compile_subroutine_body()

        return

    # Compiles 0 or 1 parameter list, which itself might contain several parameters
    # ((type varName) (',' type varName)*)?
    def __compile_parameter_list(self):
        token_Type = self.tokenizer.token_type(self.current_token)

        while self.__is_type(token_Type):
            self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()

            if self.current_token == ",":
                self.__process(",")

            token_Type = self.tokenizer.token_type(self.current_token)

        return

    # Compiles the body of a subroutine
    # '{' varDec* statements '}'
    def __compile_subroutine_body(self):
        self.__process("{")
        self.__compile_var_dec()
        self.__compile_statements()
        self.__process("}")
        return

    # Compiles 0 or more variable declarations
    # 'var' type varName (',' varName)* ';'
    def __compile_var_dec(self):
        while self.current_token == "var":
            self.__process("var")
            token_Type = self.tokenizer.token_type(self.current_token)

            while self.__is_type(token_Type):
                self.__print_XML_token()
                self.current_token = self.tokenizer.advance_token()

                if self.current_token == ",":
                    self.__process(",")

                token_Type = self.tokenizer.token_type(self.current_token)

            self.__process(";")

        return

    # statement*
    # letStatement|ifStatement|whileStatement|doStatement|returnStatement
    def __compile_statements(self):
        while self.__is_statement():

            if self.current_token == "let":
                self.__compile_let()
            elif self.current_token == "if":
                self.__compile_if()
            elif self.current_token == "while":
                self.__compile_while()
            elif self.current_token == "do":
                self.__compile_do()
            elif self.current_token == "return":
                self.__compile_return()
            else:
                break

        return

    # 'let' varName ('[' expression ']')? '=' expression ';'
    def __compile_let(self):
        self.__process("let")
        self.__print_XML_token()
        self.current_token = self.tokenizer.advance_token()

        if self.current_token == "[":
            self.__process("[")
            self.__compile_expression()
            self.__process("]")
        else:
            self.__process("=")

        self.__compile_expression()
        self.__process(";")

        return

    # 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}' )?
    def __compile_if(self):
        self.__process("if")

        self.__process("(")
        self.__compile_expression()
        self.__process(")")

        self.__process("{")
        self.__compile_statements()
        self.__process("}")

        if self.current_token == "else":
            self.__process("else")
            self.__process("{")
            self.__compile_statements()
            self.__process("}")

        return

    # 'while' '(' expression ')' '{' statements '}'
    def __compile_while(self):
        self.__process("while")

        self.__process("(")
        self.__compile_expression()
        self.__process(")")

        self.__process("{")
        self.__compile_statements()
        self.__process("}")

        return

    # 'do' subRoutineCall ';'
    def __compile_do(self):
        self.__process("do")
        self.__compile_subroutine_call()
        self.__process(";")
        return

    # 'return' expression? ';'
    def __compile_return(self):
        self.__process("return")

        if not self.current_token == ";":
            self.__compile_expression()

        self.__process(";")

        return

    # term (op term)*
    def __compile_expression(self):
        self.__compile_term()

        while self.__is_operator():
            self.__process(self.current_token)
            self.__compile_term()

        return

    # integerConstant|stringConstant|keywordConstant|varName|varName '[' expression ']' | '(' expression ')' |(unaryOp term)|subRoutineCall
    def __compile_term(self):
        token_type = self.tokenizer.token_type(self.current_token)

        if token_type == self.INT_CONST:
            self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()

        if token_type == self.STRING_CONST:
            self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()

        if self.__is_keyword_constant():
            self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()

        if self.current_token == "(":
            self.__process("(")
            self.__compile_expression()
            self.__process(")")

        if self.current_token == "-" or self.current_token == "~":
            self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()
            self.__compile_term()

        if token_type == self.IDENTIFIER:
            lookahead = self.tokenizer.advance_token()

            if lookahead == "[":
                self.__print_XML_token()
                self.current_token = lookahead
                self.__process("[")
                self.__compile_expression()
                self.__process("]")

            elif lookahead == "(" or lookahead == ".":
                self.__print_XML_token()
                self.current_token = lookahead
                self.__compile_subroutine_call()

            else:
                self.__print_XML_token()
                self.current_token = lookahead

        return

    # (expression( ',' expression)*)?
    def __compile_expression_list(self):
        counter = 0

        while not self.current_token == ")":                # As long as the closing bracket is not found, the expression list is not finished
            self.__compile_expression()
            counter = counter + 1
            if self.current_token == ",":
                self.__process(",")
            else:
                break

        return counter

    # subRoutineName '(' expressionList ')' |(className|varName) '.' subRoutineName '(' expressionList ')'
    def __compile_subroutine_call(self):
        if not self.current_token == "." or self.current_token == "(":
            self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()

        if self.current_token == "(":
            self.__process("(")
            self.__compile_expression_list()
            self.__process(")")
        else:
            self.__process(".")

            self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()

            self.__process("(")
            self.__compile_expression_list()
            self.__process(")")

        return

    def __is_type(self, token_Type):
        if self.current_token == "int" or self.current_token == "char" or self.current_token == "boolean" or token_Type == self.tokenizer.IDENTIFIER:
            return True
        else:
            return False

    def __is_statement(self):
        if self.current_token == "let" or self.current_token == "if" or self.current_token == "while" or self.current_token == "do" or self.current_token == "return":
            return True
        else:
            return False

    def __is_operator(self):
        if (
                self.current_token == "+" or self.current_token == "-" or self.current_token == "*" or self.current_token == "/"
                or self.current_token == "&" or self.current_token == "|" or self.current_token == "<" or self.current_token == ">"
                or self.current_token == "="):
            return True
        else:
            return False

    def __is_keyword_constant(self):
        if self.current_token == "true" or self.current_token == "false" or self.current_token == "null" or self.current_token == "this":
            return True
        else:
            return False

    def __process(self, string):
        if self.current_token == string:
            self.__print_XML_token()
        else:
            self.file.write("Syntax error")

        self.current_token = self.tokenizer.advance_token()

    def __print_XML_token(self):
        token_Type = self.tokenizer.token_type(self.current_token)

        if token_Type == self.tokenizer.KEYWORD:
            self.file.write("<keyword> ")
            self.file.write(f"{self.current_token}")
            self.file.write(" </keyword>\n")

        if token_Type == self.tokenizer.SYMBOL:
            self.file.write("<symbol> ")
            self.file.write(f"{self.current_token}")
            self.file.write(" </symbol>\n")

        if token_Type == self.tokenizer.INT_CONST:
            self.file.write("<integerConstant> ")
            self.file.write(f"{self.current_token}")
            self.file.write(" </integerConstant>\n")

        if token_Type == self.tokenizer.STRING_CONST:
            self.current_token = self.current_token.strip('"')
            self.current_token = self.current_token.strip(" ")

            self.file.write("<stringConstant> ")
            self.file.write(f"{self.current_token}")
            self.file.write(" </stringConstant>\n")

        if token_Type == self.tokenizer.IDENTIFIER:
            self.file.write("<identifier> ")
            self.file.write(f"{self.current_token}")
            self.file.write(" </identifier>\n")
