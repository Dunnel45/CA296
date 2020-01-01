JMP progstart
DB 0
DB 1
DB 2
DB 3
DB 4
DB 5
DB 6
DB 7
DB 8

ORG 9

MOV CL,[08]

LOOP:
	MOV BL,[CL]
	ADD AL,BL
	DEC CL
	JNZ LOOP
	END