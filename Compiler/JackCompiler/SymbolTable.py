from Constants import keyWord

class SymbolTable(keyWord):
    table = []
    field_counter = 0
    static_counter = 0
    arg_counter = 0
    var_counter = 0

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
        if kind == self.STATIC:
            return self.static_counter
        elif kind == self.FIELD:
            return self.field_counter
        elif kind == self.VAR:
            return self.var_counter
        elif kind == self.ARG:
            return self.arg_counter
        return

    def reset(self, table):
        for i in range(len(table)):
            table.pop(0)

        self.var_counter = 0
        self.arg_counter = 0
        self.field_counter = 0
        self.static_counter = 0

        return

    def print_table(self):
        print(self.table)
        return
