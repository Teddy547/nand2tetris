from Constants import keyWord


class SymbolTable():

    def __init__(self):
        self.field_counter = 0
        self.static_counter = 0
        self.arg_counter = 0
        self.var_counter = 0
        self.table = []
        return

    def add(self, name, var_type, kind):
        self.table.append({"name": name,
                           "type": var_type,
                           "kind": kind})

        if kind == "field":
            self.table[-1]["#"] = self.field_counter
            self.field_counter = self.field_counter + 1

        elif kind == "static":
            self.table[-1]["#"] = self.static_counter
            self.static_counter = self.static_counter + 1

        elif kind == "arg":
            self.table[-1]['#'] = self.arg_counter
            self.arg_counter = self.arg_counter + 1

        elif kind == "var":
            self.table[-1]['#'] = self.var_counter
            self.var_counter = self.var_counter + 1

        return

    def varCount(self, kind):
        if kind == keyWord.STATIC:
            return self.static_counter
        elif kind == keyWord.FIELD:
            return self.field_counter
        elif kind == keyWord.VAR:
            return self.var_counter
        elif kind == keyWord.ARG:
            return self.arg_counter
        return

    def kindOf(self, name):
        for i in range(len(self.table)):
            if self.table[i].get("name") == name:
                if self.table[i].get("kind") == "static":
                    return "static"
                elif self.table[i].get("kind") == "field":
                    return "this"
                elif self.table[i].get("kind") == "var":
                    return "local"
                elif self.table[i].get("kind") == "arg":
                    return "argument"

        return False

    def typeOf(self, name):
        for i in range(len(self.table)):
            if self.table[i].get("name") == name:
                return self.table[i].get("type")
        return False

    def indexOf(self, name):
        for i in range(len(self.table)):
            if self.table[i].get("name") == name:
                return self.table[i].get("#")
        return False

    def inTable(self, name):
        for i in range(len(self.table)):
            if self.table[i].get("name") == name:
                return True
            else:
                return False

    def reset(self):
        for i in range(len(self.table)):
            self.table.pop(0)

        self.var_counter = 0
        self.arg_counter = 0
        self.field_counter = 0
        self.static_counter = 0

        return

    def print_table(self):
        print(self.table)
        return
