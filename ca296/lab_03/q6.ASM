MOV AL,41
MOV BL,C0
MOV CL,D0
JMP FIRSTLINE

FIRSTLINE:
	MOV [BL],AL
	INC AL
	INC BL
	CMP BL,CF
	JNZ FIRSTLINE

JMP SECONDLINE

SECONDLINE:
	MOV [CL],AL
	INC AL
	INC CL
	CMP CL,DB
	JNZ SECONDLINE
	END