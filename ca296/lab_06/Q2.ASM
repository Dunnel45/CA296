;------------------ PROGRAM WITH PROCEDURE -------------------
ORG 30 ;PLACE CODE AT POSITION 30
DB D0 ;PLACE FF AT 30
ORG 31 ;PLACE CODE AT POSITION 31
DB 60  ;PLACE CHAR AT 31
ORG 00 ;PLACE CODE AT POSITION 00
CALL 50 ;EXECUTE PROCEDURE AT 50
HALT
;------------------ PLACE ASTERIX ON VDU ---------------------
ORG 50 ;PLACE PROCEDURE
PUSH AL	;BACK UP REGISTERS AND SP
PUSH BL
PUSH CL
PUSH DL
PUSHF
PLACE:
	MOV AL,[31] ;MOVE CHAR AT 31 INTO AL
	MOV BL,[30] ;MOVE LOCATION AT 30 INTO AL
	MOV [BL],AL ;MOVE CHAR INTO CORRECT LOCATION
	POPF	;RESTORE SP AND REGISTERS
	POP AL
	POP BL
	POP CL
	POP DL
	RET	;RETURN TO PROGRAM

END