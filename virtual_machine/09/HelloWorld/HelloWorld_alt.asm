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

//function Output.init 0
(Output.init)
@0
D=A

//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 4
@SP
M=M-1
A=M
D=M
@Output.4
M=D

//push constant 0
@0
D=A
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

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push constant 6
@6
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

//pop static 3
@SP
M=M-1
A=M
D=M
@Output.3
M=D

//call Output.initMap 0

//Generate return label and push it on the stack
@Output.initMap$ret.2
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
@Output.initMap
0;JMP

//Inject return address label
(Output.initMap$ret.2)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Output.createShiftedMap 0

//Generate return label and push it on the stack
@Output.createShiftedMap$ret.3
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
@Output.createShiftedMap
0;JMP

//Inject return address label
(Output.createShiftedMap$ret.3)

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

//function Output.initMap 0
(Output.initMap)
@0
D=A

//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.4
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
(Array.new$ret.4)

//pop static 5
@SP
M=M-1
A=M
D=M
@Output.5
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.5
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.5)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.6
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.6)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.7
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.7)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 34
@34
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.8
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.8)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
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

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
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

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
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

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.9
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.9)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 36
@36
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.10
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.10)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 37
@37
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.11
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.11)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.12
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.12)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 39
@39
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.13
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.13)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 40
@40
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.14
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.14)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 41
@41
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.15
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.15)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 42
@42
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.16
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.16)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.17
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.17)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.18
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.18)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.19
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.19)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 46
@46
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.20
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.20)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 47
@47
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.21
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.21)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.22
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.22)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.23
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.23)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.24
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.24)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.25
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.25)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 52
@52
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

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 26
@26
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.26
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.26)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 53
@53
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
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

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.27
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.27)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
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

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.28
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.28)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.29
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.29)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.30
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.30)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 57
@57
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.31
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.31)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 58
@58
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.32
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.32)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.33
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.33)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.34
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.34)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 61
@61
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.35
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.35)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.36
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.36)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 64
@64
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.37
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.37)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.38
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.38)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 65
@65
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.39
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.39)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 66
@66
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

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
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

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.40
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.40)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 67
@67
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.41
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.41)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 68
@68
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.42
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.42)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.43
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.43)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 70
@70
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.44
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.44)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 71
@71
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 44
@44
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.45
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.45)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 72
@72
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.46
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.46)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 73
@73
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.47
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.47)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 74
@74
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.48
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.48)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 75
@75
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.49
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.49)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 76
@76
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.50
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.50)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 77
@77
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.51
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.51)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 78
@78
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.52
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.52)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 79
@79
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.53
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.53)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 80
@80
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

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
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

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.54
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.54)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 81
@81
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 59
@59
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.55
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.55)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 82
@82
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

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
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

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.56
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.56)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 83
@83
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.57
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.57)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 84
@84
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.58
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.58)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 85
@85
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.59
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.59)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 86
@86
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.60
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.60)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 87
@87
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.61
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.61)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 88
@88
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.62
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.62)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 89
@89
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.63
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.63)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 90
@90
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 49
@49
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 35
@35
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.64
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.64)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 91
@91
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.65
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.65)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 92
@92
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
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

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.66
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.66)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 93
@93
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.67
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.67)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 94
@94
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.68
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.68)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 95
@95
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.69
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.69)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 96
@96
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.70
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.70)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 97
@97
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.71
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.71)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 98
@98
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.72
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.72)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 99
@99
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.73
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.73)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 60
@60
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.74
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.74)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 101
@101
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.75
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.75)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 102
@102
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.76
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.76)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 103
@103
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.77
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.77)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 104
@104
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.78
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.78)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 105
@105
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.79
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.79)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 106
@106
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.80
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.80)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 107
@107
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.81
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.81)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.82
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.82)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 109
@109
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 43
@43
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.83
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.83)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 110
@110
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.84
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.84)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 111
@111
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.85
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.85)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 112
@112
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
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

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.86
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.86)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 113
@113
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.87
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.87)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 114
@114
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 29
@29
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 55
@55
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.88
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.88)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 115
@115
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.89
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.89)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 116
@116
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 28
@28
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.90
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.90)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 117
@117
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 54
@54
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.91
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.91)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 118
@118
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.92
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.92)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 119
@119
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.93
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.93)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 120
@120
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 30
@30
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.94
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.94)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 121
@121
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 62
@62
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 24
@24
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.95
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.95)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 122
@122
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 27
@27
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 51
@51
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.96
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.96)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 123
@123
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.97
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.97)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 124
@124
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.98
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.98)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 125
@125
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 56
@56
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.99
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.99)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 126
@126
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 38
@38
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 25
@25
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.create 12

//Generate return label and push it on the stack
@Output.create$ret.100
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
@17
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
@Output.create
0;JMP

//Inject return address label
(Output.create$ret.100)

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

//function Output.create 1
(Output.create)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.101
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
(Array.new$ret.101)

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

//push static 5
@Output.5
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

//push constant 0
@0
D=A
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 1
@1
D=A
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 2
@2
D=A
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

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 3
@3
D=A
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

//push argument 4
@4
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 4
@4
D=A
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

//push argument 5
@5
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 5
@5
D=A
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

//push argument 6
@6
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 6
@6
D=A
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

//push argument 7
@7
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 7
@7
D=A
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

//push argument 8
@8
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 8
@8
D=A
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

//push argument 9
@9
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 9
@9
D=A
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

//push argument 10
@10
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 10
@10
D=A
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

//push argument 11
@11
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//function Output.createShiftedMap 4
(Output.createShiftedMap)
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

//push constant 127
@127
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.102
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
(Array.new$ret.102)

//pop static 6
@SP
M=M-1
A=M
D=M
@Output.6
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
(Output.Output.createShiftedMap$WHILE_EXP0)

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

//push constant 127
@127
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
@LOWER.Output.1481
D;JLT
@NOTLOWER.Output.1481
D;JGE
(LOWER.Output.1481)
D=-1
@AFTER.Output.1481
0;JMP
(NOTLOWER.Output.1481)
D=0
(AFTER.Output.1481)
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
@Output.Output.createShiftedMap$WHILE_END0
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

//push static 5
@Output.5
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

//push constant 11
@11
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.103
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
(Array.new$ret.103)

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

//push static 6
@Output.6
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

//push constant 0
@0
D=A
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

//label WHILE_EXP1
(Output.Output.createShiftedMap$WHILE_EXP1)

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

//push constant 11
@11
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
@LOWER.Output.1506
D;JLT
@NOTLOWER.Output.1506
D;JGE
(LOWER.Output.1506)
D=-1
@AFTER.Output.1506
0;JMP
(NOTLOWER.Output.1506)
D=0
(AFTER.Output.1506)
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

//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@Output.Output.createShiftedMap$WHILE_END1
D;JNE

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

//push constant 256
@256
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.104
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.104)

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

//goto WHILE_EXP1
@Output.Output.createShiftedMap$WHILE_EXP1
0;JMP

//label WHILE_END1
(Output.Output.createShiftedMap$WHILE_END1)

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

//push constant 0
@0
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
@EQUAL.Output.1531
D;JEQ
@NOTEQUAL.Output.1531
D;JNE
(EQUAL.Output.1531)
D=-1
@AFTER.Output.1531
0;JMP
(NOTEQUAL.Output.1531)
D=0
(AFTER.Output.1531)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.Output.createShiftedMap$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Output.Output.createShiftedMap$IF_FALSE0
0;JMP

//label IF_TRUE0
(Output.Output.createShiftedMap$IF_TRUE0)

//push constant 32
@32
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

//goto IF_END0
@Output.Output.createShiftedMap$IF_END0
0;JMP

//label IF_FALSE0
(Output.Output.createShiftedMap$IF_FALSE0)

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

//label IF_END0
(Output.Output.createShiftedMap$IF_END0)

//goto WHILE_EXP0
@Output.Output.createShiftedMap$WHILE_EXP0
0;JMP

//label WHILE_END0
(Output.Output.createShiftedMap$WHILE_END0)

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

//function Output.getMap 1
(Output.getMap)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 32
@32
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
@LOWER.Output.1551
D;JLT
@NOTLOWER.Output.1551
D;JGE
(LOWER.Output.1551)
D=-1
@AFTER.Output.1551
0;JMP
(NOTLOWER.Output.1551)
D=0
(AFTER.Output.1551)
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 126
@126
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
@GREATER.Output.1554
D;JGT
@NOTGREATER.Output.1554
D;JLE
(GREATER.Output.1554)
D=-1
@AFTER.Output.1554
0;JMP
(NOTGREATER.Output.1554)
D=0
(AFTER.Output.1554)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.Output.getMap$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Output.Output.getMap$IF_FALSE0
0;JMP

//label IF_TRUE0
(Output.Output.getMap$IF_TRUE0)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop argument 0
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

//label IF_FALSE0
(Output.Output.getMap$IF_FALSE0)

//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Output.Output.getMap$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Output.Output.getMap$IF_FALSE1
0;JMP

//label IF_TRUE1
(Output.Output.getMap$IF_TRUE1)

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

//push static 5
@Output.5
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

//goto IF_END1
@Output.Output.getMap$IF_END1
0;JMP

//label IF_FALSE1
(Output.Output.getMap$IF_FALSE1)

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

//push static 6
@Output.6
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

//label IF_END1
(Output.Output.getMap$IF_END1)

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

//function Output.drawChar 4
(Output.drawChar)
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

//call Output.getMap 1

//Generate return label and push it on the stack
@Output.getMap$ret.105
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
@Output.getMap
0;JMP

//Inject return address label
(Output.getMap$ret.105)

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

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//label WHILE_EXP0
(Output.Output.drawChar$WHILE_EXP0)

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

//push constant 11
@11
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
@LOWER.Output.1592
D;JLT
@NOTLOWER.Output.1592
D;JGE
(LOWER.Output.1592)
D=-1
@AFTER.Output.1592
0;JMP
(NOTLOWER.Output.1592)
D=0
(AFTER.Output.1592)
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
@Output.Output.drawChar$WHILE_END0
D;JNE

//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.Output.drawChar$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Output.Output.drawChar$IF_FALSE0
0;JMP

//label IF_TRUE0
(Output.Output.drawChar$IF_TRUE0)

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

//push static 4
@Output.4
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

//push constant 256
@256
D=A
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

//goto IF_END0
@Output.Output.drawChar$IF_END0
0;JMP

//label IF_FALSE0
(Output.Output.drawChar$IF_FALSE0)

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

//push static 4
@Output.4
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

//push constant 255
@255
D=A
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

//label IF_END0
(Output.Output.drawChar$IF_END0)

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

//push static 4
@Output.4
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

//push constant 32
@32
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

//goto WHILE_EXP0
@Output.Output.drawChar$WHILE_EXP0
0;JMP

//label WHILE_END0
(Output.Output.drawChar$WHILE_END0)

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

//function Output.moveCursor 0
(Output.moveCursor)
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

//push constant 0
@0
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
@LOWER.Output.1648
D;JLT
@NOTLOWER.Output.1648
D;JGE
(LOWER.Output.1648)
D=-1
@AFTER.Output.1648
0;JMP
(NOTLOWER.Output.1648)
D=0
(AFTER.Output.1648)
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 22
@22
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
@GREATER.Output.1651
D;JGT
@NOTGREATER.Output.1651
D;JLE
(GREATER.Output.1651)
D=-1
@AFTER.Output.1651
0;JMP
(NOTGREATER.Output.1651)
D=0
(AFTER.Output.1651)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.Output.1655
D;JLT
@NOTLOWER.Output.1655
D;JGE
(LOWER.Output.1655)
D=-1
@AFTER.Output.1655
0;JMP
(NOTLOWER.Output.1655)
D=0
(AFTER.Output.1655)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 63
@63
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
@GREATER.Output.1659
D;JGT
@NOTGREATER.Output.1659
D;JLE
(GREATER.Output.1659)
D=-1
@AFTER.Output.1659
0;JMP
(NOTGREATER.Output.1659)
D=0
(AFTER.Output.1659)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.Output.moveCursor$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Output.Output.moveCursor$IF_FALSE0
0;JMP

//label IF_TRUE0
(Output.Output.moveCursor$IF_TRUE0)

//push constant 20
@20
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.106
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.106)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Output.Output.moveCursor$IF_FALSE0)

//push argument 1
@1
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

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.107
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
(Math.divide$ret.107)

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 352
@352
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.108
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.108)

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

//push static 0
@Output.0
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

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Output.0
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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.109
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.109)

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
@EQUAL.Output.1684
D;JEQ
@NOTEQUAL.Output.1684
D;JNE
(EQUAL.Output.1684)
D=-1
@AFTER.Output.1684
0;JMP
(NOTEQUAL.Output.1684)
D=0
(AFTER.Output.1684)
@SP
A=M
M=D
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.drawChar 1

//Generate return label and push it on the stack
@Output.drawChar$ret.110
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
@Output.drawChar
0;JMP

//Inject return address label
(Output.drawChar$ret.110)

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

//function Output.printChar 0
(Output.printChar)
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

//call String.newLine 0

//Generate return label and push it on the stack
@String.newLine$ret.111
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
@String.newLine
0;JMP

