JMP MAINPROG
DB 5A

ORG 10
MAINPROG:
	STI

ORG 5A
LOOP:
	CLI
	MOV AL,01
	OUT 02
	MOV AL,DE
	OUT 02
	OR AL,FE
	OUT 02
	AND AL,8A
	OUT 02
	MOV AL,FC
	OUT 02
	MOV AL,DC
	OUT 02
	MOV AL,4E
	OUT 02
	MOV AL,9E
	OUT 02
	MOV AL,B6
	OUT 02
	MOV AL,60
	OUT 02
	MOV AL,FA
	OUT 02	
	IRET

END

