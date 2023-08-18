// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(INFINITE)
	@KBD
	D=M
	@WHITE_1
	D;JEQ
	@BLACK_1
	D;JNE

(WHITE_1)
	@counter
	M=0
	@counter_2
	M=0
	
(WHITE)
	@SCREEN
	D=A
	@counter_2
	A=D+M
	M=0
	@KBD
	D=M
	@BLACK_1
	D;JNE
	@counter_2
	M=M+1
	D=M
	@8192
	D=D-A
	@WHITE_1
	D;JEQ
	@KBD
	D=M
	@WHITE
	D;JEQ
	@BLACK_1
	D;JNE
	
(BLACK_1)
	@counter
	M=0
	@counter_2
	M=0
	
(BLACK)
	@SCREEN
	D=A
	@counter_2
	A=D+M
	M=-1
	@KBD
	D=M
	@WHITE_1
	D;JEQ
	@counter_2
	M=M+1
	D=M
	@8192
	D=D-A
	@BLACK_1
	D;JEQ
	@KBD
	D=M
	@BLACK
	D;JNE

@INFINITE
0;JMP