//Inject return address label
(String.newLine$ret.111)

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
@EQUAL.Output.1694
D;JEQ
@NOTEQUAL.Output.1694
D;JNE
(EQUAL.Output.1694)
D=-1
@AFTER.Output.1694
0;JMP
(NOTEQUAL.Output.1694)
D=0
(AFTER.Output.1694)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.Output.printChar$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Output.Output.printChar$IF_FALSE0
0;JMP

//label IF_TRUE0
(Output.Output.printChar$IF_TRUE0)

//call Output.println 0

//Generate return label and push it on the stack
@Output.println$ret.112
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
@Output.println
0;JMP

//Inject return address label
(Output.println$ret.112)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto IF_END0
@Output.Output.printChar$IF_END0
0;JMP

//label IF_FALSE0
(Output.Output.printChar$IF_FALSE0)

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

//call String.backSpace 0

//Generate return label and push it on the stack
@String.backSpace$ret.113
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
@String.backSpace
0;JMP

//Inject return address label
(String.backSpace$ret.113)

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
@EQUAL.Output.1704
D;JEQ
@NOTEQUAL.Output.1704
D;JNE
(EQUAL.Output.1704)
D=-1
@AFTER.Output.1704
0;JMP
(NOTEQUAL.Output.1704)
D=0
(AFTER.Output.1704)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Output.Output.printChar$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Output.Output.printChar$IF_FALSE1
0;JMP

//label IF_TRUE1
(Output.Output.printChar$IF_TRUE1)

//call Output.backSpace 0

//Generate return label and push it on the stack
@Output.backSpace$ret.114
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
@Output.backSpace
0;JMP

//Inject return address label
(Output.backSpace$ret.114)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto IF_END1
@Output.Output.printChar$IF_END1
0;JMP

//label IF_FALSE1
(Output.Output.printChar$IF_FALSE1)

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

//call Output.drawChar 1

//Generate return label and push it on the stack
@Output.drawChar$ret.115
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
@Output.drawChar
0;JMP

//Inject return address label
(Output.drawChar$ret.115)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push static 2
@Output.2
D=M
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

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@Output.Output.printChar$IF_TRUE2
D;JNE

//goto IF_FALSE2
@Output.Output.printChar$IF_FALSE2
0;JMP

//label IF_TRUE2
(Output.Output.printChar$IF_TRUE2)

//push static 0
@Output.0
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

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push static 1
@Output.1
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

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//label IF_FALSE2
(Output.Output.printChar$IF_FALSE2)

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
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
@EQUAL.Output.1731
D;JEQ
@NOTEQUAL.Output.1731
D;JNE
(EQUAL.Output.1731)
D=-1
@AFTER.Output.1731
0;JMP
(NOTEQUAL.Output.1731)
D=0
(AFTER.Output.1731)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@Output.Output.printChar$IF_TRUE3
D;JNE

//goto IF_FALSE3
@Output.Output.printChar$IF_FALSE3
0;JMP

//label IF_TRUE3
(Output.Output.printChar$IF_TRUE3)

//call Output.println 0

//Generate return label and push it on the stack
@Output.println$ret.116
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
@Output.println
0;JMP

//Inject return address label
(Output.println$ret.116)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto IF_END3
@Output.Output.printChar$IF_END3
0;JMP

//label IF_FALSE3
(Output.Output.printChar$IF_FALSE3)

//push static 2
@Output.2
D=M
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

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//label IF_END3
(Output.Output.printChar$IF_END3)

//label IF_END1
(Output.Output.printChar$IF_END1)

//label IF_END0
(Output.Output.printChar$IF_END0)

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

//function Output.printString 2
(Output.printString)
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

//call String.length 1

//Generate return label and push it on the stack
@String.length$ret.117
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
@String.length
0;JMP

//Inject return address label
(String.length$ret.117)

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

//label WHILE_EXP0
(Output.Output.printString$WHILE_EXP0)

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
@LOWER.Output.1754
D;JLT
@NOTLOWER.Output.1754
D;JGE
(LOWER.Output.1754)
D=-1
@AFTER.Output.1754
0;JMP
(NOTLOWER.Output.1754)
D=0
(AFTER.Output.1754)
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
@Output.Output.printString$WHILE_END0
D;JNE

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

//call String.charAt 2

//Generate return label and push it on the stack
@String.charAt$ret.118
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
@String.charAt
0;JMP

//Inject return address label
(String.charAt$ret.118)

//call Output.printChar 1

//Generate return label and push it on the stack
@Output.printChar$ret.119
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
@Output.printChar
0;JMP

//Inject return address label
(Output.printChar$ret.119)

//pop temp 0
@SP
M=M-1
A=M
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

//goto WHILE_EXP0
@Output.Output.printString$WHILE_EXP0
0;JMP

//label WHILE_END0
(Output.Output.printString$WHILE_END0)

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

//function Output.printInt 0
(Output.printInt)
@0
D=A

//push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//call String.setInt 2

//Generate return label and push it on the stack
@String.setInt$ret.120
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
@String.setInt
0;JMP

//Inject return address label
(String.setInt$ret.120)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push static 3
@Output.3
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Output.printString 1

//Generate return label and push it on the stack
@Output.printString$ret.121
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
(Output.printString$ret.121)

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

//function Output.println 0
(Output.println)
@0
D=A

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 352
@352
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

//push static 0
@Output.0
D=M
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

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push constant 0
@0
D=A
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

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 8128
@8128
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
@EQUAL.Output.1794
D;JEQ
@NOTEQUAL.Output.1794
D;JNE
(EQUAL.Output.1794)
D=-1
@AFTER.Output.1794
0;JMP
(NOTEQUAL.Output.1794)
D=0
(AFTER.Output.1794)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.Output.println$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Output.Output.println$IF_FALSE0
0;JMP

//label IF_TRUE0
(Output.Output.println$IF_TRUE0)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//label IF_FALSE0
(Output.Output.println$IF_FALSE0)

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

//function Output.backSpace 0
(Output.backSpace)
@0
D=A

//push static 2
@Output.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Output.Output.backSpace$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Output.Output.backSpace$IF_FALSE0
0;JMP

//label IF_TRUE0
(Output.Output.backSpace$IF_TRUE0)

//push static 0
@Output.0
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@GREATER.Output.1810
D;JGT
@NOTGREATER.Output.1810
D;JLE
(GREATER.Output.1810)
D=-1
@AFTER.Output.1810
0;JMP
(NOTGREATER.Output.1810)
D=0
(AFTER.Output.1810)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Output.Output.backSpace$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Output.Output.backSpace$IF_FALSE1
0;JMP

//label IF_TRUE1
(Output.Output.backSpace$IF_TRUE1)

//push static 0
@Output.0
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

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push static 1
@Output.1
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

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//goto IF_END1
@Output.Output.backSpace$IF_END1
0;JMP

//label IF_FALSE1
(Output.Output.backSpace$IF_FALSE1)

//push constant 31
@31
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Output.0
M=D

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
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
@EQUAL.Output.1828
D;JEQ
@NOTEQUAL.Output.1828
D;JNE
(EQUAL.Output.1828)
D=-1
@AFTER.Output.1828
0;JMP
(NOTEQUAL.Output.1828)
D=0
(AFTER.Output.1828)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@Output.Output.backSpace$IF_TRUE2
D;JNE

//goto IF_FALSE2
@Output.Output.backSpace$IF_FALSE2
0;JMP

//label IF_TRUE2
(Output.Output.backSpace$IF_TRUE2)

//push constant 8128
@8128
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//label IF_FALSE2
(Output.Output.backSpace$IF_FALSE2)

//push static 1
@Output.1
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 321
@321
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

//pop static 1
@SP
M=M-1
A=M
D=M
@Output.1
M=D

//label IF_END1
(Output.Output.backSpace$IF_END1)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//goto IF_END0
@Output.Output.backSpace$IF_END0
0;JMP

//label IF_FALSE0
(Output.Output.backSpace$IF_FALSE0)

//push constant 0
@0
D=A
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

//pop static 2
@SP
M=M-1
A=M
D=M
@Output.2
M=D

//label IF_END0
(Output.Output.backSpace$IF_END0)

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.drawChar 1

//Generate return label and push it on the stack
@Output.drawChar$ret.122
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
@Output.drawChar
0;JMP

//Inject return address label
(Output.drawChar$ret.122)

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

//function Keyboard.init 0
(Keyboard.init)
@0
D=A

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

//function Keyboard.keyPressed 0
(Keyboard.keyPressed)
@0
D=A

//push constant 24576
@24576
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Memory.peek 1

//Generate return label and push it on the stack
@Memory.peek$ret.123
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
@Memory.peek
0;JMP

//Inject return address label
(Memory.peek$ret.123)

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

//function Keyboard.readChar 2
(Keyboard.readChar)
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.printChar 1

//Generate return label and push it on the stack
@Output.printChar$ret.124
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
@Output.printChar
0;JMP

//Inject return address label
(Output.printChar$ret.124)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label WHILE_EXP0
(Keyboard.Keyboard.readChar$WHILE_EXP0)

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

//push constant 0
@0
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
@EQUAL.Keyboard.1868
D;JEQ
@NOTEQUAL.Keyboard.1868
D;JNE
(EQUAL.Keyboard.1868)
D=-1
@AFTER.Keyboard.1868
0;JMP
(NOTEQUAL.Keyboard.1868)
D=0
(AFTER.Keyboard.1868)
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

//push constant 0
@0
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
@GREATER.Keyboard.1871
D;JGT
@NOTGREATER.Keyboard.1871
D;JLE
(GREATER.Keyboard.1871)
D=-1
@AFTER.Keyboard.1871
0;JMP
(NOTGREATER.Keyboard.1871)
D=0
(AFTER.Keyboard.1871)
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

//if-goto WHILE_END0
@SP
M=M-1
A=M
D=M
@Keyboard.Keyboard.readChar$WHILE_END0
D;JNE

//call Keyboard.keyPressed 0

//Generate return label and push it on the stack
@Keyboard.keyPressed$ret.125
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
@Keyboard.keyPressed
0;JMP

//Inject return address label
(Keyboard.keyPressed$ret.125)

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

//push constant 0
@0
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
@GREATER.Keyboard.1879
D;JGT
@NOTGREATER.Keyboard.1879
D;JLE
(GREATER.Keyboard.1879)
D=-1
@AFTER.Keyboard.1879
0;JMP
(NOTGREATER.Keyboard.1879)
D=0
(AFTER.Keyboard.1879)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Keyboard.Keyboard.readChar$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Keyboard.Keyboard.readChar$IF_FALSE0
0;JMP

//label IF_TRUE0
(Keyboard.Keyboard.readChar$IF_TRUE0)

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

//label IF_FALSE0
(Keyboard.Keyboard.readChar$IF_FALSE0)

//goto WHILE_EXP0
@Keyboard.Keyboard.readChar$WHILE_EXP0
0;JMP

//label WHILE_END0
(Keyboard.Keyboard.readChar$WHILE_END0)

//call String.backSpace 0

//Generate return label and push it on the stack
@String.backSpace$ret.126
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
@String.backSpace
0;JMP

//Inject return address label
(String.backSpace$ret.126)

//call Output.printChar 1

//Generate return label and push it on the stack
@Output.printChar$ret.127
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
@Output.printChar
0;JMP

//Inject return address label
(Output.printChar$ret.127)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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

//call Output.printChar 1

//Generate return label and push it on the stack
@Output.printChar$ret.128
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
@Output.printChar
0;JMP

//Inject return address label
(Output.printChar$ret.128)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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

//function Keyboard.readLine 5
(Keyboard.readLine)
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
@SP
A=M
M=D
@SP
M=M+1

//push constant 80
@80
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//Generate return label and push it on the stack
@String.new$ret.129
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
(String.new$ret.129)

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

//call Output.printString 1

//Generate return label and push it on the stack
@Output.printString$ret.130
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
(Output.printString$ret.130)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call String.newLine 0

//Generate return label and push it on the stack
@String.newLine$ret.131
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
@String.newLine
0;JMP

//Inject return address label
(String.newLine$ret.131)

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

//call String.backSpace 0

//Generate return label and push it on the stack
@String.backSpace$ret.132
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
@String.backSpace
0;JMP

//Inject return address label
(String.backSpace$ret.132)

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
(Keyboard.Keyboard.readLine$WHILE_EXP0)

//push local 4
@4
D=A
@LCL
A=D+M
D=M
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
@Keyboard.Keyboard.readLine$WHILE_END0
D;JNE

//call Keyboard.readChar 0

//Generate return label and push it on the stack
@Keyboard.readChar$ret.133
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
@Keyboard.readChar
0;JMP

//Inject return address label
(Keyboard.readChar$ret.133)

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
@EQUAL.Keyboard.1916
D;JEQ
@NOTEQUAL.Keyboard.1916
D;JNE
(EQUAL.Keyboard.1916)
D=-1
@AFTER.Keyboard.1916
0;JMP
(NOTEQUAL.Keyboard.1916)
D=0
(AFTER.Keyboard.1916)
@SP
A=M
M=D
@SP
M=M+1

//pop local 4
@4
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

//push local 4
@4
D=A
@LCL
A=D+M
D=M
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Keyboard.Keyboard.readLine$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Keyboard.Keyboard.readLine$IF_FALSE0
0;JMP

