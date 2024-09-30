//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D

//eq
@EQUAL.StackTest.10
D=A
@15
M=D
@GLOBAL_EQUAL
0;JMP
(EQUAL.StackTest.10)

//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

//eq
@EQUAL.StackTest.13
D=A
@15
M=D
@GLOBAL_EQUAL
0;JMP
(EQUAL.StackTest.13)

//push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D

//eq
@EQUAL.StackTest.16
D=A
@15
M=D
@GLOBAL_EQUAL
0;JMP
(EQUAL.StackTest.16)

//push constant 892
@892
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D

//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTLOWER.StackTest.19
D;JGE
@SP
A=M-1
M=-1
@AFTER.StackTest.19
0;JMP
(NOTLOWER.StackTest.19)
@SP
A=M-1
M=0
(AFTER.StackTest.19)

//push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 892
@892
D=A
@SP
M=M+1
A=M-1
M=D

//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTLOWER.StackTest.22
D;JGE
@SP
A=M-1
M=-1
@AFTER.StackTest.22
0;JMP
(NOTLOWER.StackTest.22)
@SP
A=M-1
M=0
(AFTER.StackTest.22)

//push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D

//lt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTLOWER.StackTest.25
D;JGE
@SP
A=M-1
M=-1
@AFTER.StackTest.25
0;JMP
(NOTLOWER.StackTest.25)
@SP
A=M-1
M=0
(AFTER.StackTest.25)

//push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D

//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTGREATER.StackTest.28
D;JLE
@SP
A=M-1
M=-1
@AFTER.StackTest.28
0;JMP
(NOTGREATER.StackTest.28)
@SP
A=M-1
M=0
(AFTER.StackTest.28)

//push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D

//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTGREATER.StackTest.31
D;JLE
@SP
A=M-1
M=-1
@AFTER.StackTest.31
0;JMP
(NOTGREATER.StackTest.31)
@SP
A=M-1
M=0
(AFTER.StackTest.31)

//push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D

//gt
@SP
AM=M-1
D=M
A=A-1
D=M-D
@NOTGREATER.StackTest.34
D;JLE
@SP
A=M-1
M=-1
@AFTER.StackTest.34
0;JMP
(NOTGREATER.StackTest.34)
@SP
A=M-1
M=0
(AFTER.StackTest.34)

//push constant 57
@57
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 53
@53
D=A
@SP
M=M+1
A=M-1
M=D

//add
@SP
AM=M-1
D=M
A=A-1
M=D+M

//push constant 112
@112
D=A
@SP
M=M+1
A=M-1
M=D

//sub
@SP
AM=M-1
D=M
A=A-1
M=M-D

//neg
@SP
A=M-1
M=-M

//and
@SP
AM=M-1
D=M
A=A-1
M=D&M

//push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D

//or
@SP
AM=M-1
D=M
A=A-1
M=D|M

//not
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
