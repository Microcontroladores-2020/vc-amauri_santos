	GOTO SETUP
ZEROSET:
	MOVLW 0xBF
	MOVWF PORTB
	NOP
	RETURN
ONESET:
	MOVLW 0x86
	MOVWF PORTB
	NOP
	RETURN
TWOSET
	MOVLW 0xDB
	MOVWF PORTB
	NOP
	RETURN
THREESET
	MOVLW 0xCF
	MOVWF PORTB
	NOP
	RETURN
FOURSET
	MOVLW 0xE6
	MOVWF PORTB
	NOP
	RETURN
FIVESET
	MOVLW 0xED
	MOVWF PORTB
	NOP
	RETURN
SIXSET
	MOVLW 0xFD
	MOVWF PORTB
	NOP
	RETURN
SEVENSET
	MOVLW 0x87
	MOVWF PORTB
	NOP
	RETURN
EIGHTSET
	MOVLW 0xFF
	MOVWF PORTB
	NOP
	RETURN
NINESET
	MOVLW 0xEF
	MOVWF PORTB
	NOP
	RETURN
DISP1
	MOVLW 0x00
	MOVWF PORTD
	MOVLW 0X40
	MOVWF PORTC
	CALL ZEROSET
	CALL ONESET
	CALL TWOSET
	CALL THREESET
	CALL FOURSET
	CALL FIVESET
	CALL SIXSET
	CALL SEVENSET
	CALL EIGHTSET
	CALL NINESET
	MOVLW 0X00
	MOVWF PORTD
	MOVLW 0X80
	MOVWF PORTC
	RETURN
DISP2
	MOVLW 0X00
	MOVWF PORTD
	MOVLW 0x80
	MOVWF PORTC
	CALL ZEROSET
	CALL DISP1
	CALL ONESET
	CALL DISP1
	CALL TWOSET
	CALL DISP1
	CALL THREESET
	CALL DISP1
	CALL FOURSET
	CALL DISP1
	CALL FIVESET
	CALL DISP1
	CALL SIXSET
	CALL DISP1
	CALL SEVENSET
	CALL DISP1
	CALL EIGHTSET
	CALL DISP1
	CALL NINESET
	MOVLW 0X00
	MOVWF PORTC
	MOVLW 0X10
	MOVWF PORTD
	RETURN
DISP3
	MOVLW 0X00
	MOVWF PORTC
	MOVLW 0x10
	MOVWF PORTD
	CALL ZEROSET
	CALL DISP2
	CALL ONESET
	CALL DISP2
	CALL TWOSET
	CALL DISP2
	CALL THREESET
	CALL DISP2
	CALL FOURSET
	CALL DISP2
	CALL FIVESET
	CALL DISP2
	CALL SIXSET
	CALL DISP2
	CALL SEVENSET
	CALL DISP2
	CALL EIGHTSET
	CALL DISP2
	CALL NINESET
	MOVLW 0X00
	MOVWF PORTC
	MOVLW 0X20
	MOVWF PORTD
	RETURN
DISP4
	MOVLW 0X00
	MOVWF PORTC
	MOVLW 0x20
	MOVWF PORTD
	CALL ZEROSET
	CALL DISP3
	CALL ONESET
	CALL DISP3
	CALL TWOSET
	CALL DISP3
	CALL THREESET
	CALL DISP3
	CALL FOURSET
	CALL DISP3
	CALL FIVESET
	CALL DISP3
	CALL SIXSET
	CALL DISP3
	CALL SEVENSET
	CALL DISP3
	CALL EIGHTSET
	CALL DISP3
	CALL NINESET
	MOVLW 0X00
	MOVWF PORTC
	MOVLW 0X40
	MOVWF PORTD
	RETURN
DISP5
	MOVLW 0X00
	MOVWF PORTC
	MOVLW 0x40
	MOVWF PORTD
	CALL ZEROSET
	CALL DISP4
	CALL ONESET
	CALL DISP4
	CALL TWOSET
	CALL DISP4
	CALL THREESET
	CALL DISP4
	CALL FOURSET
	CALL DISP4
	CALL FIVESET
	CALL DISP4
	CALL SIXSET
	CALL DISP4
	CALL SEVENSET
	CALL DISP4
	CALL EIGHTSET
	CALL DISP4
	CALL NINESET
	MOVLW 0X00
	MOVWF PORTC
	MOVLW 0X80
	MOVLW PORTD
	RETURN
DISP6
	MOVLW 0X00
	MOVWF PORTC
	MOVLW 0x80
	MOVWF PORTD
	CALL ZEROSET
	CALL DISP5
	CALL ONESET
	CALL DISP5
	CALL TWOSET
	CALL DISP5
	CALL THREESET
	CALL DISP5
	CALL FOURSET
	CALL DISP5
	CALL FIVESET
	CALL DISP5
	CALL SIXSET
	CALL DISP5
	CALL SEVENSET
	CALL DISP5
	CALL EIGHTSET
	CALL DISP5
	CALL NINESET
	GOTO DISP6
SETUP
	BSF STATUS, RP0
	CLRF TRISB
	CLRF TRISC
	CLRF TRISD
	BCF STATUS, RP0
	GOTO DISP6