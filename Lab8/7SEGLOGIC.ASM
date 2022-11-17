	MOV CL,FA
	MOV [0],CL
	
	MOV CL,0A
	MOV [1],CL

	MOV CL,B6
	MOV [2],CL

	MOV CL,9E
	MOV [3],CL
	
	MOV CL,4E
	MOV [4],CL

	MOV CL,DC
	MOV [5],CL

	MOV CL,FC
	MOV [6],CL
	
	MOV CL,8A
	MOV [7],CL

	MOV CL,FE
	MOV [8],CL

	MOV CL,DE
	MOV [9],CL
	
	MOV CL,EE
	MOV [A],CL

	MOV CL,7C
	MOV [B],CL

	MOV CL,F0
	MOV [C],CL

	MOV CL,3E
	MOV [D],CL

	MOV CL,F4
	MOV [E],CL
	
	MOV CL,E4
	MOV [F],CL

	MOV [F0],AL		; Move result to the RAM location

	MOV DL,[F0]		; Copy the result to the DL
	AND DL,F0		; Get 16 to the power 1 part
	DIV DL,10		; Divid by 16to det first hexa decimal number
	MOV CL,[DL]		; Move to AL value corresponding from stored value
	OUT 02			; Display first digit

	MOV BL,[F0]
	AND BL,0F

	MOV CL,[BL]
	ADD CL,1
	OUT 02

	END