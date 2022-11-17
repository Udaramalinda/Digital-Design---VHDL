	CLO
	MOV CL,1	; Initiate the value AL to 1

	MOV BL,5	; Initiate the value Bl to 5

loop:
	MUL CL,BL	; Mutiply the value at AL by value at BL
	DEC BL		; Subtract one from BL
	JNZ loop	; Jump to loop if BL is not zero

;Display 78 in 7-segment Display

	MOV AL,8A	; Move 7 to the AL register
	OUT 02		; Display 7 in 7-segment display
	MOV AL,FF	; Move 8 to the AL register
	OUT 02		; Display 7 in 7-segment display
	

	END
	
