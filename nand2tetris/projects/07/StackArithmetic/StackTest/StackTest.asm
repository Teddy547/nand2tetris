//push constant 17

@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 17

@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@EQUAL.10
D;JEQ
@NOTEQUAL.10
D;JNE
(EQUAL.10)
D=-1
@AFTER.10
0;JMP
(NOTEQUAL.10)
D=0
(AFTER.10)
@SP
A=M
M=D
@SP
M=M+1
//push constant 17

@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 16

@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@EQUAL.13
D;JEQ
@NOTEQUAL.13
D;JNE
(EQUAL.13)
D=-1
@AFTER.13
0;JMP
(NOTEQUAL.13)
D=0
(AFTER.13)
@SP
A=M
M=D
@SP
M=M+1
//push constant 16

@16
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 17

@17
D=A
@SP
A=M
M=D
@SP
M=M+1
//eq

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@EQUAL.16
D;JEQ
@NOTEQUAL.16
D;JNE
(EQUAL.16)
D=-1
@AFTER.16
0;JMP
(NOTEQUAL.16)
D=0
(AFTER.16)
@SP
A=M
M=D
@SP
M=M+1
//push constant 892

@892
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 891

@891
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@LOWER.19
D;JLT
@NOTLOWER.19
D;JGE
(LOWER.19)
D=-1
@AFTER.19
0;JMP
(NOTLOWER.19)
D=0
(AFTER.19)
@SP
A=M
M=D
@SP
M=M+1
//push constant 891

@891
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 892

@892
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@LOWER.22
D;JLT
@NOTLOWER.22
D;JGE
(LOWER.22)
D=-1
@AFTER.22
0;JMP
(NOTLOWER.22)
D=0
(AFTER.22)
@SP
A=M
M=D
@SP
M=M+1
//push constant 891

@891
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 891

@891
D=A
@SP
A=M
M=D
@SP
M=M+1
//lt

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@LOWER.25
D;JLT
@NOTLOWER.25
D;JGE
(LOWER.25)
D=-1
@AFTER.25
0;JMP
(NOTLOWER.25)
D=0
(AFTER.25)
@SP
A=M
M=D
@SP
M=M+1
//push constant 32767

@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32766

@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@GREATER.28
D;JGT
@NOTGREATER.28
D;JLE
(GREATER.28)
D=-1
@AFTER.28
0;JMP
(NOTGREATER.28)
D=0
(AFTER.28)
@SP
A=M
M=D
@SP
M=M+1
//push constant 32766

@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32767

@32767
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@GREATER.31
D;JGT
@NOTGREATER.31
D;JLE
(GREATER.31)
D=-1
@AFTER.31
0;JMP
(NOTGREATER.31)
D=0
(AFTER.31)
@SP
A=M
M=D
@SP
M=M+1
//push constant 32766

@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 32766

@32766
D=A
@SP
A=M
M=D
@SP
M=M+1
//gt

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@GREATER.34
D;JGT
@NOTGREATER.34
D;JLE
(GREATER.34)
D=-1
@AFTER.34
0;JMP
(NOTGREATER.34)
D=0
(AFTER.34)
@SP
A=M
M=D
@SP
M=M+1
//push constant 57

@57
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 31

@31
D=A
@SP
A=M
M=D
@SP
M=M+1
//push constant 53

@53
D=A
@SP
A=M
M=D
@SP
M=M+1
//add

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=M+D
@SP
A=M
M=D
@SP
M=M+1
//push constant 112

@112
D=A
@SP
A=M
M=D
@SP
M=M+1
//sub

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=D-M
@SP
A=M
M=D
@SP
M=M+1
//neg

@SP
M=M-1
A=M
D=M
@13
M=D
D=-M
@SP
A=M
M=D
@SP
M=M+1
//and

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=M&D
@SP
A=M
M=D
@SP
M=M+1
//push constant 82

@82
D=A
@SP
A=M
M=D
@SP
M=M+1
//or

@SP
M=M-1
A=M
D=M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
D=M|D
@SP
A=M
M=D
@SP
M=M+1
//not

@SP
M=M-1
A=M
D=M
@13
M=D
D=!M
@SP
A=M
M=D
@SP
M=M+1
//finish
(END)
@END
0;JMP