//label IF_TRUE0
(Keyboard.Keyboard.readLine$IF_TRUE0)

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
@EQUAL.Keyboard.1925
D;JEQ
@NOTEQUAL.Keyboard.1925
D;JNE
(EQUAL.Keyboard.1925)
D=-1
@AFTER.Keyboard.1925
0;JMP
(NOTEQUAL.Keyboard.1925)
D=0
(AFTER.Keyboard.1925)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Keyboard.Keyboard.readLine$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Keyboard.Keyboard.readLine$IF_FALSE1
0;JMP

//label IF_TRUE1
(Keyboard.Keyboard.readLine$IF_TRUE1)

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

//call String.eraseLastChar 1

//Generate return label and push it on the stack
@String.eraseLastChar$ret.134
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
@String.eraseLastChar
0;JMP

//Inject return address label
(String.eraseLastChar$ret.134)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto IF_END1
@Keyboard.Keyboard.readLine$IF_END1
0;JMP

//label IF_FALSE1
(Keyboard.Keyboard.readLine$IF_FALSE1)

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

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.135
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
(String.appendChar$ret.135)

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

//label IF_END1
(Keyboard.Keyboard.readLine$IF_END1)

//label IF_FALSE0
(Keyboard.Keyboard.readLine$IF_FALSE0)

//goto WHILE_EXP0
@Keyboard.Keyboard.readLine$WHILE_EXP0
0;JMP

//label WHILE_END0
(Keyboard.Keyboard.readLine$WHILE_END0)

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

//function Keyboard.readInt 2
(Keyboard.readInt)
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

//call Keyboard.readLine 1

//Generate return label and push it on the stack
@Keyboard.readLine$ret.136
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
@Keyboard.readLine
0;JMP

//Inject return address label
(Keyboard.readLine$ret.136)

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

//call String.intValue 1

//Generate return label and push it on the stack
@String.intValue$ret.137
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
@String.intValue
0;JMP

//Inject return address label
(String.intValue$ret.137)

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

//call String.dispose 1

//Generate return label and push it on the stack
@String.dispose$ret.138
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
@String.dispose
0;JMP

//Inject return address label
(String.dispose$ret.138)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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

//function Array.new 0
(Array.new)
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

//push constant 0
@0
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
@GREATER.Array.1960
D;JGT
@NOTGREATER.Array.1960
D;JLE
(GREATER.Array.1960)
D=-1
@AFTER.Array.1960
0;JMP
(NOTGREATER.Array.1960)
D=0
(AFTER.Array.1960)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Array.Array.new$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Array.Array.new$IF_FALSE0
0;JMP

//label IF_TRUE0
(Array.Array.new$IF_TRUE0)

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.139
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.139)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Array.Array.new$IF_FALSE0)

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

//call Memory.alloc 1

//Generate return label and push it on the stack
@Memory.alloc$ret.140
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
@Memory.alloc
0;JMP

//Inject return address label
(Memory.alloc$ret.140)

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

//function Array.dispose 0
(Array.dispose)
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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Memory.deAlloc 1

//Generate return label and push it on the stack
@Memory.deAlloc$ret.141
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
@Memory.deAlloc
0;JMP

//Inject return address label
(Memory.deAlloc$ret.141)

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

//function String.new 0
(String.new)
@0
D=A

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Memory.alloc 1

//Generate return label and push it on the stack
@Memory.alloc$ret.142
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
@Memory.alloc
0;JMP

//Inject return address label
(Memory.alloc$ret.142)

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

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

//push constant 0
@0
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
@LOWER.String.1987
D;JLT
@NOTLOWER.String.1987
D;JGE
(LOWER.String.1987)
D=-1
@AFTER.String.1987
0;JMP
(NOTLOWER.String.1987)
D=0
(AFTER.String.1987)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.String.new$IF_TRUE0
D;JNE

//goto IF_FALSE0
@String.String.new$IF_FALSE0
0;JMP

//label IF_TRUE0
(String.String.new$IF_TRUE0)

//push constant 14
@14
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.143
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.143)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(String.String.new$IF_FALSE0)

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

//push constant 0
@0
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
@GREATER.String.1997
D;JGT
@NOTGREATER.String.1997
D;JLE
(GREATER.String.1997)
D=-1
@AFTER.String.1997
0;JMP
(NOTGREATER.String.1997)
D=0
(AFTER.String.1997)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@String.String.new$IF_TRUE1
D;JNE

//goto IF_FALSE1
@String.String.new$IF_FALSE1
0;JMP

//label IF_TRUE1
(String.String.new$IF_TRUE1)

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

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.144
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
(Array.new$ret.144)

//pop this 1
@1
D=A
@THIS
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

//label IF_FALSE1
(String.String.new$IF_FALSE1)

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

//pop this 0
@0
D=A
@THIS
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

//pop this 2
@2
D=A
@THIS
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

//push pointer 0
@THIS
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

//function String.dispose 0
(String.dispose)
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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@GREATER.String.2016
D;JGT
@NOTGREATER.String.2016
D;JLE
(GREATER.String.2016)
D=-1
@AFTER.String.2016
0;JMP
(NOTGREATER.String.2016)
D=0
(AFTER.String.2016)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.String.dispose$IF_TRUE0
D;JNE

//goto IF_FALSE0
@String.String.dispose$IF_FALSE0
0;JMP

//label IF_TRUE0
(String.String.dispose$IF_TRUE0)

//push this 1
@1
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Array.dispose 1

//Generate return label and push it on the stack
@Array.dispose$ret.145
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
@Array.dispose
0;JMP

//Inject return address label
(Array.dispose$ret.145)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(String.String.dispose$IF_FALSE0)

//push pointer 0
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Memory.deAlloc 1

//Generate return label and push it on the stack
@Memory.deAlloc$ret.146
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
@Memory.deAlloc
0;JMP

//Inject return address label
(Memory.deAlloc$ret.146)

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

//function String.length 0
(String.length)
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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push this 2
@2
D=A
@THIS
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

//function String.charAt 0
(String.charAt)
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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.String.2039
D;JLT
@NOTLOWER.String.2039
D;JGE
(LOWER.String.2039)
D=-1
@AFTER.String.2039
0;JMP
(NOTLOWER.String.2039)
D=0
(AFTER.String.2039)
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=D+M
D=M
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
@GREATER.String.2042
D;JGT
@NOTGREATER.String.2042
D;JLE
(GREATER.String.2042)
D=-1
@AFTER.String.2042
0;JMP
(NOTGREATER.String.2042)
D=0
(AFTER.String.2042)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=D+M
D=M
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
@EQUAL.String.2046
D;JEQ
@NOTEQUAL.String.2046
D;JNE
(EQUAL.String.2046)
D=-1
@AFTER.String.2046
0;JMP
(NOTEQUAL.String.2046)
D=0
(AFTER.String.2046)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.String.charAt$IF_TRUE0
D;JNE

//goto IF_FALSE0
@String.String.charAt$IF_FALSE0
0;JMP

//label IF_TRUE0
(String.String.charAt$IF_TRUE0)

//push constant 15
@15
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.147
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.147)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(String.String.charAt$IF_FALSE0)

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
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

//function String.setCharAt 0
(String.setCharAt)
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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.String.2066
D;JLT
@NOTLOWER.String.2066
D;JGE
(LOWER.String.2066)
D=-1
@AFTER.String.2066
0;JMP
(NOTLOWER.String.2066)
D=0
(AFTER.String.2066)
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=D+M
D=M
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
@GREATER.String.2069
D;JGT
@NOTGREATER.String.2069
D;JLE
(GREATER.String.2069)
D=-1
@AFTER.String.2069
0;JMP
(NOTGREATER.String.2069)
D=0
(AFTER.String.2069)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 2
@2
D=A
@THIS
A=D+M
D=M
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
@EQUAL.String.2073
D;JEQ
@NOTEQUAL.String.2073
D;JNE
(EQUAL.String.2073)
D=-1
@AFTER.String.2073
0;JMP
(NOTEQUAL.String.2073)
D=0
(AFTER.String.2073)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.String.setCharAt$IF_TRUE0
D;JNE

//goto IF_FALSE0
@String.String.setCharAt$IF_FALSE0
0;JMP

//label IF_TRUE0
(String.String.setCharAt$IF_TRUE0)

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.148
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.148)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(String.String.setCharAt$IF_FALSE0)

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//function String.appendChar 0
(String.appendChar)
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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 0
@0
D=A
@THIS
A=D+M
D=M
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
@EQUAL.String.2097
D;JEQ
@NOTEQUAL.String.2097
D;JNE
(EQUAL.String.2097)
D=-1
@AFTER.String.2097
0;JMP
(NOTEQUAL.String.2097)
D=0
(AFTER.String.2097)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.String.appendChar$IF_TRUE0
D;JNE

//goto IF_FALSE0
@String.String.appendChar$IF_FALSE0
0;JMP

//label IF_TRUE0
(String.String.appendChar$IF_TRUE0)

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.149
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.149)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(String.String.appendChar$IF_FALSE0)

//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push this 2
@2
D=A
@THIS
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

//pop this 2
@2
D=A
@THIS
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

//push pointer 0
@THIS
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

//function String.eraseLastChar 0
(String.eraseLastChar)
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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@EQUAL.String.2124
D;JEQ
@NOTEQUAL.String.2124
D;JNE
(EQUAL.String.2124)
D=-1
@AFTER.String.2124
0;JMP
(NOTEQUAL.String.2124)
D=0
(AFTER.String.2124)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.String.eraseLastChar$IF_TRUE0
D;JNE

//goto IF_FALSE0
@String.String.eraseLastChar$IF_FALSE0
0;JMP

//label IF_TRUE0
(String.String.eraseLastChar$IF_TRUE0)

//push constant 18
@18
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.150
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.150)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(String.String.eraseLastChar$IF_FALSE0)

//push this 2
@2
D=A
@THIS
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

//pop this 2
@2
D=A
@THIS
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

//function String.intValue 5
(String.intValue)
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
@SP
A=M
M=D
@SP
M=M+1

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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@EQUAL.String.2143
D;JEQ
@NOTEQUAL.String.2143
D;JNE
(EQUAL.String.2143)
D=-1
@AFTER.String.2143
0;JMP
(NOTEQUAL.String.2143)
D=0
(AFTER.String.2143)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.String.intValue$IF_TRUE0
D;JNE

//goto IF_FALSE0
@String.String.intValue$IF_FALSE0
0;JMP

//label IF_TRUE0
(String.String.intValue$IF_TRUE0)

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

//label IF_FALSE0
(String.String.intValue$IF_FALSE0)

//push constant 0
@0
D=A
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
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

//push constant 45
@45
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
@EQUAL.String.2159
D;JEQ
@NOTEQUAL.String.2159
D;JNE
(EQUAL.String.2159)
D=-1
@AFTER.String.2159
0;JMP
(NOTEQUAL.String.2159)
D=0
(AFTER.String.2159)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@String.String.intValue$IF_TRUE1
D;JNE

//goto IF_FALSE1
@String.String.intValue$IF_FALSE1
0;JMP

//label IF_TRUE1
(String.String.intValue$IF_TRUE1)

//push constant 0
@0
D=A
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

//pop local 4
@4
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

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//label IF_FALSE1
(String.String.intValue$IF_FALSE1)

//label WHILE_EXP0
(String.String.intValue$WHILE_EXP0)

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

//push this 2
@2
D=A
@THIS
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
@LOWER.String.2172
D;JLT
@NOTLOWER.String.2172
D;JGE
(LOWER.String.2172)
D=-1
@AFTER.String.2172
0;JMP
(NOTLOWER.String.2172)
D=0
(AFTER.String.2172)
@SP
A=M
M=D
@SP
M=M+1

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
@String.String.intValue$WHILE_END0
D;JNE

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

//push this 1
@1
D=A
@THIS
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

//push constant 48
@48
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

//push constant 0
@0
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
@LOWER.String.2187
D;JLT
@NOTLOWER.String.2187
D;JGE
(LOWER.String.2187)
D=-1
@AFTER.String.2187
0;JMP
(NOTLOWER.String.2187)
D=0
(AFTER.String.2187)
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

//push constant 9
@9
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
@GREATER.String.2190
D;JGT
@NOTGREATER.String.2190
D;JLE
(GREATER.String.2190)
D=-1
@AFTER.String.2190
0;JMP
(NOTGREATER.String.2190)
D=0
(AFTER.String.2190)
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

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@String.String.intValue$IF_TRUE2
D;JNE

//goto IF_FALSE2
@String.String.intValue$IF_FALSE2
0;JMP

//label IF_TRUE2
(String.String.intValue$IF_TRUE2)

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

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.151
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.151)

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

//label IF_FALSE2
(String.String.intValue$IF_FALSE2)

//goto WHILE_EXP0
@String.String.intValue$WHILE_EXP0
0;JMP

//label WHILE_END0
(String.String.intValue$WHILE_END0)

//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@String.String.intValue$IF_TRUE3
D;JNE

//goto IF_FALSE3
@String.String.intValue$IF_FALSE3
0;JMP

//label IF_TRUE3
(String.String.intValue$IF_TRUE3)

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

//label IF_FALSE3
(String.String.intValue$IF_FALSE3)

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

//function String.setInt 4
(String.setInt)
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

//pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

//push this 0
@0
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@EQUAL.String.2226
D;JEQ
@NOTEQUAL.String.2226
D;JNE
(EQUAL.String.2226)
D=-1
@AFTER.String.2226
0;JMP
(NOTEQUAL.String.2226)
D=0
(AFTER.String.2226)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@String.String.setInt$IF_TRUE0
D;JNE

