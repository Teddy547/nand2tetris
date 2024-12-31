class SymbolTable:
    table = []
    field_counter = 0
    static_counter = 0
    arg_counter = 0
    var_counter = 0

    def __init__(self):
        return

    def add(self, name, var_type, kind):
        self.table.append({"name": {name},
                           "type": {var_type},
                           "kind": {kind}})

        if kind == "field":
            self.table[-1]["#"] = self.field_counter
            self.field_counter = self.field_counter + 1

        elif kind == "static":
            self.table[-1]["#"] = self.static_counter
            self.static_counter = self.static_counter + 1

        return

    @staticmethod
    def reset(table):
        for i in range(len(table)):
            table.pop(0)
        return

    def print_table(self):
        print(self.table)
        return
