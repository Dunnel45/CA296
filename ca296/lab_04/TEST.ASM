MOV AL,04
MOV BL,02
JMP TEST

TEST:
	CMP AL,BL
	JNS END

END:
	END