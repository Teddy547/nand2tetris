@256
D=A
@SP
M=D

//Save number of arguments at temporary address @14
@5
D=A
@14
M=D

//Save called function address at temporary variable R15
@Sys.init
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Sys.init$ret.0
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Sys.init$ret.0)
(GENERIC_CALL)
@SP
M=M+1
A=M-1
M=D

//Push 'LCL' on the stack
@LCL
D=M
@SP
M=M+1
A=M-1
M=D

//Push 'ARG' on the stack
@ARG
D=M
@SP
M=M+1
A=M-1
M=D

//Push 'THIS' on the stack
@THIS
D=M
@SP
M=M+1
A=M-1
M=D

//Push 'THAT' on the stack
@THAT
D=M
@SP
M=M+1
A=M-1
M=D

//Reposition 'ARG'
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
@15
A=M
0;JMP
(GENERIC_RETURN)

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
AM=M-1
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

//function Main.fibonacci 0
(Main.fibonacci)
@0
D=A

//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

//lt                     // checks if n<2
@SP
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
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
M=M+1
A=M-1
M=D

//if-goto IF_TRUE
@SP
AM=M-1
D=M
@Main.Main.fibonacci$IF_TRUE
D;JNE

//goto IF_FALSE
@Main.Main.fibonacci$IF_FALSE
0;JMP

//label IF_TRUE          // if n<2, return n
(Main.Main.fibonacci$IF_TRUE)

//push argument 0        
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//return
@GENERIC_RETURN
0;JMP

//label IF_FALSE         // if n>=2, returns fib(n-2)+fib(n-1)
(Main.Main.fibonacci$IF_FALSE)

//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

//sub
@SP
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
D=M
@13
D=D-M
@SP
M=M+1
A=M-1
M=D

//call Main.fibonacci 1  // computes fib(n-2)

//Save number of arguments at temporary address @14
@6
D=A
@14
M=D

//Save called function address at temporary variable R15
@Main.fibonacci
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Main.fibonacci$ret.1
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Main.fibonacci$ret.1)

//push argument 0
@0
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

//sub
@SP
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
D=M
@13
D=D-M
@SP
M=M+1
A=M-1
M=D

//call Main.fibonacci 1  // computes fib(n-1)

//Save number of arguments at temporary address @14
@6
D=A
@14
M=D

//Save called function address at temporary variable R15
@Main.fibonacci
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Main.fibonacci$ret.2
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Main.fibonacci$ret.2)

//add                    // returns fib(n-1) + fib(n-2)
@SP
AM=M-1
D=M
@13
M=D
@SP
AM=M-1
D=M
@13
D=M+D
@SP
M=M+1
A=M-1
M=D

//return
@GENERIC_RETURN
0;JMP

//function Sys.init 0
(Sys.init)
@0
D=A

//push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D

//call Main.fibonacci 1   // computes the 4'th fibonacci element

//Save number of arguments at temporary address @14
@6
D=A
@14
M=D

//Save called function address at temporary variable R15
@Main.fibonacci
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Main.fibonacci$ret.3
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Main.fibonacci$ret.3)

//label WHILE
(Sys.Sys.init$WHILE)

//goto WHILE              // loops infinitely
@Sys.Sys.init$WHILE
0;JMP

//finish
(END)
@END
0;JMP