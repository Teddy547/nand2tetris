
//function Main.fibonacci 0
(Main.Main.fibonacci)
@0
D=A

//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//lt                     // checks if n<2
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
@LOWER.Main.14
D;JLT
@NOTLOWER.Main.14
D;JGE
(LOWER.Main.14)
D=-1
@AFTER.Main.14
0;JMP
(NOTLOWER.Main.14)
D=0
(AFTER.Main.14)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE
@SP
M=M-1
A=M
D=M
@Main.$IF_TRUE
D;JNE

//goto IF_FALSE
@Main.$IF_FALSE
0;JMP

//label IF_TRUE          // if n<2, return n
(Main.$IF_TRUE)

//push argument 0        
@0
D=A
@ARG
A=D+M
D=M
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

//label IF_FALSE         // if n>=2, returns fib(n-2)+fib(n-1)
(Main.$IF_FALSE)

//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 2
@2
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

//call Main.fibonacci 1  // computes fib(n-2)

//push argument 0
@0
D=A
@ARG
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

//call Main.fibonacci 1  // computes fib(n-1)

//add                    // returns fib(n-1) + fib(n-2)
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

//function Sys.init 0
(Sys.Sys.init)
@0
D=A

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Main.fibonacci 1   // computes the 4'th fibonacci element

//label WHILE
(Sys.$WHILE)

//goto WHILE              // loops infinitely
@Sys.$WHILE
0;JMP

//finish
(END)
@END
0;JMP