//goto IF_FALSE0
@String.String.setInt$IF_FALSE0
0;JMP

//label IF_TRUE0
(String.String.setInt$IF_TRUE0)

//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.152
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.152)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(String.String.setInt$IF_FALSE0)

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.153
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
(Array.new$ret.153)

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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.String.2239
D;JLT
@NOTLOWER.String.2239
D;JGE
(LOWER.String.2239)
D=-1
@AFTER.String.2239
0;JMP
(NOTLOWER.String.2239)
D=0
(AFTER.String.2239)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@String.String.setInt$IF_TRUE1
D;JNE

//goto IF_FALSE1
@String.String.setInt$IF_FALSE1
0;JMP

//label IF_TRUE1
(String.String.setInt$IF_TRUE1)

//push constant 0
@0
D=A
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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

//pop argument 1
@1
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

//label IF_FALSE1
(String.String.setInt$IF_FALSE1)

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//label WHILE_EXP0
(String.String.setInt$WHILE_EXP0)

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

//push constant 0
@0
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
@GREATER.String.2255
D;JGT
@NOTGREATER.String.2255
D;JLE
(GREATER.String.2255)
D=-1
@AFTER.String.2255
0;JMP
(NOTGREATER.String.2255)
D=0
(AFTER.String.2255)
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
@String.String.setInt$WHILE_END0
D;JNE

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.154
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
(Math.divide$ret.154)

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

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
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

//push constant 10
@10
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.155
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.155)

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

//pop argument 1
@1
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

//goto WHILE_EXP0
@String.String.setInt$WHILE_EXP0
0;JMP

//label WHILE_END0
(String.String.setInt$WHILE_END0)

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

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@String.String.setInt$IF_TRUE2
D;JNE

//goto IF_FALSE2
@String.String.setInt$IF_FALSE2
0;JMP

//label IF_TRUE2
(String.String.setInt$IF_TRUE2)

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

//push constant 45
@45
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//label IF_FALSE2
(String.String.setInt$IF_FALSE2)

//push this 0
@0
D=A
@THIS
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
@LOWER.String.2303
D;JLT
@NOTLOWER.String.2303
D;JGE
(LOWER.String.2303)
D=-1
@AFTER.String.2303
0;JMP
(NOTLOWER.String.2303)
D=0
(AFTER.String.2303)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@String.String.setInt$IF_TRUE3
D;JNE

//goto IF_FALSE3
@String.String.setInt$IF_FALSE3
0;JMP

//label IF_TRUE3
(String.String.setInt$IF_TRUE3)

//push constant 19
@19
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.156
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.156)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE3
(String.String.setInt$IF_FALSE3)

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

//push constant 0
@0
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
@EQUAL.String.2313
D;JEQ
@NOTEQUAL.String.2313
D;JNE
(EQUAL.String.2313)
D=-1
@AFTER.String.2313
0;JMP
(NOTEQUAL.String.2313)
D=0
(AFTER.String.2313)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@String.String.setInt$IF_TRUE4
D;JNE

//goto IF_FALSE4
@String.String.setInt$IF_FALSE4
0;JMP

//label IF_TRUE4
(String.String.setInt$IF_TRUE4)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
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

//push constant 48
@48
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
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

//goto IF_END4
@String.String.setInt$IF_END4
0;JMP

//label IF_FALSE4
(String.String.setInt$IF_FALSE4)

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop this 2
@2
D=A
@THIS
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

//label WHILE_EXP1
(String.String.setInt$WHILE_EXP1)

//push this 2
@2
D=A
@THIS
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
@LOWER.String.2334
D;JLT
@NOTLOWER.String.2334
D;JGE
(LOWER.String.2334)
D=-1
@AFTER.String.2334
0;JMP
(NOTLOWER.String.2334)
D=0
(AFTER.String.2334)
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

//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@String.String.setInt$WHILE_END1
D;JNE

//push this 2
@2
D=A
@THIS
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push this 1
@1
D=A
@THIS
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

//push this 2
@2
D=A
@THIS
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

//push this 2
@2
D=A
@THIS
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

//pop this 2
@2
D=A
@THIS
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

//goto WHILE_EXP1
@String.String.setInt$WHILE_EXP1
0;JMP

//label WHILE_END1
(String.String.setInt$WHILE_END1)

//label IF_END4
(String.String.setInt$IF_END4)

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

//call Array.dispose 1

//Generate return label and push it on the stack
@Array.dispose$ret.157
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
@Array.dispose
0;JMP

//Inject return address label
(Array.dispose$ret.157)

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

//function String.newLine 0
(String.newLine)
@0
D=A

//push constant 128
@128
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

//function String.backSpace 0
(String.backSpace)
@0
D=A

//push constant 129
@129
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

//function String.doubleQuote 0
(String.doubleQuote)
@0
D=A

//push constant 34
@34
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

//function Memory.init 0
(Memory.init)
@0
D=A

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 0
@SP
M=M-1
A=M
D=M
@Memory.0
M=D

//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Memory.0
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

//push constant 14334
@14334
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 2049
@2049
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Memory.0
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

//push constant 2050
@2050
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//function Memory.peek 0
(Memory.peek)
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

//push static 0
@Memory.0
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

//function Memory.poke 0
(Memory.poke)
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

//push static 0
@Memory.0
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//function Memory.alloc 2
(Memory.alloc)
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

//push constant 0
@0
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
@LOWER.Memory.2417
D;JLT
@NOTLOWER.Memory.2417
D;JGE
(LOWER.Memory.2417)
D=-1
@AFTER.Memory.2417
0;JMP
(NOTLOWER.Memory.2417)
D=0
(AFTER.Memory.2417)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Memory.Memory.alloc$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Memory.Memory.alloc$IF_FALSE0
0;JMP

//label IF_TRUE0
(Memory.Memory.alloc$IF_TRUE0)

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.158
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.158)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Memory.Memory.alloc$IF_FALSE0)

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

//push constant 0
@0
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
@EQUAL.Memory.2427
D;JEQ
@NOTEQUAL.Memory.2427
D;JNE
(EQUAL.Memory.2427)
D=-1
@AFTER.Memory.2427
0;JMP
(NOTEQUAL.Memory.2427)
D=0
(AFTER.Memory.2427)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Memory.Memory.alloc$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Memory.Memory.alloc$IF_FALSE1
0;JMP

//label IF_TRUE1
(Memory.Memory.alloc$IF_TRUE1)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop argument 0
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

//label IF_FALSE1
(Memory.Memory.alloc$IF_FALSE1)

//push constant 2048
@2048
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//label WHILE_EXP0
(Memory.Memory.alloc$WHILE_EXP0)

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

//push constant 16383
@16383
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
@LOWER.Memory.2439
D;JLT
@NOTLOWER.Memory.2439
D;JGE
(LOWER.Memory.2439)
D=-1
@AFTER.Memory.2439
0;JMP
(NOTLOWER.Memory.2439)
D=0
(AFTER.Memory.2439)
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
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
@LOWER.Memory.2446
D;JLT
@NOTLOWER.Memory.2446
D;JGE
(LOWER.Memory.2446)
D=-1
@AFTER.Memory.2446
0;JMP
(NOTLOWER.Memory.2446)
D=0
(AFTER.Memory.2446)
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
@Memory.Memory.alloc$WHILE_END0
D;JNE

//push constant 1
@1
D=A
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

//push constant 0
@0
D=A
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

//push constant 0
@0
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
@EQUAL.Memory.2462
D;JEQ
@NOTEQUAL.Memory.2462
D;JNE
(EQUAL.Memory.2462)
D=-1
@AFTER.Memory.2462
0;JMP
(NOTEQUAL.Memory.2462)
D=0
(AFTER.Memory.2462)
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

//push constant 16382
@16382
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
@GREATER.Memory.2465
D;JGT
@NOTGREATER.Memory.2465
D;JLE
(GREATER.Memory.2465)
D=-1
@AFTER.Memory.2465
0;JMP
(NOTGREATER.Memory.2465)
D=0
(AFTER.Memory.2465)
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

//push constant 0
@0
D=A
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

//push constant 0
@0
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
@EQUAL.Memory.2473
D;JEQ
@NOTEQUAL.Memory.2473
D;JNE
(EQUAL.Memory.2473)
D=-1
@AFTER.Memory.2473
0;JMP
(NOTEQUAL.Memory.2473)
D=0
(AFTER.Memory.2473)
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

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@Memory.Memory.alloc$IF_TRUE2
D;JNE

//goto IF_FALSE2
@Memory.Memory.alloc$IF_FALSE2
0;JMP

//label IF_TRUE2
(Memory.Memory.alloc$IF_TRUE2)

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

//goto IF_END2
@Memory.Memory.alloc$IF_END2
0;JMP

//label IF_FALSE2
(Memory.Memory.alloc$IF_FALSE2)

//push constant 0
@0
D=A
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

//push constant 1
@1
D=A
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

//push constant 0
@0
D=A
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

//push constant 1
@1
D=A
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

//push constant 2
@2
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
@EQUAL.Memory.2510
D;JEQ
@NOTEQUAL.Memory.2510
D;JNE
(EQUAL.Memory.2510)
D=-1
@AFTER.Memory.2510
0;JMP
(NOTEQUAL.Memory.2510)
D=0
(AFTER.Memory.2510)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@Memory.Memory.alloc$IF_TRUE3
D;JNE

//goto IF_FALSE3
@Memory.Memory.alloc$IF_FALSE3
0;JMP

//label IF_TRUE3
(Memory.Memory.alloc$IF_TRUE3)

//push constant 1
@1
D=A
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

//push constant 2
@2
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

//goto IF_END3
@Memory.Memory.alloc$IF_END3
0;JMP

//label IF_FALSE3
(Memory.Memory.alloc$IF_FALSE3)

//push constant 1
@1
D=A
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

//push constant 1
@1
D=A
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

//label IF_END3
(Memory.Memory.alloc$IF_END3)

//label IF_END2
(Memory.Memory.alloc$IF_END2)

//goto WHILE_EXP0
@Memory.Memory.alloc$WHILE_EXP0
0;JMP

//label WHILE_END0
(Memory.Memory.alloc$WHILE_END0)

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

//push constant 16379
@16379
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
@GREATER.Memory.2546
D;JGT
@NOTGREATER.Memory.2546
D;JLE
(GREATER.Memory.2546)
D=-1
@AFTER.Memory.2546
0;JMP
(NOTGREATER.Memory.2546)
D=0
(AFTER.Memory.2546)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@Memory.Memory.alloc$IF_TRUE4
D;JNE

//goto IF_FALSE4
@Memory.Memory.alloc$IF_FALSE4
0;JMP

//label IF_TRUE4
(Memory.Memory.alloc$IF_TRUE4)

//push constant 6
@6
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.159
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.159)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE4
(Memory.Memory.alloc$IF_FALSE4)

//push constant 0
@0
D=A
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
@GREATER.Memory.2562
D;JGT
@NOTGREATER.Memory.2562
D;JLE
(GREATER.Memory.2562)
D=-1
@AFTER.Memory.2562
0;JMP
(NOTGREATER.Memory.2562)
D=0
(AFTER.Memory.2562)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE5
@SP
M=M-1
A=M
D=M
@Memory.Memory.alloc$IF_TRUE5
D;JNE

//goto IF_FALSE5
@Memory.Memory.alloc$IF_FALSE5
0;JMP

//label IF_TRUE5
(Memory.Memory.alloc$IF_TRUE5)

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

//push constant 0
@0
D=A
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

//push constant 1
@1
D=A
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

//push constant 2
@2
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
@EQUAL.Memory.2592
D;JEQ
@NOTEQUAL.Memory.2592
D;JNE
(EQUAL.Memory.2592)
D=-1
@AFTER.Memory.2592
0;JMP
(NOTEQUAL.Memory.2592)
D=0
(AFTER.Memory.2592)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE6
@SP
M=M-1
A=M
D=M
@Memory.Memory.alloc$IF_TRUE6
D;JNE

//goto IF_FALSE6
@Memory.Memory.alloc$IF_FALSE6
0;JMP

//label IF_TRUE6
(Memory.Memory.alloc$IF_TRUE6)

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

//push constant 3
@3
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

//push constant 4
@4
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

//goto IF_END6
@Memory.Memory.alloc$IF_END6
0;JMP

//label IF_FALSE6
(Memory.Memory.alloc$IF_FALSE6)

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

//push constant 3
@3
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

//push constant 1
@1
D=A
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

//label IF_END6
(Memory.Memory.alloc$IF_END6)

//push constant 1
@1
D=A
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

//push constant 2
@2
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

//label IF_FALSE5
(Memory.Memory.alloc$IF_FALSE5)

//push constant 0
@0
D=A
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 2
@2
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

//function Memory.deAlloc 2
(Memory.deAlloc)
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

//push constant 1
@1
D=A
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

//push constant 0
@0
D=A
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

//push constant 0
@0
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
@EQUAL.Memory.2669
D;JEQ
@NOTEQUAL.Memory.2669
D;JNE
(EQUAL.Memory.2669)
D=-1
@AFTER.Memory.2669
0;JMP
(NOTEQUAL.Memory.2669)
D=0
(AFTER.Memory.2669)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Memory.Memory.deAlloc$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Memory.Memory.deAlloc$IF_FALSE0
0;JMP

