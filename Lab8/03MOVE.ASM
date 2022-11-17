; ---------------------------------------------------------------
; A program to demonstrate MOV commands. Mov is short for move.
; ---------------------------------------------------------------
	CLO		; Close unwanted windows.
; ===== IMMEDIATE MOVES =====
	MOV	AL,72	; Copy 15 HEX into the AL register
	MOV	BL,69	; Copy 40 HEX into the BL register
	MOV	CL,76	; Copy 50 HEX into the CL register
	MOV	DL,79	; Copy 60 HEX into the DL register
Foo:
	;INC AL		; Increment AL for no particular reason.
	
; ===== INDIRECT MOVES =====
	MOV	[C0],AL	; Copy value in AL to RAM location [40]
	MOV	[C1],BL	; Copy value in RAM location [A0] into BL
	MOV	[C2],CL
	MOV	[C3],CL
	MOV	[C4],DL
	
; ===== REGISTER INDIRECT MOVES =====
	;MOV	[CL],AL ; Copy the value in AL to the RAM
			; location that CL points to.
	;MOV	BL,[CL] ; Copy the RAM location that CL points
			; to into the BL register.
				
	;JMP Foo		; PRESS ESCAPE TO STOP THE PROGRAM
	
	END
; ---------------------------------------------------------------
	TASK
	====
	Look up the ASCII codes of the letters in H,E,L,L,O and move 
	these ASCII codes to RAM addresses [C0], [C1], [C2], [C3] 
	and [C4]. Run the program and watch how the text appears on 
	the simulated VDU display. This is very much the same as what 
	happens in the IBM PC running MS DOS. The program you write 
	should work but if you continue to study low level programming, 
	you will find much more efficient and flexible ways of solving 
	this problem.

