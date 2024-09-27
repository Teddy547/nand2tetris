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

//function Fraction.new 0
(Fraction.new)
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

//call Fraction.reduce 1

//Generate return label and push it on the stack
@Fraction.reduce$ret.2
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.reduce
0;JMP

//Inject return address label
(Fraction.reduce$ret.2)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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

//function Fraction.reduce 1
(Fraction.reduce)
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

//call Fraction.gcd 2

//Generate return label and push it on the stack
@Fraction.gcd$ret.3
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.gcd
0;JMP

//Inject return address label
(Fraction.gcd$ret.3)

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

//push constant 1
@1
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
@GREATER.Fraction.23
D;JGT
@NOTGREATER.Fraction.23
D;JLE
(GREATER.Fraction.23)
D=-1
@AFTER.Fraction.23
0;JMP
(NOTGREATER.Fraction.23)
D=0
(AFTER.Fraction.23)
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
@Fraction.Fraction.reduce$IF_TRUE0
D;JNE

//goto IF_FALSE0
@Fraction.Fraction.reduce$IF_FALSE0
0;JMP

//label IF_TRUE0
(Fraction.Fraction.reduce$IF_TRUE0)

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

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.4
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Math.divide$ret.4)

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

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.5
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Math.divide$ret.5)

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

//label IF_FALSE0
(Fraction.Fraction.reduce$IF_FALSE0)

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

//function Fraction.getNumerator 0
(Fraction.getNumerator)
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

//function Fraction.getDenominator 0
(Fraction.getDenominator)
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

//function Fraction.plus 1
(Fraction.plus)
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

//call Fraction.getDenominator 1

//Generate return label and push it on the stack
@Fraction.getDenominator$ret.6
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.getDenominator
0;JMP

//Inject return address label
(Fraction.getDenominator$ret.6)

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.7
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Math.multiply$ret.7)

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

//call Fraction.getNumerator 1

//Generate return label and push it on the stack
@Fraction.getNumerator$ret.8
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.getNumerator
0;JMP

//Inject return address label
(Fraction.getNumerator$ret.8)

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

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.9
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Math.multiply$ret.9)

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

//call Fraction.getDenominator 1

//Generate return label and push it on the stack
@Fraction.getDenominator$ret.10
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.getDenominator
0;JMP

//Inject return address label
(Fraction.getDenominator$ret.10)

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.11
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Math.multiply$ret.11)

//call Fraction.new 2

//Generate return label and push it on the stack
@Fraction.new$ret.12
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.new
0;JMP

//Inject return address label
(Fraction.new$ret.12)

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

//function Fraction.dispose 0
(Fraction.dispose)
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
@Memory.deAlloc$ret.13
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Memory.deAlloc$ret.13)

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

//function Fraction.print 0
(Fraction.print)
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

//call Output.printInt 1

//Generate return label and push it on the stack
@Output.printInt$ret.14
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Output.printInt$ret.14)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
M=D

//push constant 1
@1
D=A
@SP
A=M
M=D
@SP
M=M+1

//call String.new 1

//Generate return label and push it on the stack
@String.new$ret.15
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(String.new$ret.15)

//push constant 47
@47
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

//call Output.printString 1

//Generate return label and push it on the stack
@Output.printString$ret.17
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Output.printString$ret.17)

//pop temp 0
@SP
M=M-1
A=M
D=M
@5
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

//call Output.printInt 1

//Generate return label and push it on the stack
@Output.printInt$ret.18
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Output.printInt$ret.18)

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

//function Fraction.gcd 1
(Fraction.gcd)
@0
D=A
@SP
A=M
M=D
@SP
M=M+1

//label WHILE_EXP0
(Fraction.Fraction.gcd$WHILE_EXP0)

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
@EQUAL.Fraction.97
D;JEQ
@NOTEQUAL.Fraction.97
D;JNE
(EQUAL.Fraction.97)
D=-1
@AFTER.Fraction.97
0;JMP
(NOTEQUAL.Fraction.97)
D=0
(AFTER.Fraction.97)
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
@Fraction.Fraction.gcd$WHILE_END0
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

//call Math.divide 2

//Generate return label and push it on the stack
@Math.divide$ret.19
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Math.divide$ret.19)

//call Math.multiply 2

//Generate return label and push it on the stack
@Math.multiply$ret.20
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
(Math.multiply$ret.20)

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
@Fraction.Fraction.gcd$WHILE_EXP0
0;JMP

//label WHILE_END0
(Fraction.Fraction.gcd$WHILE_END0)

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

//function Main.main 3
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

//call Fraction.new 2

//Generate return label and push it on the stack
@Fraction.new$ret.21
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.new
0;JMP

//Inject return address label
(Fraction.new$ret.21)

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

//push constant 5
@5
D=A
@SP
A=M
M=D
@SP
M=M+1

//call Fraction.new 2

//Generate return label and push it on the stack
@Fraction.new$ret.22
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.new
0;JMP

//Inject return address label
(Fraction.new$ret.22)

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

//call Fraction.plus 2

//Generate return label and push it on the stack
@Fraction.plus$ret.23
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.plus
0;JMP

//Inject return address label
(Fraction.plus$ret.23)

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

//call Fraction.print 1

//Generate return label and push it on the stack
@Fraction.print$ret.24
D=A
@SP
A=M
M=D
@SP
M=M+1

//Push 'LCL' on the stack
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'ARG' on the stack
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1

//Push 'THIS' on the stack
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1

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
@Fraction.print
0;JMP

//Inject return address label
(Fraction.print$ret.24)

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