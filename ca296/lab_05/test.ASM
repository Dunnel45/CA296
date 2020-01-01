ORG C1
DB "SHATUPPPPPFOOLLLL"
ORG 00
MOV AL,45 ; Put an E on the top left
MOV [C0],AL
MOV AL,46 ; Put an F on the bottom right
MOV [FF],AL ; remember - AL contains a 46 at the moment
CALL 50 ; Clear the screen
HALT ; What value is AL now?

ORG 50 ; Procedure will live at location 50
PUSH AL
PUSH BL
MOV AL,C0
MOV BL,00
START:
	MOV [AL],BL
	INC AL
	CMP AL,00
	JNZ START
	POP BL
	POP AL
END