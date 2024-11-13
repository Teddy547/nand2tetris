import os
import glob

from JackTokenizer import Tokenizer

if __name__ == '__main__':
    folder_to_read = "/home/christian/dev/Compiler/Test_Dateien/ExpressionLessSquare"
    output_folder = "/home/christian/dev/Compiler/Test_Dateien/Output/"
    files = [100]
    input_source = ""
    output_source = ""
    token = ""
    tokenType = ""

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
        file_to_write = output_folder + file_name + ".xml"

        try:
            os.remove(file_to_write)
        except OSError:
            pass

        file = open(file_to_write, "w")
        file.write("<tokens>\n")

        tokenizer = Tokenizer(files[i])

        while True:
            line_to_read = tokenizer.advance_line()

            if not line_to_read == tokenizer.NOTHING:
                while True:
                    token = tokenizer.advance_token(line_to_read)
                    tokenType = tokenizer.token_type(token)
                    if not token:
                        break

                    if tokenType == tokenizer.KEYWORD:
                        file.write("<keyword> ")
                        file.write(token)
                        file.write(" </keyword>\n")

                    if tokenType == tokenizer.SYMBOL:
                        file.write("<symbol> ")
                        file.write(token)
                        file.write(" </symbol>\n")

                    if tokenType == tokenizer.INT_CONST:
                        file.write("<integerConstant> ")
                        file.write(token)
                        file.write(" </integerConstant>\n")

                    if tokenType == tokenizer.STRING_CONST:
                        file.write("<stringConstant> ")
                        file.write(token)
                        file.write(" </stringConstant>\n")

                    if tokenType == tokenizer.IDENTIFIER:
                        file.write("<identifier> ")
                        file.write(token)
                        file.write(" </identifier>\n")

            if not tokenizer.has_more_lines(line_to_read):
                break

        file.write("</tokens>")
        file.close()
