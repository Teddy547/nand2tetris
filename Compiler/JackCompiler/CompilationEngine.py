from JackTokenizer import Tokenizer
from SymbolTable import SymbolTable
from VMWriter import VMWriter
from Constants import tokenType
from Constants import keyWord


# noinspection SpellCheckingInspection
class Engine:

    # The constructor. Initializes a tokenizer, gets the first token and opens the output file for writing
    def __init__(self, input_file, output_file):
        self.tokenizer = Tokenizer(input_file)
        self.currentToken = ""
        self.currentToken = self.tokenizer.advance_token()

        self.vmWriter = VMWriter(output_file)

        self.className = ""
        self.classTable = SymbolTable()
        self.subroutineTable = SymbolTable()

        self.void = False
        self.isConstructor = False
        self.isMethod = False
        self.isMethodCall = False
        self.subRoutineName = ""
        self.subRoutineNameDo = ""
        self.classVarNameDo = ""
        self.functionNameToWrite = ""
        self.numberOfExpressions = 0
        self.labelCounter = 1
        return

    # The destructor. Closes the file and destructs the tokenizer before destructing itself.
    def __del__(self):
        self.tokenizer.__del__()
        return

    # 'class' className '{' classVarDec* subRoutineDec* '}'
    def compile_class(self):
        self.__process("class")

        # parses the className and takes it into a variable for the subroutine symbol table
        self.className = self.currentToken
        self.currentToken = self.tokenizer.advance_token()

        self.__process("{")
        self.__compile_class_var_dec()
        self.__compile_subroutine()
        self.__process("}")

        print("Class Table")
        self.classTable.print_table()
        self.classTable.reset()
        return

    # Compiles 0 or more class variable declarations
    # (static|field) type varName (',' varName)* ';'
    def __compile_class_var_dec(self):
        while self.currentToken == "static" or self.currentToken == "field":
            kind = self.currentToken

            self.currentToken = self.tokenizer.advance_token()
            typeOfCurrentToken = self.tokenizer.token_type(self.currentToken)

            if self.__is_type(typeOfCurrentToken):
                varType = self.currentToken

                self.currentToken = self.tokenizer.advance_token()
                typeOfCurrentToken = self.tokenizer.token_type(self.currentToken)

                while typeOfCurrentToken == tokenType.IDENTIFIER:
                    name = self.currentToken
                    self.classTable.add(name, varType, kind)

                    self.currentToken = self.tokenizer.advance_token()

                    if self.currentToken == ",":
                        self.__process(",")
                        typeOfCurrentToken = self.tokenizer.token_type(self.currentToken)
                    else:
                        break
            self.__process(";")
        return

    # Compiles 0 or more subroutine declarations
    # ('constructor'|'function'|'method) ('void'|type) subRoutineName '(' parameterList ')' subRoutineBody
    def __compile_subroutine(self):
        while self.currentToken == "constructor" or self.currentToken == "function" or self.currentToken == "method":

            if self.currentToken == "method":
                self.subroutineTable.add("this", self.className, "arg")
                self.isMethod = True
            elif self.currentToken == "constructor":
                self.isConstructor = True

            while not self.currentToken == "(":

                if self.currentToken == "void":
                    self.void = True

                # the name of the subroutine is the last token before the loop is left for good. So it is saved for naming purposes later
                self.subRoutineName = self.currentToken
                self.currentToken = self.tokenizer.advance_token()

            self.__process("(")
            self.__compile_parameter_list()
            self.__process(")")
            self.__compile_subroutine_body()

            self.vmWriter.writeNewLine()

            self.void = False
            self.isConstructor = False
            self.isMethod = False

            print("Subroutine Table")
            self.subroutineTable.print_table()
            self.subroutineTable.reset()
        return

    # Compiles 0 or 1 parameter list, which itself might contain several parameters
    # ((type varName) (',' type varName)*)?

    # Writes the VM Code for function calls at the end, because it marks the end of any constructor, method or function declaration. Naming by convention.
    def __compile_parameter_list(self):
        token_Type = self.tokenizer.token_type(self.currentToken)

        while self.__is_type(token_Type):
            varType = self.currentToken
            self.currentToken = self.tokenizer.advance_token()
            name = self.currentToken

            if not (self.currentToken == "," or self.currentToken == ")"):
                self.subroutineTable.add(name, varType, "arg")

            if self.currentToken == ",":
                self.__process(",")

            token_Type = self.tokenizer.token_type(self.currentToken)

        return

    # Compiles the body of a subroutine
    # '{' varDec* statements '}'
    def __compile_subroutine_body(self):
        self.__process("{")
        self.__compile_var_dec()

        if self.isConstructor:
            self.vmWriter.writePush("constant", self.classTable.varCount(keyWord.FIELD))
            self.vmWriter.writeCall("Memory.alloc", 1)
            self.vmWriter.writePop("pointer", 0)
        elif self.isMethod:
            self.vmWriter.writePush("argument", 0)
            self.vmWriter.writePop("pointer", 0)

        self.__compile_statements()
        self.__process("}")
        return

    # Compiles 0 or more variable declarations
    # 'var' type varName (',' varName)* ';'
    def __compile_var_dec(self):
        localVariableCounter = 0

        while self.currentToken == "var":
            self.__process("var")
            var_type = self.currentToken
            token_Type = self.tokenizer.token_type(self.currentToken)

            while self.__is_type(token_Type):
                self.currentToken = self.tokenizer.advance_token()
                name = self.currentToken

                if not (self.currentToken == "," or self.currentToken == ";"):
                    self.subroutineTable.add(name, var_type, "var")
                    localVariableCounter = localVariableCounter + 1
                elif self.currentToken == ",":
                    self.__process(",")
                    self.subroutineTable.add(self.currentToken, var_type, "var")
                    localVariableCounter = localVariableCounter + 1

                token_Type = self.tokenizer.token_type(self.currentToken)

            self.__process(";")

        self.functionNameToWrite = self.className + "." + self.subRoutineName
        self.vmWriter.writeFunction(f"{self.functionNameToWrite}", localVariableCounter)
        self.functionNameToWrite = ""
        return

    # statement*
    # letStatement|ifStatement|whileStatement|doStatement|returnStatement
    def __compile_statements(self):
        while self.__is_statement():
            if self.currentToken == "let":
                self.__compile_let()
            elif self.currentToken == "if":
                self.__compile_if()
            elif self.currentToken == "while":
                self.__compile_while()
            elif self.currentToken == "do":
                self.__compile_do()
            elif self.currentToken == "return":
                self.__compile_return()
            else:
                break
        return

    # 'let' varName ('[' expression ']')? '=' expression ';'
    def __compile_let(self):
        self.__process("let")
        varName = self.currentToken
        self.currentToken = self.tokenizer.advance_token()

        if self.currentToken == "[":
            self.__process("[")
            self.__compile_expression()
            self.__process("]")
        else:
            self.__process("=")

        self.__compile_expression()

        # Calls a function, method or constructor. Function name is constructed in 'compileExpression'.
        if not self.functionNameToWrite == "":
            self.vmWriter.writeCall(self.functionNameToWrite, self.numberOfExpressions)
            self.functionNameToWrite = ""

        # Looks for the variable in the symbol tables. Throws an error, if the variable is undeclared.
        if self.subroutineTable.kindOf(varName):
            self.vmWriter.writePop(self.subroutineTable.kindOf(varName), self.subroutineTable.indexOf(varName))
        elif self.classTable.kindOf(varName):
            self.vmWriter.writePop(self.classTable.kindOf(varName), self.classTable.indexOf(varName))
        else:
            self.vmWriter.writeError("VarDec")

        self.__process(";")

        return

    # 'if' '(' expression ')' '{' statements '}' ('else' '{' statements '}' )?
    def __compile_if(self):
        self.__process("if")

        self.__process("(")
        self.__compile_expression()
        self.__process(")")

        self.vmWriter.writeIf(f"IF_FALSE{self.labelCounter}")
        localLabelCounter = self.labelCounter
        self.labelCounter = self.labelCounter + 2

        self.__process("{")
        self.__compile_statements()
        self.__process("}")

        self.vmWriter.writeGOTO(f"IF_TRUE{localLabelCounter + 1}")
        self.vmWriter.writeLabel(f"IF_FALSE{localLabelCounter}")

        if self.currentToken == "else":
            self.__process("else")
            self.__process("{")
            self.__compile_statements()
            self.__process("}")

        self.vmWriter.writeLabel(f"IF_TRUE{localLabelCounter + 1}")
        return

    # 'while' '(' expression ')' '{' statements '}'
    def __compile_while(self):
        self.__process("while")

        self.vmWriter.writeLabel(f"WHILE_EXP{self.labelCounter}")
        localLabelCounter = self.labelCounter
        self.labelCounter = self.labelCounter + 2

        self.__process("(")
        self.__compile_expression()
        self.__process(")")

        self.vmWriter.writeIf(f"WHILE_END{localLabelCounter + 1}")

        self.__process("{")
        self.__compile_statements()
        self.__process("}")

        self.vmWriter.writeGOTO(f"WHILE_EXP{localLabelCounter}")
        self.vmWriter.writeLabel(f"WHILE_END{localLabelCounter + 1}")
        return

    # 'do' subRoutineCall ';'
    # compiled as if it were 'do' 'expression'. Afterward the topmost value on the stack is yeeted into "temp 0"
    def __compile_do(self):
        self.__process("do")
        self.__compile_expression()
        self.__process(";")

        self.vmWriter.writeCall(self.functionNameToWrite, self.numberOfExpressions)
        self.functionNameToWrite = ""
        self.vmWriter.writePop("temp", 0)
        return

    # 'return' expression? ';'
    def __compile_return(self):
        self.__process("return")

        if not self.currentToken == ";":
            self.__compile_expression()

        self.__process(";")
        self.vmWriter.writeReturn(self.void)
        return

    # term (op term)*
    def __compile_expression(self):
        operator = ""

        self.__compile_term()

        while self.__is_operator():
            operator = self.currentToken
            self.__process(self.currentToken)
            self.__compile_term()

        if not operator == "":
            self.vmWriter.writeArithmetic(operator)
        return

    # integerConstant|stringConstant|keywordConstant|varName|varName '[' expression ']' | '(' expression ')' |(unaryOp term)|subRoutineCall
    def __compile_term(self):
        unary_operator = ""
        subroutine_name = ""
        number_of_expressions = 0
        token_type = self.tokenizer.token_type(self.currentToken)

        if token_type == tokenType.INT_CONST:
            self.vmWriter.writePush("constant", self.currentToken)
            self.currentToken = self.tokenizer.advance_token()

        if token_type == tokenType.STRING_CONST:
            self.currentToken = self.tokenizer.advance_token()

        if self.__is_keyword_constant():
            self.vmWriter.writeKeywordConstant(self.currentToken)
            self.currentToken = self.tokenizer.advance_token()

        if self.currentToken == "(":
            self.__process("(")
            self.__compile_expression()
            self.__process(")")

        if self.currentToken == "-" or self.currentToken == "~":
            if self.currentToken == "-":
                unary_operator = self.currentToken
            elif self.currentToken == "~":
                unary_operator = self.currentToken

            self.currentToken = self.tokenizer.advance_token()
            self.__compile_term()

        # in case of IDENTIFIER a lookahead is needed to differentiate between an array statement and a subroutine call
        if token_type == tokenType.IDENTIFIER:

            if self.subroutineTable.kindOf(self.currentToken):
                self.vmWriter.writePush(self.subroutineTable.kindOf(self.currentToken),
                                        self.subroutineTable.indexOf(self.currentToken))
            elif self.classTable.kindOf(self.currentToken):
                self.vmWriter.writePush(self.classTable.kindOf(self.currentToken),
                                        self.classTable.indexOf(self.currentToken))

            lookahead = self.tokenizer.advance_token()

            # array statement
            if lookahead == "[":
                self.currentToken = lookahead
                self.__process("[")
                self.__compile_expression()
                self.__process("]")

            # subroutine call
            elif lookahead == "(" or lookahead == ".":
                self.subRoutineNameDo = self.currentToken
                self.currentToken = lookahead

                if self.currentToken == "(":
                    self.__process("(")
                    self.numberOfExpressions = self.__compile_expression_list()
                    self.__process(")")
                    self.functionNameToWrite = self.className + "." + self.subRoutineNameDo
                    self.isMethodCall = True
                    self.vmWriter.writeKeywordConstant("this")

                else:
                    if self.subroutineTable.inTable(self.subRoutineNameDo):
                        self.classVarNameDo = self.subroutineTable.typeOf(self.subRoutineNameDo)
                        self.isMethod = True
                    else:
                        self.classVarNameDo = self.subRoutineNameDo

                    self.__process(".")
                    self.subRoutineNameDo = self.currentToken

                    self.currentToken = self.tokenizer.advance_token()

                    self.__process("(")
                    self.numberOfExpressions = self.__compile_expression_list()
                    self.__process(")")
                    self.functionNameToWrite = self.classVarNameDo + "." + self.subRoutineNameDo

            else:
                self.currentToken = lookahead

        if not unary_operator == "":
            self.vmWriter.writeUnaryOp(unary_operator)

        if self.isMethodCall:
            self.numberOfExpressions = self.numberOfExpressions + 1
            self.isMethodCall = False

        if not subroutine_name == "":
            self.vmWriter.writeCall(subroutine_name, number_of_expressions)
        return

    # (expression( ',' expression)*)?
    def __compile_expression_list(self):
        counter = 0

        while not self.currentToken == ")":  # As long as the closing bracket is not found, the expression list is not finished
            self.__compile_expression()
            counter = counter + 1
            if self.currentToken == ",":
                self.__process(",")
            else:
                break
        return counter

    def __is_type(self, token_Type):
        if self.currentToken == "int" or self.currentToken == "char" or self.currentToken == "boolean" or token_Type == tokenType.IDENTIFIER:
            return True
        else:
            return False

    def __is_statement(self):
        if self.currentToken == "let" or self.currentToken == "if" or self.currentToken == "while" or self.currentToken == "do" or self.currentToken == "return":
            return True
        else:
            return False

    def __is_operator(self):
        if (self.currentToken == "+" or self.currentToken == "-" or self.currentToken == "*" or self.currentToken == "/"
                or self.currentToken == "&" or self.currentToken == "|" or self.currentToken == "<" or self.currentToken == ">"
                or self.currentToken == "="):
            return True
        else:
            return False

    def __is_keyword_constant(self):
        if self.currentToken == "true" or self.currentToken == "false" or self.currentToken == "null" or self.currentToken == "this":
            return True
        else:
            return False

    def __process(self, string):
        if not self.currentToken == string:
            self.vmWriter.writeError("Syntax")

        self.currentToken = self.tokenizer.advance_token()
        return
