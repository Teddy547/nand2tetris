import os
import glob
import sys

from CompilationEngine import Engine

if __name__ == '__main__':
    folder_to_read = "/home/christian/dev/Compiler/Test_Dateien/ConvertToBin"
    output_folder = "/home/christian/dev/Compiler/Test_Dateien/Output/"
    files = [100]
    input_source = ""
    output_source = ""
    token = ""
    tokenType = ""
    file = ""
    file_to_write = ""

    # Check if the supplied 'folder_to_read' is actually a folder
    # or a single file and then generate the output file accordingly
    if os.path.isdir(folder_to_read):
        files = glob.glob(folder_to_read + "/*.jack")

    elif os.path.isfile(folder_to_read):
        files[0] = folder_to_read

    else:
        print("Ungültiger Pfad")
        sys.exit()

    for i in range(len(files)):
        file_name = files[i].split("/")
        file_name = file_name[-1].strip(".jack")
        file_to_write = output_folder + file_name + ".vm"

        try:
            os.remove(file_to_write)
        except OSError:
            pass

        engine = Engine(files[i], file_to_write)
        engine.compile_class()
        engine.__del__()
