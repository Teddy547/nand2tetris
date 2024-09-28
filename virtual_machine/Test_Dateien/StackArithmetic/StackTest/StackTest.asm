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
@SP
AM=M-1
D=M
A=A-1
D=M-D
@SP
M=M-1
@EQUAL.StackTest.10
D;JEQ
@NOTEQUAL.StackTest.10
D;JNE
(EQUAL.StackTest.10)
D=-1
@AFTER.StackTest.10
0;JMP
(NOTEQUAL.StackTest.10)
D=0
(AFTER.StackTest.10)
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

//push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@SP
M=M-1
@EQUAL.StackTest.13
D;JEQ
@NOTEQUAL.StackTest.13
D;JNE
(EQUAL.StackTest.13)
D=-1
@AFTER.StackTest.13
0;JMP
(NOTEQUAL.StackTest.13)
D=0
(AFTER.StackTest.13)
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

//push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D

//eq
@SP
AM=M-1
D=M
A=A-1
D=M-D
@SP
M=M-1
@EQUAL.StackTest.16
D;JEQ
@NOTEQUAL.StackTest.16
D;JNE
(EQUAL.StackTest.16)
D=-1
@AFTER.StackTest.16
0;JMP
(NOTEQUAL.StackTest.16)
D=0
(AFTER.StackTest.16)
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
@SP
M=M-1
@LOWER.StackTest.19
D;JLT
@NOTLOWER.StackTest.19
D;JGE
(LOWER.StackTest.19)
D=-1
@AFTER.StackTest.19
0;JMP
(NOTLOWER.StackTest.19)
D=0
(AFTER.StackTest.19)
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
@SP
M=M-1
@LOWER.StackTest.22
D;JLT
@NOTLOWER.StackTest.22
D;JGE
(LOWER.StackTest.22)
D=-1
@AFTER.StackTest.22
0;JMP
(NOTLOWER.StackTest.22)
D=0
(AFTER.StackTest.22)
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
@SP
M=M-1
@LOWER.StackTest.25
D;JLT
@NOTLOWER.StackTest.25
D;JGE
(LOWER.StackTest.25)
D=-1
@AFTER.StackTest.25
0;JMP
(NOTLOWER.StackTest.25)
D=0
(AFTER.StackTest.25)
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
@SP
M=M-1
@GREATER.StackTest.28
D;JGT
@NOTGREATER.StackTest.28
D;JLE
(GREATER.StackTest.28)
D=-1
@AFTER.StackTest.28
0;JMP
(NOTGREATER.StackTest.28)
D=0
(AFTER.StackTest.28)
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
@SP
M=M-1
@GREATER.StackTest.31
D;JGT
@NOTGREATER.StackTest.31
D;JLE
(GREATER.StackTest.31)
D=-1
@AFTER.StackTest.31
0;JMP
(NOTGREATER.StackTest.31)
D=0
(AFTER.StackTest.31)
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
@SP
M=M-1
@GREATER.StackTest.34
D;JGT
@NOTGREATER.StackTest.34
D;JLE
(GREATER.StackTest.34)
D=-1
@AFTER.StackTest.34
0;JMP
(NOTGREATER.StackTest.34)
D=0
(AFTER.StackTest.34)
@SP
M=M+1
A=M-1
M=D

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
