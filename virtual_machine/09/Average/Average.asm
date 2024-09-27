@256
D=A
@SP
M=D

//Generate return label and push it on the stack
@Sys.init$ret.0
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@5
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@Sys.init
0;JMP

//Inject return address label
(Sys.init$ret.0)

//function Main.main 4
(Main.main)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1
@SP
A=M
M=D
@SP
M=M+1

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//Generate return label and push it on the stack
@String.new$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@6
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.new
0;JMP

//Inject return address label
(String.new$ret.1)

//push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.2)

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.3)

//push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.4)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.5)

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.6)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.7)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.8)

//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.9)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.10)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.11)

//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.12)

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.13)

//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.14)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.15)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.16
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.16)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.17)

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.18)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.19)

//call Keyboard.readInt 1

//Generate return label and push it on the stack
@Keyboard.readInt$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@6
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@Keyboard.readInt
0;JMP

//Inject return address label
(Keyboard.readInt$ret.20)

//pop local 1
@1
D=A
@LCL
D=D+M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
A=M
M=D

//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.21
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@6
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@Array.new
0;JMP

//Inject return address label
(Array.new$ret.21)

//pop local 0
@0
D=A
@LCL
D=D+M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
A=M
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop local 2
@2
D=A
@LCL
D=D+M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
A=M
M=D

//label WHILE_EXP0
(Main.Main.main$WHILE_EXP0)

//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=D+M
D=M
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
@LOWER.Main.50
D;JLT
@NOTLOWER.Main.50
D;JGE
(LOWER.Main.50)
D=-1
@AFTER.Main.50
0;JMP
(NOTLOWER.Main.50)
D=0
(AFTER.Main.50)
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

//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@Main.Main.main$WHILE_END0
D;JNE

//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=D+M
D=M
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

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//Generate return label and push it on the stack
@String.new$ret.22
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@6
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.new
0;JMP

//Inject return address label
(String.new$ret.22)

//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.23
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.23)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.24
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.24)

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.25
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.25)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.26
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.26)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.27
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.27)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.28
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.28)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.29
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.29)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.30
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.30)

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.31
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.31)

//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.32
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.32)

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.33
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.33)

//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.34
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.34)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.35
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.35)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.36
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.36)

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.37
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.37)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.38
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.38)

//call Keyboard.readInt 1

//Generate return label and push it on the stack
@Keyboard.readInt$ret.39
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@6
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@Keyboard.readInt
0;JMP

//Inject return address label
(Keyboard.readInt$ret.39)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D

//push temp 0
@5
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop that 0
@0
D=A
@THAT
D=D+M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
A=M
M=D

//push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 0
@0
D=A
@LCL
A=D+M
D=M
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

//pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D

//push that 0
@0
D=A
@THAT
A=D+M
D=M
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

//pop local 3
@3
D=A
@LCL
D=D+M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
A=M
M=D

//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 1
@1
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

//pop local 2
@2
D=A
@LCL
D=D+M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
A=M
M=D

//goto WHILE_EXP0
@Main.Main.main$WHILE_EXP0
0;JMP

//label WHILE_END0
(Main.Main.main$WHILE_END0)

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//Generate return label and push it on the stack
@String.new$ret.40
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@6
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.new
0;JMP

//Inject return address label
(String.new$ret.40)

//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.41
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.41)

//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.42
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.42)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.43
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.43)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.44
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.44)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.45
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.45)

//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.46
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.46)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.47
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.47)

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.48
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.48)

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.49
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.49)

//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.50
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.50)

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.51
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.51)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.52
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.52)

//push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.53
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.53)

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.54
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.54)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.55
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@String.appendChar
0;JMP

//Inject return address label
(String.appendChar$ret.55)

//call Output.printString 1

//Generate return label and push it on the stack
@Output.printString$ret.56
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@6
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@Output.printString
0;JMP

//Inject return address label
(Output.printString$ret.56)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.57
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@7
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@Math.divide
0;JMP

//Inject return address label
(Math.divide$ret.57)

//call Output.printInt 1

//Generate return label and push it on the stack
@Output.printInt$ret.58
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THAT' on the stack
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

//Reposition 'ARG'
@6
D=A
@14
M=D
@SP
D=M
@14
D=D-M
@ARG
M=D

//Reposition 'LCL'
@SP
D=M
@LCL
M=D

//Jump to called function
@Output.printInt
0;JMP

//Inject return address label
(Output.printInt$ret.58)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//return

//save frame address
@LCL
D=M
@14
M=D

//save return address
@5
D=A
@14
A=M-D
D=M
@15
M=D

//Pop return value to top of stack
@0
D=A
@ARG
D=D+M
@13
M=D
@SP
M=M-1
A=M
D=M
@13
A=M
M=D

//reposition stack pointer for caller
@ARG
D=M+1
@SP
M=D

//reposition 'THAT' for caller
@1
D=A
@14
A=M-D
D=M
@THAT
M=D

//reposition 'THIS' for caller
@2
D=A
@14
A=M-D
D=M
@THIS
M=D

//reposition 'ARG' for caller
@3
D=A
@14
A=M-D
D=M
@ARG
M=D

//reposition 'LCL' for caller
@4
D=A
@14
A=M-D
D=M
@LCL
M=D

//jump to return address
@15
A=M
0;JMP

//finish
(END)
@END
0;JMP