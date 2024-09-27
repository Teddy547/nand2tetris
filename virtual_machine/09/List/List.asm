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

//function List.new 0
(List.new)
@0
D=A

//push constant 2
@2
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Memory.alloc 1

//Generate return label and push it on the stack
@Memory.alloc$ret.1
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Memory.alloc$ret.1)

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

//function List.getData 0
(List.getData)
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

//function List.getNext 0
(List.getNext)
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

//function List.print 1
(List.print)
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
(List.List.print$WHILE_EXP0)

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
@EQUAL.List.29
D;JEQ
@NOTEQUAL.List.29
D;JNE
(EQUAL.List.29)
D=-1
@AFTER.List.29
0;JMP
(NOTEQUAL.List.29)
D=0
(AFTER.List.29)
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
@List.List.print$WHILE_END0
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

//call List.getData 1

//Generate return label and push it on the stack
@List.getData$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@List.getData
0;JMP

//Inject return address label
(List.getData$ret.2)

//call Output.printInt 1

//Generate return label and push it on the stack
@Output.printInt$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Output.printInt$ret.3)

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

//call Output.printChar 1

//Generate return label and push it on the stack
@Output.printChar$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Output.printChar$ret.4)

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

//call List.getNext 1

//Generate return label and push it on the stack
@List.getNext$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@List.getNext
0;JMP

//Inject return address label
(List.getNext$ret.5)

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
@List.List.print$WHILE_EXP0
0;JMP

//label WHILE_END0
(List.List.print$WHILE_END0)

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

//function List.dispose 0
(List.dispose)
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
@EQUAL.List.52
D;JEQ
@NOTEQUAL.List.52
D;JNE
(EQUAL.List.52)
D=-1
@AFTER.List.52
0;JMP
(NOTEQUAL.List.52)
D=0
(AFTER.List.52)
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
@List.List.dispose$IF_TRUE0
D;JNE

//goto IF_FALSE0
@List.List.dispose$IF_FALSE0
0;JMP

//label IF_TRUE0
(List.List.dispose$IF_TRUE0)

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

//call List.dispose 1

//Generate return label and push it on the stack
@List.dispose$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@List.dispose
0;JMP

//Inject return address label
(List.dispose$ret.6)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//label IF_FALSE0
(List.List.dispose$IF_FALSE0)

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
@Memory.deAlloc$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Memory.deAlloc$ret.7)

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

//function Main.main 1
(Main.main)
@0
D=A
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

//push constant 0
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//call List.new 2

//Generate return label and push it on the stack
@List.new$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@List.new
0;JMP

//Inject return address label
(List.new$ret.8)

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

//push constant 2
@2
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

//call List.new 2

//Generate return label and push it on the stack
@List.new$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@List.new
0;JMP

//Inject return address label
(List.new$ret.9)

//call List.new 2

//Generate return label and push it on the stack
@List.new$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@List.new
0;JMP

//Inject return address label
(List.new$ret.10)

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

//call List.print 1

//Generate return label and push it on the stack
@List.print$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@List.print
0;JMP

//Inject return address label
(List.print$ret.11)

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

//call List.dispose 1

//Generate return label and push it on the stack
@List.dispose$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@List.dispose
0;JMP

//Inject return address label
(List.dispose$ret.12)

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