class VMWriter:

    def __init__(self, output_file):
        self.file = open(output_file, "w")
        return

    def writePush(self, segment, index):
        self.file.write(f"push {segment} {index}\n")
        return

    def writePop(self, segment, index):
        self.file.write(f"pop {segment} {index}\n")
        return

    def writeArithmetic(self, command):
        match command:
            case "+":
                self.file.write("add\n")
            case "-":
                self.file.write("sub\n")
            case "*":
                self.file.write("call Math.multiply 2\n")
            case "/":
                self.file.write("call Math.divide 2\n")
            case "=":
                self.file.write("eq\n")
            case ">":
                self.file.write("gt\n")
            case "<":
                self.file.write("lt\n")
            case "&":
                self.file.write("and\n")
            case "|":
                self.file.write("or\n")
        return

    def writeUnaryOp(self, unaryOperator):
        match unaryOperator:
            case "-":
                self.file.write("neg")
            case "~":
                self.file.write("not")

    def writeLabel(self, label):
        self.file.write(f"label {label}\n")
        return

    def writeGOTO(self, label):
        self.file.write(f"goto {label}\n")
        return

    def writeIf(self, label):
        self.file.write(f"if-goto {label}\n")
        return

    def writeCall(self, name, nArgs):
        self.file.write(f"call {name} {nArgs}\n")
        return

    def writeFunction(self, name, nVars):
        self.file.write(f"function {name} {nVars}\n")
        return

    def writeReturn(self, void):
        if void:
            self.file.write("push constant 0\n")
        self.file.write("return\n")
        return

    def writeError(self):
        self.file.write("Syntax Error\n")
        return

    def writeComment(self, comment):
        self.file.write(f"{comment}\n")
        return

    def close(self):
        self.file.close()
        return
