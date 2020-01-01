MOV AL,40	;Moves 40 into AL
JMP LOOP	;Jumps Code to LOOP

LOOP:
	MOV [AL],AL	;Moves value in AL register into memory location of value in AL
	INC AL		;Increments AL
	CMP AL,4A	;Tests to see if value in AL is at memory location 4A
	JNZ LOOP	;If CMP returns 0 LOOP stops otherwise continues
	END
	