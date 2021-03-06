JMP MAINPROG	;JUMP OVER VECTOR TABLE
DB 20	;PLACE 20 INTO 02 SO WHEN TIMER FIRES WILL JUMP TO LOCATION

MAINPROG:
	MOV BL,10 ;MOVE STARTING LOCATION OF TABLE INTO BL 
	STI ;TURN ON INTERRUPTS


LOOP:	;INFINITE LOOP WHICH KEEPS INCREMENTING CL UNTIL TIMER GOES OFF
	INC CL
	JMP LOOP

ORG 20  ;PLACE INTERRUPT CODE AT LOCATION 20
CLI  ;TURN OFF INTERRUPTS ONCE IN ISR
PUSHF ;PUSH INSTRUCTION POINTER
RIGHT:
	MOV AL,[BL] ;MOVE NUMBERS IN TABLE INTO AL
	OUT 02	;PLACE HEX NUMBER IN AL ONTO 7 SEGMENT DISPLAY
	INC BL	;MOVE UP THE TABLE 

LEFT:
	DEC AL  ;SUBTRACT ONE FROM AL TO DISPLAY IT ON LEFT SIDE
	OUT 02	;PUT IT ON DISPLAY
	CMP AL,DE  ;SEE IF AT 99
	JZ END	;IF SO JUMP TO THE END
	STI ;IF NOT TURN INTERRUPTS BACK ON
	

END:
	POPF	;RETURN IP
	MOV AL,00 ;CLEAR 7 SEGMENT DISPLAY
	OUT 02
	MOV AL,01
	OUT 02
	HALT


ORG 10	;PLACE TABLE AT 10
DB FB	;HEX FOR NUMBER 9 ON 7 SEGMENT DISPLAY
DB 61
DB B7
DB 9F
DB 4F
DB DD
DB FD
DB 8B
DB FF
DB DF
END