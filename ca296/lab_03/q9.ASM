ORG C0
DB "AEIOU"
DB 00

ORG 00
MOV AL,C0

Scanning:
	MOV BL,[AL]
	CMP BL,41
	JZ VOWEL
	CMP BL,45
	JZ VOWEL
	CMP BL,49
	JZ VOWEL
	CMP BL,4F
	JZ VOWEL
	CMP BL,55
	JZ VOWEL
	INC AL
	CMP BL,00
	JNZ Scanning
	JMP END

VOWEL:
	PUSH BL
	INC AL
	JMP Scanning

END:
	END 