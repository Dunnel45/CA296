MOV AL,41
MOV BL,C0
JMP LOOP

LOOP:
	MOV [BL],AL
	INC AL
	INC BL
	CMP BL,C3
	JNZ LOOP
	END