//label IF_TRUE0
(Memory.Memory.deAlloc$IF_TRUE0)

//push constant 0
@0
D=A
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

//push constant 1
@1
D=A
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

//goto IF_END0
@Memory.Memory.deAlloc$IF_END0
0;JMP

//label IF_FALSE0
(Memory.Memory.deAlloc$IF_FALSE0)

//push constant 0
@0
D=A
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

//push constant 1
@1
D=A
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

//push constant 0
@0
D=A
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

//push constant 1
@1
D=A
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

//push constant 2
@2
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
@EQUAL.Memory.2719
D;JEQ
@NOTEQUAL.Memory.2719
D;JNE
(EQUAL.Memory.2719)
D=-1
@AFTER.Memory.2719
0;JMP
(NOTEQUAL.Memory.2719)
D=0
(AFTER.Memory.2719)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Memory.Memory.deAlloc$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Memory.Memory.deAlloc$IF_FALSE1
0;JMP

//label IF_TRUE1
(Memory.Memory.deAlloc$IF_TRUE1)

//push constant 1
@1
D=A
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

//push constant 2
@2
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

//goto IF_END1
@Memory.Memory.deAlloc$IF_END1
0;JMP

//label IF_FALSE1
(Memory.Memory.deAlloc$IF_FALSE1)

//push constant 1
@1
D=A
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

//push constant 1
@1
D=A
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

//label IF_END1
(Memory.Memory.deAlloc$IF_END1)

//label IF_END0
(Memory.Memory.deAlloc$IF_END0)

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

//function Main.main 0
(Main.main)
@0
D=A

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//Generate return label and push it on the stack
@String.new$ret.160
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
(String.new$ret.160)

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
@String.appendChar$ret.161
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
(String.appendChar$ret.161)

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
@String.appendChar$ret.162
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
(String.appendChar$ret.162)

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.163
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
(String.appendChar$ret.163)

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.164
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
(String.appendChar$ret.164)

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
@String.appendChar$ret.165
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
(String.appendChar$ret.165)

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
@String.appendChar$ret.166
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
(String.appendChar$ret.166)

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
@String.appendChar$ret.167
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
(String.appendChar$ret.167)

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
@String.appendChar$ret.168
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
(String.appendChar$ret.168)

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
@String.appendChar$ret.169
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
(String.appendChar$ret.169)

//push constant 108
@108
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.170
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
(String.appendChar$ret.170)

//push constant 100
@100
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.171
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
(String.appendChar$ret.171)

//push constant 33
@33
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.appendChar 2

//Generate return label and push it on the stack
@String.appendChar$ret.172
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
(String.appendChar$ret.172)

//call Output.printString 1

//Generate return label and push it on the stack
@Output.printString$ret.173
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
(Output.printString$ret.173)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Output.println 0

//Generate return label and push it on the stack
@Output.println$ret.174
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
@Output.println
0;JMP

//Inject return address label
(Output.println$ret.174)

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

//function Sys.init 0
(Sys.init)
@0
D=A

//call Memory.init 0

//Generate return label and push it on the stack
@Memory.init$ret.175
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
@Memory.init
0;JMP

//Inject return address label
(Memory.init$ret.175)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Math.init 0

//Generate return label and push it on the stack
@Math.init$ret.176
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
@Math.init
0;JMP

//Inject return address label
(Math.init$ret.176)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Screen.init 0

//Generate return label and push it on the stack
@Screen.init$ret.177
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
@Screen.init
0;JMP

//Inject return address label
(Screen.init$ret.177)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Output.init 0

//Generate return label and push it on the stack
@Output.init$ret.178
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
@Output.init
0;JMP

//Inject return address label
(Output.init$ret.178)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Keyboard.init 0

//Generate return label and push it on the stack
@Keyboard.init$ret.179
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
@Keyboard.init
0;JMP

//Inject return address label
(Keyboard.init$ret.179)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Main.main 0

//Generate return label and push it on the stack
@Main.main$ret.180
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
@Main.main
0;JMP

//Inject return address label
(Main.main$ret.180)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Sys.halt 0

//Generate return label and push it on the stack
@Sys.halt$ret.181
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
@Sys.halt
0;JMP

//Inject return address label
(Sys.halt$ret.181)

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

//function Sys.halt 0
(Sys.halt)
@0
D=A

//label WHILE_EXP0
(Sys.Sys.halt$WHILE_EXP0)

//push constant 0
@0
D=A
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
@Sys.Sys.halt$WHILE_END0
D;JNE

//goto WHILE_EXP0
@Sys.Sys.halt$WHILE_EXP0
0;JMP

//label WHILE_END0
(Sys.Sys.halt$WHILE_END0)

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

//function Sys.wait 1
(Sys.wait)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 0
@0
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
@LOWER.Sys.2816
D;JLT
@NOTLOWER.Sys.2816
D;JGE
(LOWER.Sys.2816)
D=-1
@AFTER.Sys.2816
0;JMP
(NOTLOWER.Sys.2816)
D=0
(AFTER.Sys.2816)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Sys.Sys.wait$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Sys.Sys.wait$IF_FALSE0
0;JMP

//label IF_TRUE0
(Sys.Sys.wait$IF_TRUE0)

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.182
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.182)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Sys.Sys.wait$IF_FALSE0)

//label WHILE_EXP0
(Sys.Sys.wait$WHILE_EXP0)

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

//push constant 0
@0
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
@GREATER.Sys.2827
D;JGT
@NOTGREATER.Sys.2827
D;JLE
(GREATER.Sys.2827)
D=-1
@AFTER.Sys.2827
0;JMP
(NOTGREATER.Sys.2827)
D=0
(AFTER.Sys.2827)
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
@Sys.Sys.wait$WHILE_END0
D;JNE

//push constant 50
@50
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//label WHILE_EXP1
(Sys.Sys.wait$WHILE_EXP1)

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

//push constant 0
@0
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
@GREATER.Sys.2835
D;JGT
@NOTGREATER.Sys.2835
D;JLE
(GREATER.Sys.2835)
D=-1
@AFTER.Sys.2835
0;JMP
(NOTGREATER.Sys.2835)
D=0
(AFTER.Sys.2835)
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

//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@Sys.Sys.wait$WHILE_END1
D;JNE

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

//goto WHILE_EXP1
@Sys.Sys.wait$WHILE_EXP1
0;JMP

//label WHILE_END1
(Sys.Sys.wait$WHILE_END1)

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

//pop argument 0
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

//goto WHILE_EXP0
@Sys.Sys.wait$WHILE_EXP0
0;JMP

//label WHILE_END0
(Sys.Sys.wait$WHILE_END0)

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

//function Sys.error 0
(Sys.error)
@0
D=A

//push constant 69
@69
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.printChar 1

//Generate return label and push it on the stack
@Output.printChar$ret.183
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
@Output.printChar
0;JMP

//Inject return address label
(Output.printChar$ret.183)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.printChar 1

//Generate return label and push it on the stack
@Output.printChar$ret.184
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
@Output.printChar
0;JMP

//Inject return address label
(Output.printChar$ret.184)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 82
@82
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Output.printChar 1

//Generate return label and push it on the stack
@Output.printChar$ret.185
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
@Output.printChar
0;JMP

//Inject return address label
(Output.printChar$ret.185)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

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

//call Output.printInt 1

//Generate return label and push it on the stack
@Output.printInt$ret.186
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
(Output.printInt$ret.186)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//call Sys.halt 0

//Generate return label and push it on the stack
@Sys.halt$ret.187
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
@Sys.halt
0;JMP

//Inject return address label
(Sys.halt$ret.187)

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

//function Math.init 1
(Math.init)
@0
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

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.188
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
(Array.new$ret.188)

//pop static 1
@SP
M=M-1
A=M
D=M
@Math.1
M=D

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.189
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
(Array.new$ret.189)

//pop static 0
@SP
M=M-1
A=M
D=M
@Math.0
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Math.0
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

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//label WHILE_EXP0
(Math.Math.init$WHILE_EXP0)

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

//push constant 15
@15
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
@LOWER.Math.2888
D;JLT
@NOTLOWER.Math.2888
D;JGE
(LOWER.Math.2888)
D=-1
@AFTER.Math.2888
0;JMP
(NOTLOWER.Math.2888)
D=0
(AFTER.Math.2888)
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
@Math.Math.init$WHILE_END0
D;JNE

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

//push static 0
@Math.0
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

//push static 0
@Math.0
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

//push static 0
@Math.0
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

//goto WHILE_EXP0
@Math.Math.init$WHILE_EXP0
0;JMP

//label WHILE_END0
(Math.Math.init$WHILE_END0)

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

//function Math.abs 0
(Math.abs)
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

//push constant 0
@0
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
@LOWER.Math.2924
D;JLT
@NOTLOWER.Math.2924
D;JGE
(LOWER.Math.2924)
D=-1
@AFTER.Math.2924
0;JMP
(NOTLOWER.Math.2924)
D=0
(AFTER.Math.2924)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.Math.abs$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Math.Math.abs$IF_FALSE0
0;JMP

//label IF_TRUE0
(Math.Math.abs$IF_TRUE0)

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

//pop argument 0
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

//label IF_FALSE0
(Math.Math.abs$IF_FALSE0)

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

//function Math.multiply 5
(Math.multiply)
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
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 0
@0
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
@LOWER.Math.2937
D;JLT
@NOTLOWER.Math.2937
D;JGE
(LOWER.Math.2937)
D=-1
@AFTER.Math.2937
0;JMP
(NOTLOWER.Math.2937)
D=0
(AFTER.Math.2937)
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@GREATER.Math.2940
D;JGT
@NOTGREATER.Math.2940
D;JLE
(GREATER.Math.2940)
D=-1
@AFTER.Math.2940
0;JMP
(NOTGREATER.Math.2940)
D=0
(AFTER.Math.2940)
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

//push constant 0
@0
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
@GREATER.Math.2944
D;JGT
@NOTGREATER.Math.2944
D;JLE
(GREATER.Math.2944)
D=-1
@AFTER.Math.2944
0;JMP
(NOTGREATER.Math.2944)
D=0
(AFTER.Math.2944)
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.Math.2947
D;JLT
@NOTLOWER.Math.2947
D;JGE
(LOWER.Math.2947)
D=-1
@AFTER.Math.2947
0;JMP
(NOTLOWER.Math.2947)
D=0
(AFTER.Math.2947)
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

//pop local 4
@4
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

//call Math.abs 1

//Generate return label and push it on the stack
@Math.abs$ret.190
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
@Math.abs
0;JMP

//Inject return address label
(Math.abs$ret.190)

//pop argument 0
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.abs 1

//Generate return label and push it on the stack
@Math.abs$ret.191
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
@Math.abs
0;JMP

//Inject return address label
(Math.abs$ret.191)

//pop argument 1
@1
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

//push argument 1
@1
D=A
@ARG
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
@LOWER.Math.2959
D;JLT
@NOTLOWER.Math.2959
D;JGE
(LOWER.Math.2959)
D=-1
@AFTER.Math.2959
0;JMP
(NOTLOWER.Math.2959)
D=0
(AFTER.Math.2959)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.Math.multiply$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Math.Math.multiply$IF_FALSE0
0;JMP

//label IF_TRUE0
(Math.Math.multiply$IF_TRUE0)

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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 0
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

//pop argument 1
@1
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

//label IF_FALSE0
(Math.Math.multiply$IF_FALSE0)

//label WHILE_EXP0
(Math.Math.multiply$WHILE_EXP0)

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

//push argument 1
@1
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
@LOWER.Math.2977
D;JLT
@NOTLOWER.Math.2977
D;JGE
(LOWER.Math.2977)
D=-1
@AFTER.Math.2977
0;JMP
(NOTLOWER.Math.2977)
D=0
(AFTER.Math.2977)
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
@Math.Math.multiply$WHILE_END0
D;JNE

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

//push static 0
@Math.0
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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

//push constant 0
@0
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
@EQUAL.Math.2988
D;JEQ
@NOTEQUAL.Math.2988
D;JNE
(EQUAL.Math.2988)
D=-1
@AFTER.Math.2988
0;JMP
(NOTEQUAL.Math.2988)
D=0
(AFTER.Math.2988)
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

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Math.Math.multiply$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Math.Math.multiply$IF_FALSE1
0;JMP

//label IF_TRUE1
(Math.Math.multiply$IF_TRUE1)

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

//push static 0
@Math.0
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

//label IF_FALSE1
(Math.Math.multiply$IF_FALSE1)

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

//pop argument 0
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

//goto WHILE_EXP0
@Math.Math.multiply$WHILE_EXP0
0;JMP

//label WHILE_END0
(Math.Math.multiply$WHILE_END0)

//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@Math.Math.multiply$IF_TRUE2
D;JNE

//goto IF_FALSE2
@Math.Math.multiply$IF_FALSE2
0;JMP

//label IF_TRUE2
(Math.Math.multiply$IF_TRUE2)

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

//label IF_FALSE2
(Math.Math.multiply$IF_FALSE2)

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

//function Math.divide 4
(Math.divide)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@EQUAL.Math.3029
D;JEQ
@NOTEQUAL.Math.3029
D;JNE
(EQUAL.Math.3029)
D=-1
@AFTER.Math.3029
0;JMP
(NOTEQUAL.Math.3029)
D=0
(AFTER.Math.3029)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.Math.divide$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Math.Math.divide$IF_FALSE0
0;JMP

