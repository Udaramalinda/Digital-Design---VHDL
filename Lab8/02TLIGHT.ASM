; ===== CONTROL THE TRAFFIC LIGHTS =============================

	CLO		; Close unwanted windows.
			; Turn off all the traffic lights.
	MOV AL,0	; Copy 00000000 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).
Start:
			; Turn on all the traffic lights.
	MOV AL,84	; Copy 10000100 into the AL register.
	OUT 01		; Send AL to Port One (The traffic lights).

	MOV BL,A	; for wait 10 seconds.
	CALL 30		; call the RAM memory 30.

	MOV AL,48	; Copy 01001000 into the AL register
	OUT 01		; Send AL to Port One (The traffic lights).

	MOV BL,1	; for wait 1 seconds.
	CALL 30		; call the RAM memory 30.

	MOV AL,30	; Copy 00110000 into the AL register
	OUT 01		; Send AL to Port One (The traffic lights).

	MOV BL,5	; for wait 10 seconds.
	CALL 30		; call the RAM memory 30.

	JMP Start	; Jump back to the start.


; ----- Time Delay Procedure Stored At Address [30] -------------
	ORG	30	; Generate machine code from address [30]

	PUSH	BL	; Save AL on the stack.
	PUSHF		; Save the CPU flags on the stack.
Rep:
	DEC	BL	; Subtract one from AL.
	JNZ	REP	; Jump back to Rep if AL was not Zero.

	POPF		; Restore the CPU flags from the stack.
	POP	BL	; Restore AL from the stack.

	RET		; Return from the procedure.
; ---------------------------------------------------------------
	END		; Program ends.
	
; ===== Program Ends ==========================================

	YOUR TASK
	=========
	Use the help page on Hexadecimal and ASCII codes.
	Work out what hexadecimal numbers will activate the
	correct traffic lights. Modify the program to step
	the lights through a realistic sequence.
