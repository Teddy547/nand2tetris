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

//function Class1.set 0
(Class1.set)
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

//pop static 0
@SP
AM=M-1
D=M
@Class1.0
M=D

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//pop static 1
@SP
AM=M-1
D=M
@Class1.1
M=D

//push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

//return
@GENERIC_RETURN
0;JMP

//function Class1.get 0
(Class1.get)
@0
D=A

//push static 0
@Class1.0
D=M
@SP
M=M+1
A=M-1
M=D

//push static 1
@Class1.1
D=M
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

//return
@GENERIC_RETURN
0;JMP

//function Sys.init 0
(Sys.init)
@0
D=A

//push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D

//call Class1.set 2

//Save number of arguments at temporary address @14
@7
D=A
@14
M=D

//Save called function address at temporary variable R15
@Class1.set
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Class1.set$ret.1
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Class1.set$ret.1)

//pop temp 0 // Dumps the return value
@SP
AM=M-1
D=M
@5
M=D

//push constant 23
@23
D=A
@SP
M=M+1
A=M-1
M=D

//push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

//call Class2.set 2

//Save number of arguments at temporary address @14
@7
D=A
@14
M=D

//Save called function address at temporary variable R15
@Class2.set
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Class2.set$ret.2
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Class2.set$ret.2)

//pop temp 0 // Dumps the return value
@SP
AM=M-1
D=M
@5
M=D

//call Class1.get 0

//Save number of arguments at temporary address @14
@5
D=A
@14
M=D

//Save called function address at temporary variable R15
@Class1.get
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Class1.get$ret.3
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Class1.get$ret.3)

//call Class2.get 0

//Save number of arguments at temporary address @14
@5
D=A
@14
M=D

//Save called function address at temporary variable R15
@Class2.get
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Class2.get$ret.4
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Class2.get$ret.4)

//label WHILE
(Sys.Sys.init$WHILE)

//goto WHILE
@Sys.Sys.init$WHILE
0;JMP

//function Class2.set 0
(Class2.set)
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

//pop static 0
@SP
AM=M-1
D=M
@Class2.0
M=D

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//pop static 1
@SP
AM=M-1
D=M
@Class2.1
M=D

//push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

//return
@GENERIC_RETURN
0;JMP

//function Class2.get 0
(Class2.get)
@0
D=A

//push static 0
@Class2.0
D=M
@SP
M=M+1
A=M-1
M=D

//push static 1
@Class2.1
D=M
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

//return
@GENERIC_RETURN
0;JMP

//finish
(END)
@END
0;JMP