//label IF_TRUE0
(Math.Math.divide$IF_TRUE0)

//push constant 3
@3
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.192
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.192)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Math.Math.divide$IF_FALSE0)

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

//push constant 0
@0
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
@LOWER.Math.3039
D;JLT
@NOTLOWER.Math.3039
D;JGE
(LOWER.Math.3039)
D=-1
@AFTER.Math.3039
0;JMP
(NOTLOWER.Math.3039)
D=0
(AFTER.Math.3039)
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@GREATER.Math.3042
D;JGT
@NOTGREATER.Math.3042
D;JLE
(GREATER.Math.3042)
D=-1
@AFTER.Math.3042
0;JMP
(NOTGREATER.Math.3042)
D=0
(AFTER.Math.3042)
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

//push constant 0
@0
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
@GREATER.Math.3046
D;JGT
@NOTGREATER.Math.3046
D;JLE
(GREATER.Math.3046)
D=-1
@AFTER.Math.3046
0;JMP
(NOTGREATER.Math.3046)
D=0
(AFTER.Math.3046)
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.Math.3049
D;JLT
@NOTLOWER.Math.3049
D;JGE
(LOWER.Math.3049)
D=-1
@AFTER.Math.3049
0;JMP
(NOTLOWER.Math.3049)
D=0
(AFTER.Math.3049)
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 1
@Math.1
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.abs 1

//Generate return label and push it on the stack
@Math.abs$ret.193
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
@Math.abs
0;JMP

//Inject return address label
(Math.abs$ret.193)

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

//call Math.abs 1

//Generate return label and push it on the stack
@Math.abs$ret.194
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
@Math.abs
0;JMP

//Inject return address label
(Math.abs$ret.194)

//pop argument 0
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

//label WHILE_EXP0
(Math.Math.divide$WHILE_EXP0)

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

//push constant 15
@15
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
@LOWER.Math.3068
D;JLT
@NOTLOWER.Math.3068
D;JGE
(LOWER.Math.3068)
D=-1
@AFTER.Math.3068
0;JMP
(NOTLOWER.Math.3068)
D=0
(AFTER.Math.3068)
@SP
A=M
M=D
@SP
M=M+1

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
@Math.Math.divide$WHILE_END0
D;JNE

//push constant 32767
@32767
D=A
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

//push static 1
@Math.1
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

//push static 1
@Math.1
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
@LOWER.Math.3090
D;JLT
@NOTLOWER.Math.3090
D;JGE
(LOWER.Math.3090)
D=-1
@AFTER.Math.3090
0;JMP
(NOTLOWER.Math.3090)
D=0
(AFTER.Math.3090)
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

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Math.Math.divide$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Math.Math.divide$IF_FALSE1
0;JMP

//label IF_TRUE1
(Math.Math.divide$IF_TRUE1)

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

//push static 1
@Math.1
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

//push static 1
@Math.1
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

//push static 1
@Math.1
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

//push static 1
@Math.1
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
@GREATER.Math.3129
D;JGT
@NOTGREATER.Math.3129
D;JLE
(GREATER.Math.3129)
D=-1
@AFTER.Math.3129
0;JMP
(NOTGREATER.Math.3129)
D=0
(AFTER.Math.3129)
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

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@Math.Math.divide$IF_TRUE2
D;JNE

//goto IF_FALSE2
@Math.Math.divide$IF_FALSE2
0;JMP

//label IF_TRUE2
(Math.Math.divide$IF_TRUE2)

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

//label IF_FALSE2
(Math.Math.divide$IF_FALSE2)

//label IF_FALSE1
(Math.Math.divide$IF_FALSE1)

//goto WHILE_EXP0
@Math.Math.divide$WHILE_EXP0
0;JMP

//label WHILE_END0
(Math.Math.divide$WHILE_END0)

//label WHILE_EXP1
(Math.Math.divide$WHILE_EXP1)

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

//push constant 1
@1
D=A
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
@GREATER.Math.3148
D;JGT
@NOTGREATER.Math.3148
D;JLE
(GREATER.Math.3148)
D=-1
@AFTER.Math.3148
0;JMP
(NOTGREATER.Math.3148)
D=0
(AFTER.Math.3148)
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

//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@Math.Math.divide$WHILE_END1
D;JNE

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

//push static 1
@Math.1
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
@GREATER.Math.3161
D;JGT
@NOTGREATER.Math.3161
D;JLE
(GREATER.Math.3161)
D=-1
@AFTER.Math.3161
0;JMP
(NOTGREATER.Math.3161)
D=0
(AFTER.Math.3161)
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

//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@Math.Math.divide$IF_TRUE3
D;JNE

//goto IF_FALSE3
@Math.Math.divide$IF_FALSE3
0;JMP

//label IF_TRUE3
(Math.Math.divide$IF_TRUE3)

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

//push static 0
@Math.0
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

//push static 1
@Math.1
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

//pop argument 0
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

//label IF_FALSE3
(Math.Math.divide$IF_FALSE3)

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

//goto WHILE_EXP1
@Math.Math.divide$WHILE_EXP1
0;JMP

//label WHILE_END1
(Math.Math.divide$WHILE_END1)

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

//if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@Math.Math.divide$IF_TRUE4
D;JNE

//goto IF_FALSE4
@Math.Math.divide$IF_FALSE4
0;JMP

//label IF_TRUE4
(Math.Math.divide$IF_TRUE4)

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

//label IF_FALSE4
(Math.Math.divide$IF_FALSE4)

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

//function Math.sqrt 4
(Math.sqrt)
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

//push constant 0
@0
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
@LOWER.Math.3202
D;JLT
@NOTLOWER.Math.3202
D;JGE
(LOWER.Math.3202)
D=-1
@AFTER.Math.3202
0;JMP
(NOTLOWER.Math.3202)
D=0
(AFTER.Math.3202)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.Math.sqrt$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Math.Math.sqrt$IF_FALSE0
0;JMP

//label IF_TRUE0
(Math.Math.sqrt$IF_TRUE0)

//push constant 4
@4
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.195
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.195)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Math.Math.sqrt$IF_FALSE0)

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//label WHILE_EXP0
(Math.Math.sqrt$WHILE_EXP0)

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

//push constant 1
@1
D=A
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
@GREATER.Math.3216
D;JGT
@NOTGREATER.Math.3216
D;JLE
(GREATER.Math.3216)
D=-1
@AFTER.Math.3216
0;JMP
(NOTGREATER.Math.3216)
D=0
(AFTER.Math.3216)
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
@Math.Math.sqrt$WHILE_END0
D;JNE

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

//push static 0
@Math.0
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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.196
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.196)

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
@GREATER.Math.3233
D;JGT
@NOTGREATER.Math.3233
D;JLE
(GREATER.Math.3233)
D=-1
@AFTER.Math.3233
0;JMP
(NOTGREATER.Math.3233)
D=0
(AFTER.Math.3233)
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

//push constant 0
@0
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
@LOWER.Math.3237
D;JLT
@NOTLOWER.Math.3237
D;JGE
(LOWER.Math.3237)
D=-1
@AFTER.Math.3237
0;JMP
(NOTLOWER.Math.3237)
D=0
(AFTER.Math.3237)
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

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Math.Math.sqrt$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Math.Math.sqrt$IF_FALSE1
0;JMP

//label IF_TRUE1
(Math.Math.sqrt$IF_TRUE1)

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

//label IF_FALSE1
(Math.Math.sqrt$IF_FALSE1)

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

//goto WHILE_EXP0
@Math.Math.sqrt$WHILE_EXP0
0;JMP

//label WHILE_END0
(Math.Math.sqrt$WHILE_END0)

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

//function Math.max 0
(Math.max)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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
@GREATER.Math.3257
D;JGT
@NOTGREATER.Math.3257
D;JLE
(GREATER.Math.3257)
D=-1
@AFTER.Math.3257
0;JMP
(NOTGREATER.Math.3257)
D=0
(AFTER.Math.3257)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.Math.max$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Math.Math.max$IF_FALSE0
0;JMP

//label IF_TRUE0
(Math.Math.max$IF_TRUE0)

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

//pop argument 1
@1
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

//label IF_FALSE0
(Math.Math.max$IF_FALSE0)

//push argument 1
@1
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

//function Math.min 0
(Math.min)
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

//push argument 1
@1
D=A
@ARG
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
@LOWER.Math.3269
D;JLT
@NOTLOWER.Math.3269
D;JGE
(LOWER.Math.3269)
D=-1
@AFTER.Math.3269
0;JMP
(NOTLOWER.Math.3269)
D=0
(AFTER.Math.3269)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Math.Math.min$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Math.Math.min$IF_FALSE0
0;JMP

//label IF_TRUE0
(Math.Math.min$IF_TRUE0)

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

//pop argument 1
@1
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

//label IF_FALSE0
(Math.Math.min$IF_FALSE0)

//push argument 1
@1
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

//function Screen.init 1
(Screen.init)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push constant 16384
@16384
D=A
@SP
A=M
M=D
@SP
M=M+1

//pop static 1
@SP
M=M-1
A=M
D=M
@Screen.1
M=D

//push constant 0
@0
D=A
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

//pop static 2
@SP
M=M-1
A=M
D=M
@Screen.2
M=D

//push constant 17
@17
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Array.new 1

//Generate return label and push it on the stack
@Array.new$ret.197
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
(Array.new$ret.197)

//pop static 0
@SP
M=M-1
A=M
D=M
@Screen.0
M=D

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Screen.0
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

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//label WHILE_EXP0
(Screen.Screen.init$WHILE_EXP0)

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

//push constant 16
@16
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
@LOWER.Screen.3299
D;JLT
@NOTLOWER.Screen.3299
D;JGE
(LOWER.Screen.3299)
D=-1
@AFTER.Screen.3299
0;JMP
(NOTLOWER.Screen.3299)
D=0
(AFTER.Screen.3299)
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
@Screen.Screen.init$WHILE_END0
D;JNE

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

//push static 0
@Screen.0
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

//push static 0
@Screen.0
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

//push static 0
@Screen.0
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

//goto WHILE_EXP0
@Screen.Screen.init$WHILE_EXP0
0;JMP

//label WHILE_END0
(Screen.Screen.init$WHILE_END0)

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

//function Screen.clearScreen 1
(Screen.clearScreen)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//label WHILE_EXP0
(Screen.Screen.clearScreen$WHILE_EXP0)

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

//push constant 8192
@8192
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
@LOWER.Screen.3336
D;JLT
@NOTLOWER.Screen.3336
D;JGE
(LOWER.Screen.3336)
D=-1
@AFTER.Screen.3336
0;JMP
(NOTLOWER.Screen.3336)
D=0
(AFTER.Screen.3336)
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
@Screen.Screen.clearScreen$WHILE_END0
D;JNE

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

//push static 1
@Screen.1
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

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

//goto WHILE_EXP0
@Screen.Screen.clearScreen$WHILE_EXP0
0;JMP

//label WHILE_END0
(Screen.Screen.clearScreen$WHILE_END0)

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

//function Screen.updateLocation 0
(Screen.updateLocation)
@0
D=A

//push static 2
@Screen.2
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.Screen.updateLocation$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Screen.Screen.updateLocation$IF_FALSE0
0;JMP

//label IF_TRUE0
(Screen.Screen.updateLocation$IF_TRUE0)

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

//push static 1
@Screen.1
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

//push static 1
@Screen.1
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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

//goto IF_END0
@Screen.Screen.updateLocation$IF_END0
0;JMP

//label IF_FALSE0
(Screen.Screen.updateLocation$IF_FALSE0)

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

//push static 1
@Screen.1
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

//push static 1
@Screen.1
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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

//label IF_END0
(Screen.Screen.updateLocation$IF_END0)

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

//function Screen.setColor 0
(Screen.setColor)
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

//pop static 2
@SP
M=M-1
A=M
D=M
@Screen.2
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

//function Screen.drawPixel 3
(Screen.drawPixel)
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

//push constant 0
@0
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
@LOWER.Screen.3402
D;JLT
@NOTLOWER.Screen.3402
D;JGE
(LOWER.Screen.3402)
D=-1
@AFTER.Screen.3402
0;JMP
(NOTLOWER.Screen.3402)
D=0
(AFTER.Screen.3402)
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 511
@511
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
@GREATER.Screen.3405
D;JGT
@NOTGREATER.Screen.3405
D;JLE
(GREATER.Screen.3405)
D=-1
@AFTER.Screen.3405
0;JMP
(NOTGREATER.Screen.3405)
D=0
(AFTER.Screen.3405)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.Screen.3409
D;JLT
@NOTLOWER.Screen.3409
D;JGE
(LOWER.Screen.3409)
D=-1
@AFTER.Screen.3409
0;JMP
(NOTLOWER.Screen.3409)
D=0
(AFTER.Screen.3409)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
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
@GREATER.Screen.3413
D;JGT
@NOTGREATER.Screen.3413
D;JLE
(GREATER.Screen.3413)
D=-1
@AFTER.Screen.3413
0;JMP
(NOTGREATER.Screen.3413)
D=0
(AFTER.Screen.3413)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawPixel$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Screen.Screen.drawPixel$IF_FALSE0
0;JMP

