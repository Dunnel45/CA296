ORG C0	;start placing instructions in VDU
DB "A"	;Drop A into C0
DB "E"	;Drop A into C1
DB "I"	;Drop A into C2
DB "O"	;Drop A into C3
DB "U"	;Drop A into C4
DB 00	;Put in 00 to mark end of the string so loop can stop

ORG 00	;place code at 00 so you don't overwrite string
MOV AL,C0	;Move C0 into AL which is where VDU starts
MOV CL,5A	;Move 5A into CL which is the hex for "Z"

Check_A:	;Loop to check if character is "A"
	MOV BL, [AL]	;Move whats in the location C0 into BL
	CMP BL, 41	;Check if it is a
	JZ REPLACE	;Move to replace loop
	CMP BL, 45	;Check if it is e
	JZ REPLACE	;Move to replace loop
	CMP BL, 49	;Check if it is i
	JZ REPLACE	;Move to replace loop
	CMP BL, 4F	;Check if it is o
	JZ REPLACE	;Move to replace loop
	CMP BL, 55	;Check if it is u
	JZ REPLACE	;If the outcome is 0 which means it's "A" jump to replace loop
	INC AL		;Increment AL
	CMP BL,00	;Check if we have reached the end of the string
	JNZ Check_A	;Start the loop again once we are not at the end of the string
	JMP END		;Jump to the end of the file

REPLACE:	;Loop to replace "A" with "Z"
	MOV [AL],CL	;Move "Z" in location of "A"
	JMP Check_A	;Jump back to check a loop

END:
	END
	
