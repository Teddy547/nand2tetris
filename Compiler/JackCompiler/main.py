import os
import glob
from JackTokenizer import Tokenizer


if __name__ == '__main__':
    folder_to_read = "/home/christian/dev/Compiler/Test_Dateien/ExpressionLessSquare"
    output_folder = "/home/christian/dev/Compiler/Test_Dateien/Output/"
    files = [100]
    input_source = ""
    output_source = ""

    # Check if the supplied 'folder_to_read' is actually a folder
    # or a single file and then generate the output file accordingly
    if os.path.isdir(folder_to_read):
        files = glob.glob(folder_to_read + "/*.jack")

    elif os.path.isfile(folder_to_read):
        files[0] = folder_to_read

    else:
        file_to_write = ""

    for i in range(len(files)):
        file_name = files[i].split("/")
        file_name = file_name[-1].strip(".jack")
        file_to_write = output_folder + file_name + ".vm"

        try:
            os.remove(file_to_write)
        except OSError:
            pass

        file = open(file_to_write, "w")

        tokenizer = Tokenizer(files[i])

        while True:
            line_to_write = tokenizer.advance()

            if not line_to_write == tokenizer.NOTHING:
                file.write(line_to_write)

            if not tokenizer.has_more_lines(line_to_write):
                break

        file.close()