//label IF_TRUE0
(Screen.Screen.drawPixel$IF_TRUE0)

//push constant 7
@7
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.198
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.198)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Screen.Screen.drawPixel$IF_FALSE0)

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

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.199
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
(Math.divide$ret.199)

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

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.200
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.200)

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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.201
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.201)

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

//push static 0
@Screen.0
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

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.202
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.202)

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

//function Screen.drawConditional 0
(Screen.drawConditional)
@0
D=A

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawConditional$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Screen.Screen.drawConditional$IF_FALSE0
0;JMP

//label IF_TRUE0
(Screen.Screen.drawConditional$IF_TRUE0)

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//call Screen.drawPixel 2

//Generate return label and push it on the stack
@Screen.drawPixel$ret.203
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
@Screen.drawPixel
0;JMP

//Inject return address label
(Screen.drawPixel$ret.203)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto IF_END0
@Screen.Screen.drawConditional$IF_END0
0;JMP

//label IF_FALSE0
(Screen.Screen.drawConditional$IF_FALSE0)

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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawPixel 2

//Generate return label and push it on the stack
@Screen.drawPixel$ret.204
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
@Screen.drawPixel
0;JMP

//Inject return address label
(Screen.drawPixel$ret.204)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_END0
(Screen.Screen.drawConditional$IF_END0)

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

//function Screen.drawLine 11
(Screen.drawLine)
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

//push constant 0
@0
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
@LOWER.Screen.3469
D;JLT
@NOTLOWER.Screen.3469
D;JGE
(LOWER.Screen.3469)
D=-1
@AFTER.Screen.3469
0;JMP
(NOTLOWER.Screen.3469)
D=0
(AFTER.Screen.3469)
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 511
@511
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
@GREATER.Screen.3472
D;JGT
@NOTGREATER.Screen.3472
D;JLE
(GREATER.Screen.3472)
D=-1
@AFTER.Screen.3472
0;JMP
(NOTGREATER.Screen.3472)
D=0
(AFTER.Screen.3472)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.Screen.3476
D;JLT
@NOTLOWER.Screen.3476
D;JGE
(LOWER.Screen.3476)
D=-1
@AFTER.Screen.3476
0;JMP
(NOTLOWER.Screen.3476)
D=0
(AFTER.Screen.3476)
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

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
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
@GREATER.Screen.3480
D;JGT
@NOTGREATER.Screen.3480
D;JLE
(GREATER.Screen.3480)
D=-1
@AFTER.Screen.3480
0;JMP
(NOTGREATER.Screen.3480)
D=0
(AFTER.Screen.3480)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawLine$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Screen.Screen.drawLine$IF_FALSE0
0;JMP

//label IF_TRUE0
(Screen.Screen.drawLine$IF_TRUE0)

//push constant 8
@8
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.205
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.205)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Screen.Screen.drawLine$IF_FALSE0)

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//call Math.abs 1

//Generate return label and push it on the stack
@Math.abs$ret.206
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
@Math.abs
0;JMP

//Inject return address label
(Math.abs$ret.206)

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

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
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

//call Math.abs 1

//Generate return label and push it on the stack
@Math.abs$ret.207
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
@Math.abs
0;JMP

//Inject return address label
(Math.abs$ret.207)

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
@LOWER.Screen.3501
D;JLT
@NOTLOWER.Screen.3501
D;JGE
(LOWER.Screen.3501)
D=-1
@AFTER.Screen.3501
0;JMP
(NOTLOWER.Screen.3501)
D=0
(AFTER.Screen.3501)
@SP
A=M
M=D
@SP
M=M+1

//pop local 6
@6
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

//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
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
@LOWER.Screen.3506
D;JLT
@NOTLOWER.Screen.3506
D;JGE
(LOWER.Screen.3506)
D=-1
@AFTER.Screen.3506
0;JMP
(NOTLOWER.Screen.3506)
D=0
(AFTER.Screen.3506)
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

//push local 6
@6
D=A
@LCL
A=D+M
D=M
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@LOWER.Screen.3512
D;JLT
@NOTLOWER.Screen.3512
D;JGE
(LOWER.Screen.3512)
D=-1
@AFTER.Screen.3512
0;JMP
(NOTLOWER.Screen.3512)
D=0
(AFTER.Screen.3512)
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

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawLine$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Screen.Screen.drawLine$IF_FALSE1
0;JMP

//label IF_TRUE1
(Screen.Screen.drawLine$IF_TRUE1)

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

//pop local 4
@4
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 0
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

//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 2
@2
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 4
@4
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

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 1
@1
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

//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop argument 3
@3
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

//label IF_FALSE1
(Screen.Screen.drawLine$IF_FALSE1)

//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawLine$IF_TRUE2
D;JNE

//goto IF_FALSE2
@Screen.Screen.drawLine$IF_FALSE2
0;JMP

//label IF_TRUE2
(Screen.Screen.drawLine$IF_TRUE2)

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

//pop local 4
@4
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

//push local 4
@4
D=A
@LCL
A=D+M
D=M
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 8
@8
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
@GREATER.Screen.3549
D;JGT
@NOTGREATER.Screen.3549
D;JLE
(GREATER.Screen.3549)
D=-1
@AFTER.Screen.3549
0;JMP
(NOTGREATER.Screen.3549)
D=0
(AFTER.Screen.3549)
@SP
A=M
M=D
@SP
M=M+1

//pop local 7
@7
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

//goto IF_END2
@Screen.Screen.drawLine$IF_END2
0;JMP

//label IF_FALSE2
(Screen.Screen.drawLine$IF_FALSE2)

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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//pop local 8
@8
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
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
@GREATER.Screen.3561
D;JGT
@NOTGREATER.Screen.3561
D;JLE
(GREATER.Screen.3561)
D=-1
@AFTER.Screen.3561
0;JMP
(NOTGREATER.Screen.3561)
D=0
(AFTER.Screen.3561)
@SP
A=M
M=D
@SP
M=M+1

//pop local 7
@7
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

//label IF_END2
(Screen.Screen.drawLine$IF_END2)

//push constant 2
@2
D=A
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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.208
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.208)

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

//pop local 5
@5
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

//push constant 2
@2
D=A
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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.209
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.209)

//pop local 9
@9
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

//push constant 2
@2
D=A
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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.210
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.210)

//pop local 10
@10
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

//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawConditional 3

//Generate return label and push it on the stack
@Screen.drawConditional$ret.211
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
@8
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
@Screen.drawConditional
0;JMP

//Inject return address label
(Screen.drawConditional$ret.211)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label WHILE_EXP0
(Screen.Screen.drawLine$WHILE_EXP0)

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

//push local 8
@8
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
@LOWER.Screen.3588
D;JLT
@NOTLOWER.Screen.3588
D;JGE
(LOWER.Screen.3588)
D=-1
@AFTER.Screen.3588
0;JMP
(NOTLOWER.Screen.3588)
D=0
(AFTER.Screen.3588)
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
@Screen.Screen.drawLine$WHILE_END0
D;JNE

//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.Screen.3593
D;JLT
@NOTLOWER.Screen.3593
D;JGE
(LOWER.Screen.3593)
D=-1
@AFTER.Screen.3593
0;JMP
(NOTLOWER.Screen.3593)
D=0
(AFTER.Screen.3593)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE3
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawLine$IF_TRUE3
D;JNE

//goto IF_FALSE3
@Screen.Screen.drawLine$IF_FALSE3
0;JMP

//label IF_TRUE3
(Screen.Screen.drawLine$IF_TRUE3)

//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 9
@9
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

//pop local 5
@5
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

//goto IF_END3
@Screen.Screen.drawLine$IF_END3
0;JMP

//label IF_FALSE3
(Screen.Screen.drawLine$IF_FALSE3)

//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 10
@10
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

//pop local 5
@5
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

//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE4
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawLine$IF_TRUE4
D;JNE

//goto IF_FALSE4
@Screen.Screen.drawLine$IF_FALSE4
0;JMP

//label IF_TRUE4
(Screen.Screen.drawLine$IF_TRUE4)

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

//goto IF_END4
@Screen.Screen.drawLine$IF_END4
0;JMP

//label IF_FALSE4
(Screen.Screen.drawLine$IF_FALSE4)

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

//label IF_END4
(Screen.Screen.drawLine$IF_END4)

//label IF_END3
(Screen.Screen.drawLine$IF_END3)

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

//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.drawConditional 3

//Generate return label and push it on the stack
@Screen.drawConditional$ret.212
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
@8
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
@Screen.drawConditional
0;JMP

//Inject return address label
(Screen.drawConditional$ret.212)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto WHILE_EXP0
@Screen.Screen.drawLine$WHILE_EXP0
0;JMP

//label WHILE_END0
(Screen.Screen.drawLine$WHILE_END0)

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

//function Screen.drawRectangle 9
(Screen.drawRectangle)
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
@SP
A=M
M=D
@SP
M=M+1

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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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
@GREATER.Screen.3639
D;JGT
@NOTGREATER.Screen.3639
D;JLE
(GREATER.Screen.3639)
D=-1
@AFTER.Screen.3639
0;JMP
(NOTGREATER.Screen.3639)
D=0
(AFTER.Screen.3639)
@SP
A=M
M=D
@SP
M=M+1

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
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
@GREATER.Screen.3642
D;JGT
@NOTGREATER.Screen.3642
D;JLE
(GREATER.Screen.3642)
D=-1
@AFTER.Screen.3642
0;JMP
(NOTGREATER.Screen.3642)
D=0
(AFTER.Screen.3642)
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

//push constant 0
@0
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
@LOWER.Screen.3646
D;JLT
@NOTLOWER.Screen.3646
D;JGE
(LOWER.Screen.3646)
D=-1
@AFTER.Screen.3646
0;JMP
(NOTLOWER.Screen.3646)
D=0
(AFTER.Screen.3646)
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 511
@511
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
@GREATER.Screen.3650
D;JGT
@NOTGREATER.Screen.3650
D;JLE
(GREATER.Screen.3650)
D=-1
@AFTER.Screen.3650
0;JMP
(NOTGREATER.Screen.3650)
D=0
(AFTER.Screen.3650)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.Screen.3654
D;JLT
@NOTLOWER.Screen.3654
D;JGE
(LOWER.Screen.3654)
D=-1
@AFTER.Screen.3654
0;JMP
(NOTLOWER.Screen.3654)
D=0
(AFTER.Screen.3654)
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

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
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
@GREATER.Screen.3658
D;JGT
@NOTGREATER.Screen.3658
D;JLE
(GREATER.Screen.3658)
D=-1
@AFTER.Screen.3658
0;JMP
(NOTGREATER.Screen.3658)
D=0
(AFTER.Screen.3658)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawRectangle$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Screen.Screen.drawRectangle$IF_FALSE0
0;JMP

//label IF_TRUE0
(Screen.Screen.drawRectangle$IF_TRUE0)

//push constant 9
@9
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.213
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.213)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Screen.Screen.drawRectangle$IF_FALSE0)

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

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.214
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
(Math.divide$ret.214)

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

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.215
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.215)

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

//pop local 7
@7
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.216
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
(Math.divide$ret.216)

//pop local 4
@4
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 4
@4
D=A
@LCL
A=D+M
D=M
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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.217
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.217)

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

//pop local 8
@8
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

//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Screen.0
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

//pop local 6
@6
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

//push local 8
@8
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

//push static 0
@Screen.0
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

//pop local 5
@5
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.218
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.218)

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

//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Screen.Screen.drawRectangle$WHILE_EXP0)

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
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
@GREATER.Screen.3719
D;JGT
@NOTGREATER.Screen.3719
D;JLE
(GREATER.Screen.3719)
D=-1
@AFTER.Screen.3719
0;JMP
(NOTGREATER.Screen.3719)
D=0
(AFTER.Screen.3719)
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
@Screen.Screen.drawRectangle$WHILE_END0
D;JNE

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

//push constant 0
@0
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
@EQUAL.Screen.3729
D;JEQ
@NOTEQUAL.Screen.3729
D;JNE
(EQUAL.Screen.3729)
D=-1
@AFTER.Screen.3729
0;JMP
(NOTEQUAL.Screen.3729)
D=0
(AFTER.Screen.3729)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawRectangle$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Screen.Screen.drawRectangle$IF_FALSE1
0;JMP

//label IF_TRUE1
(Screen.Screen.drawRectangle$IF_TRUE1)

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

//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 6
@6
D=A
@LCL
A=D+M
D=M
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

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.219
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.219)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto IF_END1
@Screen.Screen.drawRectangle$IF_END1
0;JMP

//label IF_FALSE1
(Screen.Screen.drawRectangle$IF_FALSE1)

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

//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.220
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.220)

//pop temp 0
@SP
M=M-1
A=M
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

//label WHILE_EXP1
(Screen.Screen.drawRectangle$WHILE_EXP1)

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
@LOWER.Screen.3752
D;JLT
@NOTLOWER.Screen.3752
D;JGE
(LOWER.Screen.3752)
D=-1
@AFTER.Screen.3752
0;JMP
(NOTLOWER.Screen.3752)
D=0
(AFTER.Screen.3752)
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

//if-goto WHILE_END1
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawRectangle$WHILE_END1
D;JNE

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

//push constant 1
@1
D=A
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

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.221
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.221)

//pop temp 0
@SP
M=M-1
A=M
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

