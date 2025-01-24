from JackTokenizer import Tokenizer
from SymbolTable import SymbolTable
from VMWriter import VMWriter
from Constants import tokenType


# noinspection SpellCheckingInspection
class Engine:

    # The constructor. Initializes a tokenizer, gets the first token and opens the output file for writing
    def __init__(self, input_file, output_file):
        self.tokenizer = Tokenizer(input_file)
        self.current_token = ""
        self.current_token = self.tokenizer.advance_token()

        self.vmwriter = VMWriter(output_file)

        self.className = ""
        self.class_table = SymbolTable()
        self.subroutineTable = SymbolTable()

        self.void = False
        self.subRoutineName = ""
        self.subRoutineNameDo = ""
        self.class_varNameDo = ""
        self.function_name_to_write = ""
        self.number_of_expressions = 0

    # The destructor. Closes the file and destructs the tokenizer before destructing itself.
    def __del__(self):
        self.tokenizer.__del__()

    # 'class' className '{' classVarDec* subRoutineDec* '}'
    def compile_class(self):
        self.__process("class")

        self.className = self.current_token                         # parses the className and takes it into a variable for the subroutine symbol table
        # self.__print_XML_token()
        self.current_token = self.tokenizer.advance_token()

        self.__process("{")
        self.__compile_class_var_dec()
        self.__compile_subroutine()
        self.__process("}")

        # self.file.write("</tokens>")
        print("Class Table")
        self.class_table.print_table()
        self.class_table.reset()

    # Compiles 0 or more class variable declarations
    # (static|field) type varName (',' varName)* ';'
    def __compile_class_var_dec(self):
        while self.current_token == "static" or self.current_token == "field":
            # self.__print_XML_token()
            kind = self.current_token
            self.current_token = self.tokenizer.advance_token()
            token_Type = self.tokenizer.token_type(self.current_token)

            if self.__is_type(token_Type):
                # self.__print_XML_token()
                var_type = self.current_token
                self.current_token = self.tokenizer.advance_token()
                token_Type = self.tokenizer.token_type(self.current_token)

                while token_Type == tokenType.IDENTIFIER:
                    # self.__print_XML_token()
                    name = self.current_token
                    self.current_token = self.tokenizer.advance_token()

                    self.class_table.add(name, var_type, kind)

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

            if self.current_token == "method":
                self.subroutineTable.add("this", self.className, "arg")

            while not self.current_token == "(":

                if self.current_token == "void":
                    self.void = True

                # the name of the subroutine is the last token before the loop is left for good. So it is saved for naming purposes later
                self.subRoutineName = self.current_token
                self.current_token = self.tokenizer.advance_token()

            self.__process("(")
            self.__compile_parameter_list()
            self.__process(")")
            self.__compile_subroutine_body()

            self.void = False

            print("Subroutine Table")
            self.subroutineTable.print_table()
            self.subroutineTable.reset()

        return

    # Compiles 0 or 1 parameter list, which itself might contain several parameters
    # ((type varName) (',' type varName)*)?

    # Writes the VM Code for function calls at the end, because it marks the end of any constructor, method or function declaration. Naming by convention.
    def __compile_parameter_list(self):
        local_variable_counter = 0
        token_Type = self.tokenizer.token_type(self.current_token)

        while self.__is_type(token_Type):
            local_variable_counter = local_variable_counter + 1
            var_type = self.current_token
            # self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()
            name = self.current_token

            if not (self.current_token == "," or self.current_token == ")"):
                self.subroutineTable.add(name, var_type, "arg")

            if self.current_token == ",":
                self.__process(",")

            token_Type = self.tokenizer.token_type(self.current_token)

        self.function_name_to_write = self.className + "." + self.subRoutineName
        self.vmwriter.writeFunction(f"{self.function_name_to_write}", local_variable_counter)

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
            var_type = self.current_token
            token_Type = self.tokenizer.token_type(self.current_token)

            while self.__is_type(token_Type):
                # self.__print_XML_token()
                self.current_token = self.tokenizer.advance_token()
                name = self.current_token

                if not (self.current_token == "," or self.current_token == ";"):
                    self.subroutineTable.add(name, var_type, "var")

                if self.current_token == ",":
                    self.__process(",")
                    self.subroutineTable.add(self.current_token, var_type, "var")

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
        # self.__print_XML_token()
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
        self.__compile_expression()
        self.__process(";")

        self.vmwriter.writeCall(self.function_name_to_write, self.number_of_expressions)
        self.vmwriter.writePop("temp", 0)
        return

    # 'return' expression? ';'
    def __compile_return(self):
        self.__process("return")

        if not self.current_token == ";":
            self.__compile_expression()

        # If a method or function is declared 'void', it pushes '0' onto the stack by convention before returning.
        # Boolean value is updated during compileSubRoutine
        self.__process(";")
        self.vmwriter.writeReturn(self.void)

        return

    # term (op term)*
    def __compile_expression(self):
        operator = ""

        self.__compile_term()

        while self.__is_operator():
            operator = self.current_token
            self.__process(self.current_token)
            self.__compile_term()

        if not operator == "":
            self.vmwriter.writeArithmetic(operator)

        return

    # integerConstant|stringConstant|keywordConstant|varName|varName '[' expression ']' | '(' expression ')' |(unaryOp term)|subRoutineCall
    def __compile_term(self):
        unary_operator = ""
        subroutine_name = ""
        number_of_expressions = 0
        token_type = self.tokenizer.token_type(self.current_token)

        if token_type == tokenType.INT_CONST:
            # self.__print_XML_token()
            self.vmwriter.writePush("constant", self.current_token)
            self.current_token = self.tokenizer.advance_token()

        if token_type == tokenType.STRING_CONST:
            # self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()

        if self.__is_keyword_constant():
            # self.__print_XML_token()
            self.current_token = self.tokenizer.advance_token()

        if self.current_token == "(":
            self.__process("(")
            self.__compile_expression()
            self.__process(")")

        if self.current_token == "-" or self.current_token == "~":
            # self.__print_XML_token()
            if self.current_token == "-":
                unary_operator = "neg"
            elif self.current_token == "~":
                unary_operator = "not"

            self.current_token = self.tokenizer.advance_token()
            self.__compile_term()

        # in case of IDENTIFIER a lookahead is needed to differentiate between an array statement and a subroutine call
        if token_type == tokenType.IDENTIFIER:
            lookahead = self.tokenizer.advance_token()

            # array statement
            if lookahead == "[":
                self.current_token = lookahead
                self.__process("[")
                self.__compile_expression()
                self.__process("]")

            # subroutine call
            elif lookahead == "(" or lookahead == ".":
                self.subRoutineNameDo = self.current_token
                self.current_token = lookahead

                if self.current_token == "(":
                    self.__process("(")
                    self.number_of_expressions = self.__compile_expression_list()
                    self.__process(")")
                    self.function_name_to_write = self.subRoutineNameDo

                else:
                    self.class_varNameDo = self.subRoutineNameDo
                    self.__process(".")
                    self.subRoutineNameDo = self.current_token

                    self.current_token = self.tokenizer.advance_token()

                    self.__process("(")
                    self.number_of_expressions = self.__compile_expression_list()
                    self.__process(")")
                    self.function_name_to_write = self.class_varNameDo + "." + self.subRoutineNameDo

            else:
                # self.__print_XML_token()
                self.current_token = lookahead

        if not unary_operator == "":
            self.vmwriter.writeUnaryOp(unary_operator)

        if not subroutine_name == "":
            self.vmwriter.writeCall(subroutine_name, number_of_expressions)
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
    # def __compile_subroutine_call(self):
    #     if not (self.current_token == "." or self.current_token == "("):
    #         # self.__print_XML_token()
    #         self.current_token = self.tokenizer.advance_token()
    #
    #     if self.current_token == "(":
    #         self.__process("(")
    #         number_of_expressions = self.__compile_expression_list()
    #         self.__process(")")
    #     else:
    #         self.__process(".")
    #
    #         # self.__print_XML_token()
    #         self.current_token = self.tokenizer.advance_token()
    #
    #         self.__process("(")
    #         number_of_expressions = self.__compile_expression_list()
    #         self.__process(")")
    #
    #     return number_of_expressions

    def __is_type(self, token_Type):
        if self.current_token == "int" or self.current_token == "char" or self.current_token == "boolean" or token_Type == tokenType.IDENTIFIER:
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
        if not self.current_token == string:
            # self.__print_XML_token()
            # else:
            self.vmwriter.writeError()

        self.current_token = self.tokenizer.advance_token()
        return

    # def __print_XML_token(self):
    #     token_Type = self.tokenizer.token_type(self.current_token)
    #
    #     if token_Type == self.tokenizer.KEYWORD:
    #         self.file.write("<keyword> ")
    #         self.file.write(f"{self.current_token}")
    #         self.file.write(" </keyword>\n")
    #
    #     if token_Type == self.tokenizer.SYMBOL:
    #         self.file.write("<symbol> ")
    #         self.file.write(f"{self.current_token}")
    #         self.file.write(" </symbol>\n")
    #
    #     if token_Type == self.tokenizer.INT_CONST:
    #         self.file.write("<integerConstant> ")
    #         self.file.write(f"{self.current_token}")
    #         self.file.write(" </integerConstant>\n")
    #
    #     if token_Type == self.tokenizer.STRING_CONST:
    #         self.current_token = self.current_token.strip('"')
    #         self.current_token = self.current_token.strip(" ")
    #
    #         self.file.write("<stringConstant> ")
    #         self.file.write(f"{self.current_token}")
    #         self.file.write(" </stringConstant>\n")
    #
    #     if token_Type == self.tokenizer.IDENTIFIER:
    #         self.file.write("<identifier> ")
    #         self.file.write(f"{self.current_token}")
    #         self.file.write(" </identifier>\n")
