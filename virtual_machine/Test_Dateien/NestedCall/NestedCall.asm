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

//function Sys.init 0
(Sys.init)
@0
D=A

//push constant 4000	// test THIS and THAT context save
@4000
D=A
@SP
M=M+1
A=M-1
M=D

//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

//push constant 5000
@5000
D=A
@SP
M=M+1
A=M-1
M=D

//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

//call Sys.main 0

//Save number of arguments at temporary address @14
@5
D=A
@14
M=D

//Save called function address at temporary variable R15
@Sys.main
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Sys.main$ret.1
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Sys.main$ret.1)

//pop temp 1
@SP
AM=M-1
D=M
@6
M=D

//label LOOP
(Sys.Sys.init$LOOP)

//goto LOOP
@Sys.Sys.init$LOOP
0;JMP

//function Sys.main 5
(Sys.main)
@0
D=A
@SP
M=M+1
A=M-1
M=D
@SP
M=M+1
A=M-1
M=D
@SP
M=M+1
A=M-1
M=D
@SP
M=M+1
A=M-1
M=D
@SP
M=M+1
A=M-1
M=D

//push constant 4001
@4001
D=A
@SP
M=M+1
A=M-1
M=D

//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

//push constant 5001
@5001
D=A
@SP
M=M+1
A=M-1
M=D

//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

//push constant 200
@200
D=A
@SP
M=M+1
A=M-1
M=D

//pop local 1
@1
D=A
@LCL
D=D+M
@13
M=D
@SP
AM=M-1
D=M
@13
A=M
M=D

//push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D

//pop local 2
@2
D=A
@LCL
D=D+M
@13
M=D
@SP
AM=M-1
D=M
@13
A=M
M=D

//push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

//pop local 3
@3
D=A
@LCL
D=D+M
@13
M=D
@SP
AM=M-1
D=M
@13
A=M
M=D

//push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D

//call Sys.add12 1

//Save number of arguments at temporary address @14
@6
D=A
@14
M=D

//Save called function address at temporary variable R15
@Sys.add12
D=A
@15
M=D

//Take return address into D register and jump to GENERIC_CALL
@Sys.add12$ret.2
D=A
@GENERIC_CALL
0;JMP

//Inject return address label
(Sys.add12$ret.2)

//pop temp 0
@SP
AM=M-1
D=M
@5
M=D

//push local 0
@0
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//push local 1
@1
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//push local 2
@2
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//push local 3
@3
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
M=M+1
A=M-1
M=D

//add
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

//add
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

//add
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

//add
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

//function Sys.add12 0
(Sys.add12)
@0
D=A

//push constant 4002
@4002
D=A
@SP
M=M+1
A=M-1
M=D

//pop pointer 0
@SP
AM=M-1
D=M
@THIS
M=D

//push constant 5002
@5002
D=A
@SP
M=M+1
A=M-1
M=D

//pop pointer 1
@SP
AM=M-1
D=M
@THAT
M=D

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

//push constant 12
@12
D=A
@SP
M=M+1
A=M-1
M=D

//add
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

//finish
(END)
@END
0;JMP