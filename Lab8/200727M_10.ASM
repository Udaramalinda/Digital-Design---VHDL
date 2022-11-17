; ======================================================
; ===== 99sevseg.asm ===================================
; ===== Seven Segment Displays Port 02 =================
Start:
	;My index number 200727M

	MOV	AL,B6	; 1011 0110 index number 2
	OUT	02	; Send the data in AL to Port 02

	MOV	AL,8B	; 1000 1011 index number 7
	OUT	02	; Send the data in AL to Port 02
	
	MOV	AL,0	; 0000 0000
	OUT	02	; off the lights on first index

	MOV	AL,1	; 0000 0001
	OUT	02	; off the lights on second index

	JMP	Start
	
	END
; ======================================================