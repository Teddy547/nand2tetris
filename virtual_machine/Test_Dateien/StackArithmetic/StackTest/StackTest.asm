@17
D=A
@SP
M=M+1
A=M-1
M=D
@17
D=A
@SP
M=M+1
A=M-1
M=D
@EQUAL.StackTest.10
D=A
@15
M=D
@GLOBAL_EQUAL
0;JMP
(EQUAL.StackTest.10)
@17
D=A
@SP
M=M+1
A=M-1
M=D
@16
D=A
@SP
M=M+1
A=M-1
M=D
@EQUAL.StackTest.13
D=A
@15
M=D
@GLOBAL_EQUAL
0;JMP
(EQUAL.StackTest.13)
@16
D=A
@SP
M=M+1
A=M-1
M=D
@17
D=A
@SP
M=M+1
A=M-1
M=D
@EQUAL.StackTest.16
D=A
@15
M=D
@GLOBAL_EQUAL
0;JMP
(EQUAL.StackTest.16)
@892
D=A
@SP
M=M+1
A=M-1
M=D
@891
D=A
@SP
M=M+1
A=M-1
M=D
@LOWERTHAN.StackTest.19
D=A
@15
M=D
@GLOBAL_LOWERTHAN
0;JMP
(LOWERTHAN.StackTest.19)
@891
D=A
@SP
M=M+1
A=M-1
M=D
@892
D=A
@SP
M=M+1
A=M-1
M=D
@LOWERTHAN.StackTest.22
D=A
@15
M=D
@GLOBAL_LOWERTHAN
0;JMP
(LOWERTHAN.StackTest.22)
@891
D=A
@SP
M=M+1
A=M-1
M=D
@891
D=A
@SP
M=M+1
A=M-1
M=D
@LOWERTHAN.StackTest.25
D=A
@15
M=D
@GLOBAL_LOWERTHAN
0;JMP
(LOWERTHAN.StackTest.25)
@32767
D=A
@SP
M=M+1
A=M-1
M=D
@32766
D=A
@SP
M=M+1
A=M-1
M=D
@GREATERTHAN.StackTest.28
D=A
@15
M=D
@GLOBAL_GREATERTHAN
0;JMP
(GREATERTHAN.StackTest.28)
@32766
D=A
@SP
M=M+1
A=M-1
M=D
@32767
D=A
@SP
M=M+1
A=M-1
M=D
@GREATERTHAN.StackTest.31
D=A
@15
M=D
@GLOBAL_GREATERTHAN
0;JMP
(GREATERTHAN.StackTest.31)
@32766
D=A
@SP
M=M+1
A=M-1
M=D
@32766
D=A
@SP
M=M+1
A=M-1
M=D
@GREATERTHAN.StackTest.34
D=A
@15
M=D
@GLOBAL_GREATERTHAN
0;JMP
(GREATERTHAN.StackTest.34)
@57
D=A
@SP
M=M+1
A=M-1
M=D
@31
D=A
@SP
M=M+1
A=M-1
M=D
@53
D=A
@SP
M=M+1
A=M-1
M=D
@SP
AM=M-1
D=M
A=A-1
M=D+M
@112
D=A
@SP
M=M+1
A=M-1
M=D
@SP
AM=M-1
D=M
A=A-1
M=M-D
@SP
A=M-1
M=-M
@SP
AM=M-1
D=M
A=A-1
M=D&M
@82
D=A
@SP
M=M+1
A=M-1
M=D
@SP
AM=M-1
D=M
A=A-1
M=D|M
@SP
A=M-1
M=!M
//finish
(END)
@END
0;JMP
(GLOBAL_EQUAL)
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTEQUAL
D;JNE
@SP
A=M-1
M=-1
@AFTERNOTEQUAL
0;JMP
(NOTEQUAL)
@SP
A=M-1
M=0
(AFTERNOTEQUAL)
@15
A=M
0;JMP
(GLOBAL_GREATERTHAN)
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTGREATER
D;JLE
@SP
A=M-1
M=-1
@AFTERNOTGREATER
0;JMP
(NOTGREATER)
@SP
A=M-1
M=0
(AFTERNOTGREATER)
@15
A=M
0;JMP
(GLOBAL_LOWERTHAN)
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTLOWER
D;JGE
@SP
A=M-1
M=-1
@AFTERNOTLOWER
0;JMP
(NOTLOWER)
@SP
A=M-1
M=0
(AFTERNOTLOWER)
@15
A=M
0;JMP