//goto WHILE_EXP1
@Screen.Screen.drawRectangle$WHILE_EXP1
0;JMP

//label WHILE_END1
(Screen.Screen.drawRectangle$WHILE_END1)

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

//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.222
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.222)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_END1
(Screen.Screen.drawRectangle$IF_END1)

//push argument 1
@1
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

//pop argument 1
@1
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

//push constant 32
@32
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

//goto WHILE_EXP0
@Screen.Screen.drawRectangle$WHILE_EXP0
0;JMP

//label WHILE_END0
(Screen.Screen.drawRectangle$WHILE_END0)

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

//function Screen.drawHorizontal 11
(Screen.drawHorizontal)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.min 2

//Generate return label and push it on the stack
@Math.min$ret.223
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
@Math.min
0;JMP

//Inject return address label
(Math.min$ret.223)

//pop local 7
@7
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Math.max 2

//Generate return label and push it on the stack
@Math.max$ret.224
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
@Math.max
0;JMP

//Inject return address label
(Math.max$ret.224)

//pop local 8
@8
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
@GREATER.Screen.3797
D;JGT
@NOTGREATER.Screen.3797
D;JLE
(GREATER.Screen.3797)
D=-1
@AFTER.Screen.3797
0;JMP
(NOTGREATER.Screen.3797)
D=0
(AFTER.Screen.3797)
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 256
@256
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
@LOWER.Screen.3800
D;JLT
@NOTLOWER.Screen.3800
D;JGE
(LOWER.Screen.3800)
D=-1
@AFTER.Screen.3800
0;JMP
(NOTLOWER.Screen.3800)
D=0
(AFTER.Screen.3800)
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

//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 512
@512
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
@LOWER.Screen.3804
D;JLT
@NOTLOWER.Screen.3804
D;JGE
(LOWER.Screen.3804)
D=-1
@AFTER.Screen.3804
0;JMP
(NOTLOWER.Screen.3804)
D=0
(AFTER.Screen.3804)
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

//push local 8
@8
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
@GREATER.Screen.3809
D;JGT
@NOTGREATER.Screen.3809
D;JLE
(GREATER.Screen.3809)
D=-1
@AFTER.Screen.3809
0;JMP
(NOTGREATER.Screen.3809)
D=0
(AFTER.Screen.3809)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawHorizontal$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Screen.Screen.drawHorizontal$IF_FALSE0
0;JMP

//label IF_TRUE0
(Screen.Screen.drawHorizontal$IF_TRUE0)

//push local 7
@7
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.max 2

//Generate return label and push it on the stack
@Math.max$ret.225
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
@Math.max
0;JMP

//Inject return address label
(Math.max$ret.225)

//pop local 7
@7
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

//push local 8
@8
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 511
@511
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.min 2

//Generate return label and push it on the stack
@Math.min$ret.226
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
@Math.min
0;JMP

//Inject return address label
(Math.min$ret.226)

//pop local 8
@8
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

//push local 7
@7
D=A
@LCL
A=D+M
D=M
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

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.227
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
(Math.divide$ret.227)

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

//push local 7
@7
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

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.228
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.228)

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

//pop local 9
@9
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

//push local 8
@8
D=A
@LCL
A=D+M
D=M
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

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.229
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
(Math.divide$ret.229)

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

//push local 8
@8
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

//push constant 16
@16
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.230
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.230)

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

//pop local 10
@10
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

//push local 9
@9
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push static 0
@Screen.0
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

//pop local 5
@5
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

//push local 10
@10
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

//push static 0
@Screen.0
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

//pop local 4
@4
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

//push constant 32
@32
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.231
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.231)

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

//pop local 6
@6
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

//push local 6
@6
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

//push local 6
@6
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@EQUAL.Screen.3877
D;JEQ
@NOTEQUAL.Screen.3877
D;JNE
(EQUAL.Screen.3877)
D=-1
@AFTER.Screen.3877
0;JMP
(NOTEQUAL.Screen.3877)
D=0
(AFTER.Screen.3877)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawHorizontal$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Screen.Screen.drawHorizontal$IF_FALSE1
0;JMP

//label IF_TRUE1
(Screen.Screen.drawHorizontal$IF_TRUE1)

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

//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push local 5
@5
D=A
@LCL
A=D+M
D=M
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

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.232
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.232)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto IF_END1
@Screen.Screen.drawHorizontal$IF_END1
0;JMP

//label IF_FALSE1
(Screen.Screen.drawHorizontal$IF_FALSE1)

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

//push local 5
@5
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.233
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.233)

//pop temp 0
@SP
M=M-1
A=M
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

//label WHILE_EXP0
(Screen.Screen.drawHorizontal$WHILE_EXP0)

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
@LOWER.Screen.3900
D;JLT
@NOTLOWER.Screen.3900
D;JGE
(LOWER.Screen.3900)
D=-1
@AFTER.Screen.3900
0;JMP
(NOTLOWER.Screen.3900)
D=0
(AFTER.Screen.3900)
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
@Screen.Screen.drawHorizontal$WHILE_END0
D;JNE

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

//push constant 1
@1
D=A
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

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.234
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.234)

//pop temp 0
@SP
M=M-1
A=M
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

//goto WHILE_EXP0
@Screen.Screen.drawHorizontal$WHILE_EXP0
0;JMP

//label WHILE_END0
(Screen.Screen.drawHorizontal$WHILE_END0)

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

//push local 4
@4
D=A
@LCL
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//call Screen.updateLocation 2

//Generate return label and push it on the stack
@Screen.updateLocation$ret.235
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
@Screen.updateLocation
0;JMP

//Inject return address label
(Screen.updateLocation$ret.235)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_END1
(Screen.Screen.drawHorizontal$IF_END1)

//label IF_FALSE0
(Screen.Screen.drawHorizontal$IF_FALSE0)

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

//function Screen.drawSymetric 0
(Screen.drawSymetric)
@0
D=A

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
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

//push argument 2
@2
D=A
@ARG
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

//call Screen.drawHorizontal 3

//Generate return label and push it on the stack
@Screen.drawHorizontal$ret.236
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
@8
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
@Screen.drawHorizontal
0;JMP

//Inject return address label
(Screen.drawHorizontal$ret.236)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 3
@3
D=A
@ARG
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

//push argument 2
@2
D=A
@ARG
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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

//call Screen.drawHorizontal 3

//Generate return label and push it on the stack
@Screen.drawHorizontal$ret.237
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
@8
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
@Screen.drawHorizontal
0;JMP

//Inject return address label
(Screen.drawHorizontal$ret.237)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
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

//push argument 3
@3
D=A
@ARG
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

//call Screen.drawHorizontal 3

//Generate return label and push it on the stack
@Screen.drawHorizontal$ret.238
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
@8
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
@Screen.drawHorizontal
0;JMP

//Inject return address label
(Screen.drawHorizontal$ret.238)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
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

//push argument 3
@3
D=A
@ARG
A=D+M
D=M
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

//push argument 3
@3
D=A
@ARG
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

//call Screen.drawHorizontal 3

//Generate return label and push it on the stack
@Screen.drawHorizontal$ret.239
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
@8
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
@Screen.drawHorizontal
0;JMP

//Inject return address label
(Screen.drawHorizontal$ret.239)

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

//function Screen.drawCircle 3
(Screen.drawCircle)
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

//push constant 0
@0
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
@LOWER.Screen.3972
D;JLT
@NOTLOWER.Screen.3972
D;JGE
(LOWER.Screen.3972)
D=-1
@AFTER.Screen.3972
0;JMP
(NOTLOWER.Screen.3972)
D=0
(AFTER.Screen.3972)
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 511
@511
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
@GREATER.Screen.3975
D;JGT
@NOTGREATER.Screen.3975
D;JLE
(GREATER.Screen.3975)
D=-1
@AFTER.Screen.3975
0;JMP
(NOTGREATER.Screen.3975)
D=0
(AFTER.Screen.3975)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 0
@0
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
@LOWER.Screen.3979
D;JLT
@NOTLOWER.Screen.3979
D;JGE
(LOWER.Screen.3979)
D=-1
@AFTER.Screen.3979
0;JMP
(NOTLOWER.Screen.3979)
D=0
(AFTER.Screen.3979)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push constant 255
@255
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
@GREATER.Screen.3983
D;JGT
@NOTGREATER.Screen.3983
D;JLE
(GREATER.Screen.3983)
D=-1
@AFTER.Screen.3983
0;JMP
(NOTGREATER.Screen.3983)
D=0
(AFTER.Screen.3983)
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

//if-goto IF_TRUE0
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawCircle$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Screen.Screen.drawCircle$IF_FALSE0
0;JMP

//label IF_TRUE0
(Screen.Screen.drawCircle$IF_TRUE0)

//push constant 12
@12
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.240
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.240)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(Screen.Screen.drawCircle$IF_FALSE0)

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

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

//push constant 0
@0
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
@LOWER.Screen.3996
D;JLT
@NOTLOWER.Screen.3996
D;JGE
(LOWER.Screen.3996)
D=-1
@AFTER.Screen.3996
0;JMP
(NOTLOWER.Screen.3996)
D=0
(AFTER.Screen.3996)
@SP
A=M
M=D
@SP
M=M+1

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

//push argument 2
@2
D=A
@ARG
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

//push constant 511
@511
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
@GREATER.Screen.4001
D;JGT
@NOTGREATER.Screen.4001
D;JLE
(GREATER.Screen.4001)
D=-1
@AFTER.Screen.4001
0;JMP
(NOTGREATER.Screen.4001)
D=0
(AFTER.Screen.4001)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

//push constant 0
@0
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
@LOWER.Screen.4007
D;JLT
@NOTLOWER.Screen.4007
D;JGE
(LOWER.Screen.4007)
D=-1
@AFTER.Screen.4007
0;JMP
(NOTLOWER.Screen.4007)
D=0
(AFTER.Screen.4007)
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

//push argument 1
@1
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
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

//push constant 255
@255
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
@GREATER.Screen.4013
D;JGT
@NOTGREATER.Screen.4013
D;JLE
(GREATER.Screen.4013)
D=-1
@AFTER.Screen.4013
0;JMP
(NOTGREATER.Screen.4013)
D=0
(AFTER.Screen.4013)
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

//if-goto IF_TRUE1
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawCircle$IF_TRUE1
D;JNE

//goto IF_FALSE1
@Screen.Screen.drawCircle$IF_FALSE1
0;JMP

//label IF_TRUE1
(Screen.Screen.drawCircle$IF_TRUE1)

//push constant 13
@13
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Sys.error 1

//Generate return label and push it on the stack
@Sys.error$ret.241
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
@Sys.error
0;JMP

//Inject return address label
(Sys.error$ret.241)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE1
(Screen.Screen.drawCircle$IF_FALSE1)

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
@SP
A=M
M=D
@SP
M=M+1

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

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//push argument 2
@2
D=A
@ARG
A=D+M
D=M
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

//push argument 1
@1
D=A
@ARG
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

//call Screen.drawSymetric 4

//Generate return label and push it on the stack
@Screen.drawSymetric$ret.242
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
@9
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
@Screen.drawSymetric
0;JMP

//Inject return address label
(Screen.drawSymetric$ret.242)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label WHILE_EXP0
(Screen.Screen.drawCircle$WHILE_EXP0)

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
@GREATER.Screen.4037
D;JGT
@NOTGREATER.Screen.4037
D;JLE
(GREATER.Screen.4037)
D=-1
@AFTER.Screen.4037
0;JMP
(NOTGREATER.Screen.4037)
D=0
(AFTER.Screen.4037)
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
@Screen.Screen.drawCircle$WHILE_END0
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

//push constant 0
@0
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
@LOWER.Screen.4042
D;JLT
@NOTLOWER.Screen.4042
D;JGE
(LOWER.Screen.4042)
D=-1
@AFTER.Screen.4042
0;JMP
(NOTLOWER.Screen.4042)
D=0
(AFTER.Screen.4042)
@SP
A=M
M=D
@SP
M=M+1

//if-goto IF_TRUE2
@SP
M=M-1
A=M
D=M
@Screen.Screen.drawCircle$IF_TRUE2
D;JNE

//goto IF_FALSE2
@Screen.Screen.drawCircle$IF_FALSE2
0;JMP

//label IF_TRUE2
(Screen.Screen.drawCircle$IF_TRUE2)

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

//push constant 2
@2
D=A
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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.243
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.243)

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

//push constant 3
@3
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

//goto IF_END2
@Screen.Screen.drawCircle$IF_END2
0;JMP

//label IF_FALSE2
(Screen.Screen.drawCircle$IF_FALSE2)

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

//push constant 2
@2
D=A
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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.244
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
@Math.multiply
0;JMP

//Inject return address label
(Math.multiply$ret.244)

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

//push constant 5
@5
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

//label IF_END2
(Screen.Screen.drawCircle$IF_END2)

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

//push argument 1
@1
D=A
@ARG
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

//call Screen.drawSymetric 4

//Generate return label and push it on the stack
@Screen.drawSymetric$ret.245
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
@9
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
@Screen.drawSymetric
0;JMP

//Inject return address label
(Screen.drawSymetric$ret.245)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//goto WHILE_EXP0
@Screen.Screen.drawCircle$WHILE_EXP0
0;JMP

//label WHILE_END0
(Screen.Screen.drawCircle$WHILE_END0)

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