subtitle "Microchip MPLAB XC8 C Compiler v2.41 (Free license) build 20230208172133 Og1 "

pagewidth 120

	opt flic

	processor	18F4550
include "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\18f4550.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 74 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 151 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 251 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 258 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 336 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 376 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 488 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 539 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 590 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 765 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 844 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 952 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1060 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1168 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1276 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1384 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1492 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1600 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1784 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1860 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1936 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2012 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2088 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2164 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2316 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2455 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2565 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2707 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2828 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2975 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3075 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3187 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3265 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3377 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3429 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3434 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3627 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3632 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3849 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3854 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4003 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4008 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4230 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4327 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4386 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4470 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4554 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4638 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4709 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4780 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4851 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4917 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4924 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4938 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4943 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5153 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5404 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5409 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5416 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5421 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5428 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5433 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5440 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5447 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5568 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5575 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5582 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5589 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5679 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5764 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5769 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5926 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6064 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6244 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6308 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6315 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6322 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6329 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6334 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6491 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6498 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6505 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6512 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6583 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6668 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6787 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6794 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6801 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6808 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6870 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6940 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7202 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7300 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7305 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7410 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7417 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7520 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7527 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7534 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7541 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7690 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7718 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7723 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7988 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8071 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8141 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8155 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8162 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8233 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8247 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8254 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8261 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8275 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8282 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8289 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8296 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8303 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8310 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8317 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8324 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8331 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8345 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8352 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8359 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8366 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8373 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8380 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8387 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8394 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8401 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8408 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8415 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8507 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8584 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8715 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8722 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8731 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8738 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8745 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8752 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8761 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8768 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8775 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8782 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8789 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8796 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8872 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8879 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8886 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8893 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 74 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 151 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 251 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 258 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 336 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 376 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 488 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 539 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 590 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 765 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 844 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 952 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1060 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1168 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1276 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1384 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1492 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1600 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1784 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1860 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1936 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2012 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2088 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2164 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2316 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2455 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2565 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2707 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2828 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2975 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3075 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3187 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3265 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3377 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3429 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3434 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3627 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3632 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3849 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3854 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4003 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4008 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4230 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4327 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4386 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4470 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4554 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4638 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4709 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4780 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4851 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4917 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4924 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4938 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4943 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5153 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5404 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5409 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5416 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5421 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5428 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5433 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5440 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5447 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5568 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5575 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5582 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5589 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5679 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5764 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5769 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5926 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6064 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6244 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6308 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6315 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6322 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6329 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6334 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6491 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6498 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6505 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6512 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6583 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6668 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6787 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6794 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6801 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6808 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6870 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6940 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7202 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7300 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7305 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7410 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7417 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7520 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7527 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7534 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7541 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7690 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7718 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7723 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7988 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8071 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8141 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8155 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8162 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8233 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8247 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8254 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8261 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8275 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8282 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8289 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8296 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8303 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8310 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8317 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8324 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8331 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8345 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8352 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8359 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8366 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8373 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8380 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8387 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8394 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8401 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8408 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8415 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8507 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8584 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8715 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8722 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8731 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8738 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8745 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8752 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8761 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8768 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8775 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8782 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8789 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8796 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8872 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8879 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8886 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8893 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 74 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 151 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 251 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 258 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 336 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 376 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 488 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 539 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 590 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 765 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 844 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 952 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1060 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1168 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1276 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1384 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1492 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1600 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1784 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1860 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1936 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2012 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2088 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2164 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2316 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2455 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2565 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2707 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2828 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2975 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3075 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3187 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3265 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3377 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3429 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3434 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3627 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3632 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3849 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3854 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4003 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4008 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4230 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4327 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4386 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4470 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4554 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4638 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4709 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4780 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4851 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4917 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4924 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4938 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4943 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5153 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5404 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5409 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5416 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5421 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5428 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5433 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5440 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5447 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5568 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5575 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5582 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5589 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5679 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5764 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5769 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5926 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6064 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6244 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6308 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6315 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6322 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6329 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6334 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6491 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6498 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6505 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6512 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6583 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6668 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6787 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6794 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6801 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6808 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6870 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6940 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7202 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7300 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7305 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7410 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7417 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7520 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7527 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7534 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7541 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7690 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7718 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7723 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7988 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8071 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8141 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8155 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8162 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8233 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8247 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8254 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8261 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8275 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8282 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8289 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8296 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8303 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8310 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8317 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8324 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8331 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8345 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8352 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8359 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8366 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8373 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8380 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8387 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8394 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8401 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8408 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8415 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8507 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8584 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8715 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8722 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8731 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8738 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8745 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8752 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8761 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8768 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8775 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8782 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8789 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8796 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8872 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8879 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8886 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8893 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 74 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 151 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 251 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 258 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 336 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 376 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 488 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 539 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 590 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 765 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 844 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 952 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1060 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1168 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1276 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1384 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1492 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1600 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1784 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1860 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1936 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2012 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2088 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2164 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2316 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2455 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2565 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2707 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2828 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2975 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3075 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3187 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3265 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3377 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3429 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3434 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3627 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3632 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3849 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3854 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4003 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4008 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4230 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4327 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4386 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4470 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4554 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4638 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4709 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4780 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4851 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4917 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4924 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4938 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4943 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5153 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5404 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5409 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5416 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5421 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5428 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5433 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5440 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5447 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5568 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5575 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5582 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5589 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5679 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5764 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5769 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5926 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6064 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6244 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6308 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6315 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6322 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6329 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6334 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6491 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6498 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6505 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6512 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6583 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6668 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6787 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6794 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6801 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6808 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6870 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6940 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7202 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7300 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7305 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7410 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7417 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7520 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7527 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7534 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7541 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7690 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7718 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7723 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7988 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8071 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8141 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8155 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8162 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8233 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8247 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8254 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8261 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8275 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8282 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8289 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8296 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8303 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8310 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8317 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8324 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8331 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8345 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8352 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8359 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8366 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8373 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8380 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8387 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8394 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8401 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8408 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8415 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8507 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8584 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8715 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8722 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8731 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8738 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8745 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8752 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8761 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8768 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8775 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8782 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8789 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8796 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8872 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8879 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8886 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8893 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
# 54 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPDATA equ 0F62h ;# 
# 74 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCFG equ 0F63h ;# 
# 151 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPEPS equ 0F64h ;# 
# 225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPPCON equ 0F65h ;# 
# 251 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRM equ 0F66h ;# 
# 258 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRML equ 0F66h ;# 
# 336 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UFRMH equ 0F67h ;# 
# 376 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIR equ 0F68h ;# 
# 432 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UIE equ 0F69h ;# 
# 488 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIR equ 0F6Ah ;# 
# 539 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEIE equ 0F6Bh ;# 
# 590 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
USTAT equ 0F6Ch ;# 
# 650 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCON equ 0F6Dh ;# 
# 701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UADDR equ 0F6Eh ;# 
# 765 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UCFG equ 0F6Fh ;# 
# 844 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP0 equ 0F70h ;# 
# 952 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP1 equ 0F71h ;# 
# 1060 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP2 equ 0F72h ;# 
# 1168 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP3 equ 0F73h ;# 
# 1276 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP4 equ 0F74h ;# 
# 1384 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP5 equ 0F75h ;# 
# 1492 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP6 equ 0F76h ;# 
# 1600 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP7 equ 0F77h ;# 
# 1708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP8 equ 0F78h ;# 
# 1784 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP9 equ 0F79h ;# 
# 1860 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP10 equ 0F7Ah ;# 
# 1936 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP11 equ 0F7Bh ;# 
# 2012 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP12 equ 0F7Ch ;# 
# 2088 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP13 equ 0F7Dh ;# 
# 2164 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP14 equ 0F7Eh ;# 
# 2240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
UEP15 equ 0F7Fh ;# 
# 2316 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTA equ 0F80h ;# 
# 2455 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTB equ 0F81h ;# 
# 2565 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTC equ 0F82h ;# 
# 2707 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTD equ 0F83h ;# 
# 2828 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PORTE equ 0F84h ;# 
# 2975 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATA equ 0F89h ;# 
# 3075 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATB equ 0F8Ah ;# 
# 3187 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATC equ 0F8Bh ;# 
# 3265 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATD equ 0F8Ch ;# 
# 3377 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LATE equ 0F8Dh ;# 
# 3429 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISA equ 0F92h ;# 
# 3434 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRA equ 0F92h ;# 
# 3627 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISB equ 0F93h ;# 
# 3632 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRB equ 0F93h ;# 
# 3849 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISC equ 0F94h ;# 
# 3854 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRC equ 0F94h ;# 
# 4003 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISD equ 0F95h ;# 
# 4008 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRD equ 0F95h ;# 
# 4225 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TRISE equ 0F96h ;# 
# 4230 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
DDRE equ 0F96h ;# 
# 4327 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCTUNE equ 0F9Bh ;# 
# 4386 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE1 equ 0F9Dh ;# 
# 4470 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR1 equ 0F9Eh ;# 
# 4554 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR1 equ 0F9Fh ;# 
# 4638 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIE2 equ 0FA0h ;# 
# 4709 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PIR2 equ 0FA1h ;# 
# 4780 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
IPR2 equ 0FA2h ;# 
# 4851 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON1 equ 0FA6h ;# 
# 4917 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EECON2 equ 0FA7h ;# 
# 4924 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEDATA equ 0FA8h ;# 
# 4931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
EEADR equ 0FA9h ;# 
# 4938 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA equ 0FABh ;# 
# 4943 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCSTA1 equ 0FABh ;# 
# 5148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA equ 0FACh ;# 
# 5153 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXSTA1 equ 0FACh ;# 
# 5404 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG equ 0FADh ;# 
# 5409 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TXREG1 equ 0FADh ;# 
# 5416 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG equ 0FAEh ;# 
# 5421 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCREG1 equ 0FAEh ;# 
# 5428 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG equ 0FAFh ;# 
# 5433 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRG1 equ 0FAFh ;# 
# 5440 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SPBRGH equ 0FB0h ;# 
# 5447 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T3CON equ 0FB1h ;# 
# 5568 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3 equ 0FB2h ;# 
# 5575 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3L equ 0FB2h ;# 
# 5582 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR3H equ 0FB3h ;# 
# 5589 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CMCON equ 0FB4h ;# 
# 5679 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CVRCON equ 0FB5h ;# 
# 5764 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1AS equ 0FB6h ;# 
# 5769 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1AS equ 0FB6h ;# 
# 5926 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1DEL equ 0FB7h ;# 
# 5931 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1DEL equ 0FB7h ;# 
# 6064 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCON equ 0FB8h ;# 
# 6069 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BAUDCTL equ 0FB8h ;# 
# 6244 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP2CON equ 0FBAh ;# 
# 6308 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2 equ 0FBBh ;# 
# 6315 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2L equ 0FBBh ;# 
# 6322 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR2H equ 0FBCh ;# 
# 6329 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCP1CON equ 0FBDh ;# 
# 6334 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ECCP1CON equ 0FBDh ;# 
# 6491 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1 equ 0FBEh ;# 
# 6498 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1L equ 0FBEh ;# 
# 6505 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
CCPR1H equ 0FBFh ;# 
# 6512 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON2 equ 0FC0h ;# 
# 6583 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON1 equ 0FC1h ;# 
# 6668 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADCON0 equ 0FC2h ;# 
# 6787 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRES equ 0FC3h ;# 
# 6794 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESL equ 0FC3h ;# 
# 6801 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
ADRESH equ 0FC4h ;# 
# 6808 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON2 equ 0FC5h ;# 
# 6870 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPCON1 equ 0FC6h ;# 
# 6940 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPSTAT equ 0FC7h ;# 
# 7188 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPADD equ 0FC8h ;# 
# 7195 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
SSPBUF equ 0FC9h ;# 
# 7202 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T2CON equ 0FCAh ;# 
# 7300 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PR2 equ 0FCBh ;# 
# 7305 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
MEMCON equ 0FCBh ;# 
# 7410 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR2 equ 0FCCh ;# 
# 7417 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T1CON equ 0FCDh ;# 
# 7520 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1 equ 0FCEh ;# 
# 7527 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1L equ 0FCEh ;# 
# 7534 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR1H equ 0FCFh ;# 
# 7541 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
RCON equ 0FD0h ;# 
# 7690 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WDTCON equ 0FD1h ;# 
# 7718 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
HLVDCON equ 0FD2h ;# 
# 7723 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
LVDCON equ 0FD2h ;# 
# 7988 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
OSCCON equ 0FD3h ;# 
# 8071 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
T0CON equ 0FD5h ;# 
# 8141 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0 equ 0FD6h ;# 
# 8148 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0L equ 0FD6h ;# 
# 8155 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TMR0H equ 0FD7h ;# 
# 8162 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STATUS equ 0FD8h ;# 
# 8233 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2 equ 0FD9h ;# 
# 8240 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2L equ 0FD9h ;# 
# 8247 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR2H equ 0FDAh ;# 
# 8254 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW2 equ 0FDBh ;# 
# 8261 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC2 equ 0FDCh ;# 
# 8268 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC2 equ 0FDDh ;# 
# 8275 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC2 equ 0FDEh ;# 
# 8282 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF2 equ 0FDFh ;# 
# 8289 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
BSR equ 0FE0h ;# 
# 8296 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1 equ 0FE1h ;# 
# 8303 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1L equ 0FE1h ;# 
# 8310 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR1H equ 0FE2h ;# 
# 8317 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW1 equ 0FE3h ;# 
# 8324 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC1 equ 0FE4h ;# 
# 8331 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC1 equ 0FE5h ;# 
# 8338 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC1 equ 0FE6h ;# 
# 8345 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF1 equ 0FE7h ;# 
# 8352 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
WREG equ 0FE8h ;# 
# 8359 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0 equ 0FE9h ;# 
# 8366 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0L equ 0FE9h ;# 
# 8373 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
FSR0H equ 0FEAh ;# 
# 8380 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PLUSW0 equ 0FEBh ;# 
# 8387 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PREINC0 equ 0FECh ;# 
# 8394 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTDEC0 equ 0FEDh ;# 
# 8401 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
POSTINC0 equ 0FEEh ;# 
# 8408 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INDF0 equ 0FEFh ;# 
# 8415 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON3 equ 0FF0h ;# 
# 8507 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON2 equ 0FF1h ;# 
# 8584 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
INTCON equ 0FF2h ;# 
# 8701 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PROD equ 0FF3h ;# 
# 8708 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODL equ 0FF3h ;# 
# 8715 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PRODH equ 0FF4h ;# 
# 8722 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TABLAT equ 0FF5h ;# 
# 8731 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTR equ 0FF6h ;# 
# 8738 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRL equ 0FF6h ;# 
# 8745 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRH equ 0FF7h ;# 
# 8752 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TBLPTRU equ 0FF8h ;# 
# 8761 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLAT equ 0FF9h ;# 
# 8768 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PC equ 0FF9h ;# 
# 8775 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCL equ 0FF9h ;# 
# 8782 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATH equ 0FFAh ;# 
# 8789 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
PCLATU equ 0FFBh ;# 
# 8796 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
STKPTR equ 0FFCh ;# 
# 8872 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOS equ 0FFDh ;# 
# 8879 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSL equ 0FFDh ;# 
# 8886 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSH equ 0FFEh ;# 
# 8893 "C:/Program Files/Microchip/MPLABX/v6.10/packs/Microchip/PIC18Fxxxx_DFP/1.4.151/xc8\pic\include\proc\pic18f4550.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_io_encoder_button_is_pressed
	FNCALL	_main,_io_encoder_loop
	FNCALL	_main,_io_get_battery_status_from_GPIO
	FNCALL	_main,_io_get_cautin_temperature_from_ADC
	FNCALL	_main,_io_get_setpoint_from_ENCODER
	FNCALL	_main,_io_init
	FNCALL	_main,_io_set_cautin_duty_cycle_PWM
	FNCALL	_main,_pid_execute
	FNCALL	_main,_pid_get_setpoint
	FNCALL	_main,_pid_init
	FNCALL	_main,_pid_set_setpoint
	FNCALL	_main,_screen_init
	FNCALL	_main,_screen_set_battery_status
	FNCALL	_main,_screen_set_temperature_cautin
	FNCALL	_main,_screen_set_temperature_setpoint
	FNCALL	_main,_snprintf
	FNCALL	_main,_software_uart_init
	FNCALL	_main,_software_uart_print_string
	FNCALL	_main,_systimer_get_ms
	FNCALL	_main,_systimer_init
	FNCALL	_software_uart_print_string,_software_uart_print_char
	FNCALL	_snprintf,_vfprintf
	FNCALL	_vfprintf,_vfpfcnvrt
	FNCALL	_vfpfcnvrt,_efgtoa
	FNCALL	_vfpfcnvrt,_fputc
	FNCALL	_vfpfcnvrt,_read_prec_or_width
	FNCALL	_read_prec_or_width,___wmul
	FNCALL	_efgtoa,___fladd
	FNCALL	_efgtoa,___fldiv
	FNCALL	_efgtoa,___fleq
	FNCALL	_efgtoa,___flge
	FNCALL	_efgtoa,___flmul
	FNCALL	_efgtoa,___flneg
	FNCALL	_efgtoa,___flsub
	FNCALL	_efgtoa,___fltol
	FNCALL	_efgtoa,___fpclassifyf
	FNCALL	_efgtoa,_floorf
	FNCALL	_efgtoa,_labs
	FNCALL	_efgtoa,_memcpy
	FNCALL	_efgtoa,_pad
	FNCALL	_efgtoa,_strcpy
	FNCALL	_pad,_fputc
	FNCALL	_pad,_fputs
	FNCALL	_pad,_strlen
	FNCALL	_fputs,_fputc
	FNCALL	_fputc,_putch
	FNCALL	_pid_execute,___fladd
	FNCALL	_pid_execute,___fldiv
	FNCALL	_pid_execute,___flge
	FNCALL	_pid_execute,___flmul
	FNCALL	_pid_execute,___flsub
	FNCALL	_pid_execute,___fltol
	FNCALL	_io_get_cautin_temperature_from_ADC,___flmul
	FNCALL	_io_get_cautin_temperature_from_ADC,___xxtofl
	FNCALL	_io_encoder_loop,___fladd
	FNCALL	_io_encoder_loop,___flge
	FNCALL	_io_encoder_loop,___flsub
	FNCALL	___flsub,___fladd
	FNROOT	_main
	FNCALL	_isr,_ISR_TIMER_0
	FNCALL	_isr,_ISR_TIMER_1
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_prevBA
	global	_setpoint@pid$F1083
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"input_output.c"
	line	58

;initializer for _prevBA
	db	low(03h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	file	"pid.c"
	line	6

;initializer for _kp
	dw	(normalize32(0x3f800000) & 0ffffh)
	dw	highword (normalize32(0x3f800000))
	line	5

;initializer for _setpoint@pid$F1083
	dw	(normalize32(0x43480000) & 0ffffh)
	dw	highword (normalize32(0x43480000))
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	7

;initializer for _ki
	dw	(normalize32(0x3c23d70a) & 0ffffh)
	dw	highword (normalize32(0x3c23d70a))
psect	smallconst,class=SMALLCONST,space=0,reloc=2,noexec
global __psmallconst
__psmallconst:
	db	0
	file	"software_uart.c"
	line	10
_bit_lenght:
	db	low(08h)
	global __end_of_bit_lenght
__end_of_bit_lenght:
psect	smallconst
	file	"software_uart.c"
	line	11
_bittime_us:
	db	low(068h)
	global __end_of_bittime_us
__end_of_bittime_us:
	global	_counter
	global	_duty
	global	_battery_status
	global	floorf@F526
	global	___fpclassifyf@F465
	global	_uk1
	global	_ek2
	global	_ek1
	global	_setpoint
	global	__ms
	global	_temperature_cautin
	global	_temperature_setpoint
	global	_nout
	global	_width
	global	_prec
	global	_errno
	global	_flags
	global	_dbuf
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISBbits
_TRISBbits	set	0xF93
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_ADCON0bits
_ADCON0bits	set	0xFC2
	global	_PORTAbits
_PORTAbits	set	0xF80
	global	_PORTCbits
_PORTCbits	set	0xF82
	global	_LATCbits
_LATCbits	set	0xF8B
	global	_LATDbits
_LATDbits	set	0xF8C
	global	_TRISAbits
_TRISAbits	set	0xF92
	global	_TRISCbits
_TRISCbits	set	0xF94
	global	_TRISDbits
_TRISDbits	set	0xF95
	global	_PIE1bits
_PIE1bits	set	0xF9D
	global	_PIR1bits
_PIR1bits	set	0xF9E
	global	_ADCON2bits
_ADCON2bits	set	0xFC0
	global	_ADCON1bits
_ADCON1bits	set	0xFC1
	global	_T0CONbits
_T0CONbits	set	0xFD5
	global	_INTCONbits
_INTCONbits	set	0xFF2
	global	_TMR0
_TMR0	set	0xFD6
	global	_ADRES
_ADRES	set	0xFC3
	global	_T1CONbits
_T1CONbits	set	0xFCD
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_TMR1
_TMR1	set	0xFCE
	
STR_2:
	db	115	;'s'
	db	101	;'e'
	db	116	;'t'
	db	112	;'p'
	db	111	;'o'
	db	105	;'i'
	db	110	;'n'
	db	116	;'t'
	db	32
	db	61	;'='
	db	32
	db	37
	db	102	;'f'
	db	32
	db	124
	db	124
	db	32
	db	99	;'c'
	db	97	;'a'
	db	117	;'u'
	db	116	;'t'
	db	105	;'i'
	db	110	;'n'
	db	32
	db	84	;'T'
	db	32
	db	61	;'='
	db	32
	db	37
	db	102	;'f'
	db	10
	db	13
	db	0
	
STR_1:
	db	37
	db	46
	db	50	;'2'
	db	102	;'f'
	db	44
	db	37
	db	46
	db	50	;'2'
	db	102	;'f'
	db	13
	db	0
	
STR_3:
	db	105	;'i'
	db	110	;'n'
	db	102	;'f'
	db	0
	
STR_6:
	db	110	;'n'
	db	97	;'a'
	db	110	;'n'
	db	0
STR_7	equ	STR_6+0
STR_8	equ	STR_6+0
STR_4	equ	STR_3+0
STR_5	equ	STR_3+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	config PLLDIV = "5"
	config CPUDIV = "OSC1_PLL2"
	config USBDIV = "2"
	config FOSC = "HSPLL_HS"
	config FCMEN = "OFF"
	config IESO = "OFF"
	config PWRT = "ON"
	config BOR = "OFF"
	config BORV = "3"
	config VREGEN = "OFF"
	config WDT = "OFF"
	config WDTPS = "32768"
	config CCP2MX = "ON"
	config PBADEN = "OFF"
	config LPT1OSC = "OFF"
	config MCLRE = "ON"
	config STVREN = "ON"
	config LVP = "OFF"
	config ICPRT = "OFF"
	config XINST = "OFF"
	config CP0 = "OFF"
	config CP1 = "OFF"
	config CP2 = "OFF"
	config CP3 = "OFF"
	config CPB = "OFF"
	config CPD = "OFF"
	config WRT0 = "OFF"
	config WRT1 = "OFF"
	config WRT2 = "OFF"
	config WRT3 = "OFF"
	config WRTC = "OFF"
	config WRTB = "OFF"
	config WRTD = "OFF"
	config EBTR0 = "OFF"
	config EBTR1 = "OFF"
	config EBTR2 = "OFF"
	config EBTR3 = "OFF"
	config EBTRB = "OFF"
	file	"dist/default/production\test4550.X.production.s"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_counter
_counter:
       ds      1
	global	_duty
_duty:
       ds      1
_battery_status:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"input_output.c"
	line	58
_prevBA:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
floorf@F526:
       ds      4
___fpclassifyf@F465:
       ds      4
_uk1:
       ds      4
_ek2:
       ds      4
_ek1:
       ds      4
_setpoint:
       ds      4
	global	__ms
__ms:
       ds      4
_temperature_cautin:
       ds      4
_temperature_setpoint:
       ds      4
_nout:
       ds      2
_width:
       ds      2
_prec:
       ds      2
	global	_errno
_errno:
       ds      2
_flags:
       ds      1
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"pid.c"
	line	6
_kp:
       ds      4
psect	dataBANK0
	file	"pid.c"
	line	5
_setpoint@pid$F1083:
       ds      4
psect	bssBANK1,class=BANK1,space=1,noexec,lowdata
global __pbssBANK1
__pbssBANK1:
_kd:
       ds      4
_dbuf:
       ds      80
psect	dataBANK1,class=BANK1,space=1,noexec,lowdata
global __pdataBANK1
__pdataBANK1:
	file	"pid.c"
	line	7
_ki:
       ds      4
	file	"dist/default/production\test4550.X.production.s"
	line	#
psect	cinit
; Initialize objects allocated to BANK1 (4 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,4
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (8 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,8
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
; Initialize objects allocated to COMRAM (1 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	line	#
; Clear objects allocated to BANK1 (84 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	84
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (45 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	45
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to COMRAM (3 bytes)
	global __pbssCOMRAM
clrf	(__pbssCOMRAM+2)&0xffh,c
clrf	(__pbssCOMRAM+1)&0xffh,c
clrf	(__pbssCOMRAM+0)&0xffh,c
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec,lowdata
global __pcstackBANK1
__pcstackBANK1:
??_main:	; 1 bytes @ 0x0
	ds   4
	global	main@txt
main@txt:	; 50 bytes @ 0x4
	ds   50
	global	main@screen_countMS
main@screen_countMS:	; 4 bytes @ 0x36
	ds   4
	global	main@pid_countMS
main@pid_countMS:	; 4 bytes @ 0x3A
	ds   4
	global	main@duty
main@duty:	; 1 bytes @ 0x3E
	ds   1
	global	main@cautin_temperature
main@cautin_temperature:	; 4 bytes @ 0x3F
	ds   4
psect	cstackBANK0,class=BANK0,space=1,noexec,lowdata
global __pcstackBANK0
__pcstackBANK0:
	global	?_efgtoa
?_efgtoa:	; 2 bytes @ 0x0
	global	efgtoa@fp
efgtoa@fp:	; 2 bytes @ 0x0
	global	_pid_execute$2022
_pid_execute$2022:	; 4 bytes @ 0x0
	ds   2
	global	efgtoa@f
efgtoa@f:	; 4 bytes @ 0x2
	ds   2
	global	_pid_execute$2023
_pid_execute$2023:	; 4 bytes @ 0x4
	ds   2
	global	efgtoa@c
efgtoa@c:	; 1 bytes @ 0x6
	ds   1
	global	efgtoa@ne
efgtoa@ne:	; 2 bytes @ 0x7
	ds   1
	global	_pid_execute$2024
_pid_execute$2024:	; 4 bytes @ 0x8
	ds   1
	global	efgtoa@p
efgtoa@p:	; 2 bytes @ 0x9
	ds   2
	global	efgtoa@t
efgtoa@t:	; 2 bytes @ 0xB
	ds   1
	global	_pid_execute$2025
_pid_execute$2025:	; 4 bytes @ 0xC
	ds   1
	global	_efgtoa$1677
_efgtoa$1677:	; 2 bytes @ 0xD
	ds   2
	global	efgtoa@pp
efgtoa@pp:	; 1 bytes @ 0xF
	ds   1
	global	efgtoa@mode
efgtoa@mode:	; 1 bytes @ 0x10
	global	_pid_execute$2026
_pid_execute$2026:	; 4 bytes @ 0x10
	ds   1
	global	efgtoa@nmode
efgtoa@nmode:	; 1 bytes @ 0x11
	ds   1
	global	efgtoa@d
efgtoa@d:	; 2 bytes @ 0x12
	ds   2
	global	efgtoa@m
efgtoa@m:	; 2 bytes @ 0x14
	global	_pid_execute$2027
_pid_execute$2027:	; 4 bytes @ 0x14
	ds   2
	global	efgtoa@e
efgtoa@e:	; 2 bytes @ 0x16
	ds   2
	global	efgtoa@w
efgtoa@w:	; 2 bytes @ 0x18
	global	pid_execute@ek
pid_execute@ek:	; 4 bytes @ 0x18
	ds   2
	global	efgtoa@ou
efgtoa@ou:	; 4 bytes @ 0x1A
	ds   2
	global	pid_execute@uk
pid_execute@uk:	; 4 bytes @ 0x1C
	ds   2
	global	efgtoa@i
efgtoa@i:	; 2 bytes @ 0x1E
	ds   2
	global	efgtoa@h
efgtoa@h:	; 4 bytes @ 0x20
	ds   4
	global	efgtoa@l
efgtoa@l:	; 4 bytes @ 0x24
	ds   4
	global	efgtoa@sign
efgtoa@sign:	; 1 bytes @ 0x28
	ds   1
	global	efgtoa@g
efgtoa@g:	; 4 bytes @ 0x29
	ds   4
	global	efgtoa@n
efgtoa@n:	; 2 bytes @ 0x2D
	ds   2
	global	efgtoa@u
efgtoa@u:	; 4 bytes @ 0x2F
	ds   4
	global	?_vfpfcnvrt
?_vfpfcnvrt:	; 2 bytes @ 0x33
	global	vfpfcnvrt@fp
vfpfcnvrt@fp:	; 2 bytes @ 0x33
	ds   2
	global	vfpfcnvrt@fmt
vfpfcnvrt@fmt:	; 2 bytes @ 0x35
	ds   2
	global	vfpfcnvrt@ap
vfpfcnvrt@ap:	; 2 bytes @ 0x37
	ds   2
	global	vfpfcnvrt@convarg
vfpfcnvrt@convarg:	; 4 bytes @ 0x39
	ds   4
	global	vfpfcnvrt@c
vfpfcnvrt@c:	; 1 bytes @ 0x3D
	ds   1
	global	vfpfcnvrt@cp
vfpfcnvrt@cp:	; 2 bytes @ 0x3E
	ds   2
	global	?_vfprintf
?_vfprintf:	; 2 bytes @ 0x40
	global	vfprintf@fp
vfprintf@fp:	; 2 bytes @ 0x40
	ds   2
	global	vfprintf@fmt
vfprintf@fmt:	; 2 bytes @ 0x42
	ds   2
	global	vfprintf@ap
vfprintf@ap:	; 2 bytes @ 0x44
	ds   2
	global	?_snprintf
?_snprintf:	; 2 bytes @ 0x46
	global	snprintf@s
snprintf@s:	; 2 bytes @ 0x46
	ds   2
	global	snprintf@n
snprintf@n:	; 2 bytes @ 0x48
	ds   2
	global	snprintf@fmt
snprintf@fmt:	; 2 bytes @ 0x4A
	ds   10
??_snprintf:	; 1 bytes @ 0x54
	ds   3
	global	_snprintf$1578
_snprintf$1578:	; 2 bytes @ 0x57
	ds   2
	global	snprintf@ap
snprintf@ap:	; 2 bytes @ 0x59
	ds   2
	global	snprintf@cnt
snprintf@cnt:	; 2 bytes @ 0x5B
	ds   2
	global	snprintf@f
snprintf@f:	; 12 bytes @ 0x5D
	ds   12
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_io_init:	; 1 bytes @ 0x0
?_software_uart_init:	; 1 bytes @ 0x0
?_screen_init:	; 1 bytes @ 0x0
?_systimer_init:	; 1 bytes @ 0x0
?_pid_init:	; 1 bytes @ 0x0
?_io_encoder_loop:	; 1 bytes @ 0x0
?_io_encoder_button_is_pressed:	; 1 bytes @ 0x0
?_screen_set_battery_status:	; 1 bytes @ 0x0
?_io_get_battery_status_from_GPIO:	; 1 bytes @ 0x0
?_io_set_cautin_duty_cycle_PWM:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_software_uart_print_char:	; 1 bytes @ 0x0
?_ISR_TIMER_0:	; 1 bytes @ 0x0
??_ISR_TIMER_0:	; 1 bytes @ 0x0
?_ISR_TIMER_1:	; 1 bytes @ 0x0
??_ISR_TIMER_1:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
putch@c:	; 1 bytes @ 0x0
	ds   3
?___fleq:	; 1 bit 
??_io_init:	; 1 bytes @ 0x3
??_software_uart_init:	; 1 bytes @ 0x3
??_screen_init:	; 1 bytes @ 0x3
??_systimer_init:	; 1 bytes @ 0x3
??_pid_init:	; 1 bytes @ 0x3
??_io_encoder_button_is_pressed:	; 1 bytes @ 0x3
??_screen_set_battery_status:	; 1 bytes @ 0x3
??_io_get_battery_status_from_GPIO:	; 1 bytes @ 0x3
??_io_set_cautin_duty_cycle_PWM:	; 1 bytes @ 0x3
??_putch:	; 1 bytes @ 0x3
??_software_uart_print_char:	; 1 bytes @ 0x3
?_fputc:	; 2 bytes @ 0x3
	global	?_strlen
?_strlen:	; 2 bytes @ 0x3
	global	?___fpclassifyf
?___fpclassifyf:	; 2 bytes @ 0x3
?_strcpy:	; 2 bytes @ 0x3
?_memcpy:	; 2 bytes @ 0x3
	global	?___wmul
?___wmul:	; 2 bytes @ 0x3
	global	?_io_get_setpoint_from_ENCODER
?_io_get_setpoint_from_ENCODER:	; 4 bytes @ 0x3
	global	?_systimer_get_ms
?_systimer_get_ms:	; 4 bytes @ 0x3
	global	?_pid_get_setpoint
?_pid_get_setpoint:	; 4 bytes @ 0x3
	global	?___fldiv
?___fldiv:	; 4 bytes @ 0x3
	global	?_labs
?_labs:	; 4 bytes @ 0x3
	global	?___flneg
?___flneg:	; 4 bytes @ 0x3
	global	?___fltol
?___fltol:	; 4 bytes @ 0x3
	global	?___xxtofl
?___xxtofl:	; 4 bytes @ 0x3
	global	screen_set_battery_status@status
screen_set_battery_status@status:	; 1 bytes @ 0x3
	global	software_uart_print_char@c
software_uart_print_char@c:	; 1 bytes @ 0x3
	global	io_set_cautin_duty_cycle_PWM@d
io_set_cautin_duty_cycle_PWM@d:	; 1 bytes @ 0x3
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x3
	global	memcpy@d1
memcpy@d1:	; 2 bytes @ 0x3
	global	fputc@c
fputc@c:	; 2 bytes @ 0x3
	global	strcpy@dest
strcpy@dest:	; 2 bytes @ 0x3
	global	strlen@s
strlen@s:	; 2 bytes @ 0x3
	global	___fleq@ff1
___fleq@ff1:	; 4 bytes @ 0x3
	global	___flneg@f1
___flneg@f1:	; 4 bytes @ 0x3
	global	___fltol@f1
___fltol@f1:	; 4 bytes @ 0x3
	global	___fldiv@b
___fldiv@b:	; 4 bytes @ 0x3
	global	___xxtofl@val
___xxtofl@val:	; 4 bytes @ 0x3
	global	___fpclassifyf@x
___fpclassifyf@x:	; 4 bytes @ 0x3
	global	labs@a
labs@a:	; 4 bytes @ 0x3
	ds   1
	global	software_uart_print_char@bits
software_uart_print_char@bits:	; 1 bytes @ 0x4
	ds   1
?_software_uart_print_string:	; 1 bytes @ 0x5
??_strlen:	; 1 bytes @ 0x5
	global	software_uart_print_string@str
software_uart_print_string@str:	; 2 bytes @ 0x5
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x5
	global	memcpy@s1
memcpy@s1:	; 2 bytes @ 0x5
	global	fputc@fp
fputc@fp:	; 2 bytes @ 0x5
	global	strcpy@src
strcpy@src:	; 2 bytes @ 0x5
	global	strlen@a
strlen@a:	; 2 bytes @ 0x5
	ds   2
?_pid_set_setpoint:	; 1 bytes @ 0x7
??_io_get_setpoint_from_ENCODER:	; 1 bytes @ 0x7
??_systimer_get_ms:	; 1 bytes @ 0x7
?_screen_set_temperature_setpoint:	; 1 bytes @ 0x7
??_pid_get_setpoint:	; 1 bytes @ 0x7
??_software_uart_print_string:	; 1 bytes @ 0x7
??_fputc:	; 1 bytes @ 0x7
??___fpclassifyf:	; 1 bytes @ 0x7
??_strcpy:	; 1 bytes @ 0x7
??_labs:	; 1 bytes @ 0x7
??___wmul:	; 1 bytes @ 0x7
??___flneg:	; 1 bytes @ 0x7
??___fltol:	; 1 bytes @ 0x7
??___xxtofl:	; 1 bytes @ 0x7
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x7
	global	memcpy@n
memcpy@n:	; 2 bytes @ 0x7
	global	strcpy@s
strcpy@s:	; 2 bytes @ 0x7
	global	screen_set_temperature_setpoint@f
screen_set_temperature_setpoint@f:	; 4 bytes @ 0x7
	global	systimer_get_ms@ms
systimer_get_ms@ms:	; 4 bytes @ 0x7
	global	pid_set_setpoint@s
pid_set_setpoint@s:	; 4 bytes @ 0x7
	global	___fleq@ff2
___fleq@ff2:	; 4 bytes @ 0x7
	global	___fldiv@a
___fldiv@a:	; 4 bytes @ 0x7
	ds   2
??_memcpy:	; 1 bytes @ 0x9
	global	?_read_prec_or_width
?_read_prec_or_width:	; 2 bytes @ 0x9
	global	memcpy@tmp
memcpy@tmp:	; 1 bytes @ 0x9
	global	read_prec_or_width@fmt
read_prec_or_width@fmt:	; 2 bytes @ 0x9
	global	strcpy@d
strcpy@d:	; 2 bytes @ 0x9
	ds   1
	global	memcpy@d
memcpy@d:	; 2 bytes @ 0xA
	ds   1
??_pid_set_setpoint:	; 1 bytes @ 0xB
??_screen_set_temperature_setpoint:	; 1 bytes @ 0xB
??___fldiv:	; 1 bytes @ 0xB
??___fleq:	; 1 bytes @ 0xB
	global	___fltol@sign1
___fltol@sign1:	; 1 bytes @ 0xB
	global	___xxtofl@sign
___xxtofl@sign:	; 1 bytes @ 0xB
	global	read_prec_or_width@ap
read_prec_or_width@ap:	; 2 bytes @ 0xB
	global	___fpclassifyf@e
___fpclassifyf@e:	; 2 bytes @ 0xB
	ds   1
?_fputs:	; 2 bytes @ 0xC
	global	___fltol@exp1
___fltol@exp1:	; 1 bytes @ 0xC
	global	___xxtofl@exp
___xxtofl@exp:	; 1 bytes @ 0xC
	global	memcpy@s
memcpy@s:	; 2 bytes @ 0xC
	global	fputs@s
fputs@s:	; 2 bytes @ 0xC
	ds   1
??_read_prec_or_width:	; 1 bytes @ 0xD
	global	___xxtofl@arg
___xxtofl@arg:	; 4 bytes @ 0xD
	global	___fpclassifyf@u
___fpclassifyf@u:	; 4 bytes @ 0xD
	ds   1
	global	fputs@fp
fputs@fp:	; 2 bytes @ 0xE
	ds   1
	global	read_prec_or_width@c
read_prec_or_width@c:	; 1 bytes @ 0xF
	global	___fldiv@rem
___fldiv@rem:	; 4 bytes @ 0xF
	ds   1
??_fputs:	; 1 bytes @ 0x10
	global	fputs@c
fputs@c:	; 1 bytes @ 0x10
	global	read_prec_or_width@n
read_prec_or_width@n:	; 2 bytes @ 0x10
	ds   1
	global	fputs@i
fputs@i:	; 2 bytes @ 0x11
	ds   2
	global	?_pad
?_pad:	; 2 bytes @ 0x13
	global	___fldiv@sign
___fldiv@sign:	; 1 bytes @ 0x13
	global	pad@fp
pad@fp:	; 2 bytes @ 0x13
	ds   1
	global	___fldiv@new_exp
___fldiv@new_exp:	; 2 bytes @ 0x14
	ds   1
	global	pad@buf
pad@buf:	; 2 bytes @ 0x15
	ds   1
	global	___fldiv@grs
___fldiv@grs:	; 4 bytes @ 0x16
	ds   1
	global	pad@p
pad@p:	; 2 bytes @ 0x17
	ds   2
??_pad:	; 1 bytes @ 0x19
	ds   1
	global	___fldiv@bexp
___fldiv@bexp:	; 1 bytes @ 0x1A
	global	pad@i
pad@i:	; 2 bytes @ 0x1A
	ds   1
	global	___fldiv@aexp
___fldiv@aexp:	; 1 bytes @ 0x1B
	ds   1
	global	?___fladd
?___fladd:	; 4 bytes @ 0x1C
	global	?_floorf
?_floorf:	; 4 bytes @ 0x1C
	global	pad@w
pad@w:	; 2 bytes @ 0x1C
	global	___fladd@b
___fladd@b:	; 4 bytes @ 0x1C
	global	floorf@x
floorf@x:	; 4 bytes @ 0x1C
	ds   4
??_floorf:	; 1 bytes @ 0x20
	global	___fladd@a
___fladd@a:	; 4 bytes @ 0x20
	ds   4
??___fladd:	; 1 bytes @ 0x24
	ds   2
	global	floorf@m
floorf@m:	; 4 bytes @ 0x26
	ds   2
	global	___fladd@signs
___fladd@signs:	; 1 bytes @ 0x28
	ds   1
	global	___fladd@aexp
___fladd@aexp:	; 1 bytes @ 0x29
	ds   1
	global	___fladd@bexp
___fladd@bexp:	; 1 bytes @ 0x2A
	global	floorf@e
floorf@e:	; 2 bytes @ 0x2A
	ds   1
	global	___fladd@grs
___fladd@grs:	; 1 bytes @ 0x2B
	ds   1
	global	?___flmul
?___flmul:	; 4 bytes @ 0x2C
	global	___flmul@b
___flmul@b:	; 4 bytes @ 0x2C
	global	floorf@u
floorf@u:	; 4 bytes @ 0x2C
	ds   4
	global	___flmul@a
___flmul@a:	; 4 bytes @ 0x30
	ds   4
??___flmul:	; 1 bytes @ 0x34
	ds   4
	global	___flmul@sign
___flmul@sign:	; 1 bytes @ 0x38
	ds   1
	global	___flmul@aexp
___flmul@aexp:	; 1 bytes @ 0x39
	ds   1
	global	___flmul@grs
___flmul@grs:	; 4 bytes @ 0x3A
	ds   4
	global	___flmul@bexp
___flmul@bexp:	; 1 bytes @ 0x3E
	ds   1
	global	___flmul@prod
___flmul@prod:	; 4 bytes @ 0x3F
	ds   4
	global	___flmul@temp
___flmul@temp:	; 2 bytes @ 0x43
	ds   2
?___flge:	; 1 bit 
	global	?_io_get_cautin_temperature_from_ADC
?_io_get_cautin_temperature_from_ADC:	; 4 bytes @ 0x45
	global	?___flsub
?___flsub:	; 4 bytes @ 0x45
	global	___flge@ff1
___flge@ff1:	; 4 bytes @ 0x45
	global	___flsub@b
___flsub@b:	; 4 bytes @ 0x45
	ds   4
?_screen_set_temperature_cautin:	; 1 bytes @ 0x49
??_io_get_cautin_temperature_from_ADC:	; 1 bytes @ 0x49
	global	screen_set_temperature_cautin@f
screen_set_temperature_cautin@f:	; 4 bytes @ 0x49
	global	___flge@ff2
___flge@ff2:	; 4 bytes @ 0x49
	global	___flsub@a
___flsub@a:	; 4 bytes @ 0x49
	ds   4
??_screen_set_temperature_cautin:	; 1 bytes @ 0x4D
??___flsub:	; 1 bytes @ 0x4D
??___flge:	; 1 bytes @ 0x4D
	ds   4
??_io_encoder_loop:	; 1 bytes @ 0x51
?_pid_execute:	; 1 bytes @ 0x51
??_efgtoa:	; 1 bytes @ 0x51
	global	io_encoder_loop@NegEdge_A
io_encoder_loop@NegEdge_A:	; 1 bytes @ 0x51
	global	pid_execute@sensor
pid_execute@sensor:	; 4 bytes @ 0x51
	ds   1
	global	io_encoder_loop@PosEdge_A
io_encoder_loop@PosEdge_A:	; 1 bytes @ 0x52
	ds   1
??_vfpfcnvrt:	; 1 bytes @ 0x53
	global	_io_encoder_loop$1061
_io_encoder_loop$1061:	; 1 bytes @ 0x53
	ds   1
	global	_io_encoder_loop$1063
_io_encoder_loop$1063:	; 1 bytes @ 0x54
	ds   1
??_pid_execute:	; 1 bytes @ 0x55
??_vfprintf:	; 1 bytes @ 0x55
	global	io_encoder_loop@BA
io_encoder_loop@BA:	; 1 bytes @ 0x55
	global	vfprintf@cfmt
vfprintf@cfmt:	; 2 bytes @ 0x55
	ds   2
;!
;!Data Sizes:
;!    Strings     52
;!    Constant    2
;!    Data        13
;!    BSS         132
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     87      91
;!    BANK0           160    105     158
;!    BANK1           256     67     155
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0

;!
;!Pointer List with Targets:
;!
;!    f...source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    f...buffer	PTR unsigned char  size(2) Largest target is 0
;!
;!    strlen@s	PTR const unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    strlen@a	PTR const unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    strcpy@dest	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    strcpy@d	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    strcpy@src	PTR const unsigned char  size(2) Largest target is 4
;!		 -> STR_6(CODE[4]), STR_3(CODE[4]), 
;!
;!    strcpy@s	PTR const unsigned char  size(2) Largest target is 4
;!		 -> STR_6(CODE[4]), STR_3(CODE[4]), 
;!
;!    fputs@s	PTR const unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    fputs@fp	PTR struct _IO_FILE size(2) Largest target is 12
;!		 -> vsprintf@f(COMRAM[12]), snprintf@f(BANK0[12]), 
;!
;!    fputc@fp...source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    fputc@fp...buffer	PTR unsigned char  size(2) Largest target is 0
;!
;!    fputc@fp	PTR struct _IO_FILE size(2) Largest target is 12
;!		 -> vsprintf@f(COMRAM[12]), snprintf@f(BANK0[12]), 
;!
;!    memcpy@d1	PTR void  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    memcpy@d	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    memcpy@s1	PTR const void  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    memcpy@s	PTR const unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    vfprintf@ap	PTR PTR void  size(2) Largest target is 2
;!		 -> snprintf@ap(BANK0[2]), software_uart_print_fmt@args(COMRAM[2]), 
;!
;!    vfprintf@fp	PTR struct _IO_FILE size(2) Largest target is 12
;!		 -> vsprintf@f(COMRAM[12]), snprintf@f(BANK0[12]), 
;!
;!    vfprintf@fmt	PTR const unsigned char  size(2) Largest target is 33
;!		 -> STR_2(CODE[33]), STR_1(CODE[11]), 
;!
;!    vfprintf@cfmt	PTR unsigned char  size(2) Largest target is 33
;!		 -> STR_2(CODE[33]), STR_1(CODE[11]), 
;!
;!    vfpfcnvrt@fp	PTR struct _IO_FILE size(2) Largest target is 12
;!		 -> vsprintf@f(COMRAM[12]), snprintf@f(BANK0[12]), 
;!
;!    vfpfcnvrt@cp	PTR unsigned char  size(2) Largest target is 33
;!		 -> STR_2(CODE[33]), STR_1(CODE[11]), 
;!
;!    vfpfcnvrt@ap	PTR PTR void  size(2) Largest target is 2
;!		 -> snprintf@ap(BANK0[2]), software_uart_print_fmt@args(COMRAM[2]), 
;!
;!    vfpfcnvrt@fmt	PTR PTR unsigned char  size(2) Largest target is 2
;!		 -> vfprintf@cfmt(COMRAM[2]), 
;!
;!    S1634$vp	PTR void  size(2) Largest target is 0
;!
;!    convarg.vp	PTR void  size(2) Largest target is 0
;!
;!    read_prec_or_width@ap	PTR PTR void [1] size(2) Largest target is 2
;!		 -> snprintf@ap(BANK0[2]), software_uart_print_fmt@args(COMRAM[2]), 
;!
;!    read_prec_or_width@fmt	PTR PTR const unsigned char  size(2) Largest target is 2
;!		 -> vfprintf@cfmt(COMRAM[2]), 
;!
;!    sp__memcpy	PTR void  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    efgtoa@fp	PTR struct _IO_FILE size(2) Largest target is 12
;!		 -> vsprintf@f(COMRAM[12]), snprintf@f(BANK0[12]), 
;!
;!    sp__strcpy	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    pad@buf	PTR unsigned char  size(2) Largest target is 80
;!		 -> dbuf(BANK1[80]), 
;!
;!    pad@fp	PTR struct _IO_FILE size(2) Largest target is 12
;!		 -> vsprintf@f(COMRAM[12]), snprintf@f(BANK0[12]), 
;!
;!    snprintf@fmt	PTR const unsigned char  size(2) Largest target is 33
;!		 -> STR_2(CODE[33]), STR_1(CODE[11]), 
;!
;!    snprintf@s	PTR unsigned char  size(2) Largest target is 50
;!		 -> screen_update@txt(COMRAM[50]), main@txt(BANK1[50]), 
;!
;!    snprintf@ap	PTR void [1] size(2) Largest target is 2
;!		 -> ?_snprintf(BANK0[2]), ?_software_uart_print_fmt(COMRAM[1]), 
;!
;!    S1544$source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    f...source	PTR const unsigned char  size(2) Largest target is 0
;!
;!    S1544$buffer	PTR unsigned char  size(2) Largest target is 0
;!
;!    f...buffer	PTR unsigned char  size(2) Largest target is 0
;!
;!    software_uart_print_string@str	PTR unsigned char  size(2) Largest target is 100
;!		 -> software_uart_print_fmt@buffer(BANK0[100]), screen_update@txt(COMRAM[50]), main@txt(BANK1[50]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _software_uart_print_string->_software_uart_print_char
;!    _snprintf->_vfprintf
;!    _vfprintf->_vfpfcnvrt
;!    _vfpfcnvrt->_efgtoa
;!    _read_prec_or_width->___wmul
;!    _efgtoa->___flge
;!    _pad->_fputs
;!    _fputs->_fputc
;!    _floorf->___fldiv
;!    _screen_set_temperature_setpoint->_io_get_setpoint_from_ENCODER
;!    _screen_set_temperature_cautin->_io_get_cautin_temperature_from_ADC
;!    _pid_set_setpoint->_io_get_setpoint_from_ENCODER
;!    _pid_execute->___flge
;!    _io_get_cautin_temperature_from_ADC->___flmul
;!    ___flmul->___fladd
;!    _io_encoder_loop->___flge
;!    ___flsub->___flmul
;!    ___fladd->___fldiv
;!    ___flge->___flmul
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_snprintf
;!    _snprintf->_vfprintf
;!    _vfprintf->_vfpfcnvrt
;!    _vfpfcnvrt->_efgtoa
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _isr in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _isr in BANK7
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                67    67      0   73569
;!                                              0 BANK1     67    67      0
;!       _io_encoder_button_is_pressed
;!                    _io_encoder_loop
;!    _io_get_battery_status_from_GPIO
;! _io_get_cautin_temperature_from_ADC
;!       _io_get_setpoint_from_ENCODER
;!                            _io_init
;!       _io_set_cautin_duty_cycle_PWM
;!                        _pid_execute
;!                   _pid_get_setpoint
;!                           _pid_init
;!                   _pid_set_setpoint
;!                        _screen_init
;!          _screen_set_battery_status
;!      _screen_set_temperature_cautin
;!    _screen_set_temperature_setpoint
;!                           _snprintf
;!                 _software_uart_init
;!         _software_uart_print_string
;!                    _systimer_get_ms
;!                      _systimer_init
;! ---------------------------------------------------------------------------------
;! (1) _systimer_init                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _systimer_get_ms                                      8     4      4      23
;!                                              3 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (1) _software_uart_print_string                           2     0      2     319
;!                                              5 COMRAM     2     0      2
;!           _software_uart_print_char
;! ---------------------------------------------------------------------------------
;! (2) _software_uart_print_char                             2     2      0      46
;!                                              3 COMRAM     2     2      0
;! ---------------------------------------------------------------------------------
;! (1) _software_uart_init                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _snprintf                                            35    21     14   34939
;!                                             70 BANK0     35    21     14
;!                   _pid_get_setpoint (ARG)
;!                           _vfprintf
;! ---------------------------------------------------------------------------------
;! (2) _vfprintf                                             8     2      6   33725
;!                                             85 COMRAM     2     2      0
;!                                             64 BANK0      6     0      6
;!                          _vfpfcnvrt
;! ---------------------------------------------------------------------------------
;! (3) _vfpfcnvrt                                           19    13      6   33027
;!                                             83 COMRAM     2     2      0
;!                                             51 BANK0     13     7      6
;!                             _efgtoa
;!                              _fputc
;!                 _read_prec_or_width
;! ---------------------------------------------------------------------------------
;! (4) _read_prec_or_width                                   9     5      4     852
;!                                              9 COMRAM     9     5      4
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (5) ___wmul                                               6     2      4     412
;!                                              3 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (4) _efgtoa                                              54    47      7   30314
;!                                             81 COMRAM     2     2      0
;!                                              0 BANK0     51    44      7
;!                            ___fladd
;!                            ___fldiv
;!                             ___fleq
;!                             ___flge
;!                            ___flmul
;!                            ___flneg
;!                            ___flsub
;!                            ___fltol
;!                      ___fpclassifyf
;!                             _floorf
;!                               _labs
;!                             _memcpy
;!                                _pad
;!                             _strcpy
;! ---------------------------------------------------------------------------------
;! (5) _strcpy                                               8     4      4     497
;!                                              3 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (5) _pad                                                 11     5      6    3355
;!                                             19 COMRAM    11     5      6
;!                              _fputc
;!                              _fputs
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (6) _strlen                                               4     2      2     220
;!                                              3 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (6) _fputs                                                7     3      4    1177
;!                                             12 COMRAM     7     3      4
;!                              _fputc
;! ---------------------------------------------------------------------------------
;! (4) _fputc                                                9     5      4     857
;!                                              3 COMRAM     9     5      4
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (5) _putch                                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! (5) _memcpy                                              11     5      6     478
;!                                              3 COMRAM    11     5      6
;! ---------------------------------------------------------------------------------
;! (5) _labs                                                 8     4      4     363
;!                                              3 COMRAM     8     4      4
;! ---------------------------------------------------------------------------------
;! (5) _floorf                                              20    16      4     669
;!                                             28 COMRAM    20    16      4
;!                            ___fldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___fpclassifyf                                       14    10      4     375
;!                                              3 COMRAM    14    10      4
;! ---------------------------------------------------------------------------------
;! (5) ___flneg                                              4     0      4     155
;!                                              3 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (5) ___fleq                                              12     4      8     770
;!                                              3 COMRAM    12     4      8
;! ---------------------------------------------------------------------------------
;! (1) _screen_set_temperature_setpoint                      4     0      4      98
;!                                              7 COMRAM     4     0      4
;!       _io_get_setpoint_from_ENCODER (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _screen_set_temperature_cautin                        4     0      4      98
;!                                             73 COMRAM     4     0      4
;! _io_get_cautin_temperature_from_ADC (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _screen_set_battery_status                            1     1      0      22
;!                                              3 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _screen_init                                          0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _pid_set_setpoint                                     4     0      4      98
;!                                              7 COMRAM     4     0      4
;!       _io_get_setpoint_from_ENCODER (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _pid_init                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _pid_get_setpoint                                     4     0      4       0
;!                                              3 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (1) _pid_execute                                         36    32      4   20713
;!                                             81 COMRAM     4     0      4
;!                                              0 BANK0     32    32      0
;!                            ___fladd
;!                            ___fldiv
;!                             ___flge
;!                            ___flmul
;!                            ___flsub
;!                            ___fltol
;! ---------------------------------------------------------------------------------
;! (5) ___fltol                                             10     6      4     697
;!                                              3 COMRAM    10     6      4
;! ---------------------------------------------------------------------------------
;! (5) ___fldiv                                             25    17      8    3083
;!                                              3 COMRAM    25    17      8
;! ---------------------------------------------------------------------------------
;! (1) _io_set_cautin_duty_cycle_PWM                         1     1      0      22
;!                                              3 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (1) _io_init                                              0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _io_get_setpoint_from_ENCODER                         4     0      4       0
;!                                              3 COMRAM     4     0      4
;! ---------------------------------------------------------------------------------
;! (1) _io_get_cautin_temperature_from_ADC                   4     0      4    4711
;!                                             69 COMRAM     4     0      4
;!                            ___flmul
;!                           ___xxtofl
;! ---------------------------------------------------------------------------------
;! (2) ___xxtofl                                            14    10      4     398
;!                                              3 COMRAM    14    10      4
;! ---------------------------------------------------------------------------------
;! (5) ___flmul                                             25    17      8    4313
;!                                             44 COMRAM    25    17      8
;!                            ___fladd (ARG)
;!                            ___fldiv (ARG)
;!                           ___xxtofl (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _io_get_battery_status_from_GPIO                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _io_encoder_loop                                      5     5      0   12273
;!                                             81 COMRAM     5     5      0
;!                            ___fladd
;!                             ___flge
;!                            ___flsub
;! ---------------------------------------------------------------------------------
;! (5) ___flsub                                              8     0      8    5807
;!                                             69 COMRAM     8     0      8
;!                            ___fladd
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (6) ___fladd                                             16     8      8    4702
;!                                             28 COMRAM    16     8      8
;!                            ___fldiv (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___flge                                              12     4      8    1526
;!                                             69 COMRAM    12     4      8
;!                            ___flmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _io_encoder_button_is_pressed                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (9) _isr                                                  3     3      0       0
;!                                              0 COMRAM     3     3      0
;!                        _ISR_TIMER_0
;!                        _ISR_TIMER_1
;! ---------------------------------------------------------------------------------
;! (10) _ISR_TIMER_1                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! (10) _ISR_TIMER_0                                         0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 10
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _io_encoder_button_is_pressed
;!   _io_encoder_loop
;!     ___fladd
;!       ___fldiv (ARG)
;!     ___flge
;!       ___flmul (ARG)
;!         ___fladd (ARG)
;!         ___fldiv (ARG)
;!         ___xxtofl (ARG)
;!     ___flsub
;!       ___fladd
;!       ___flmul (ARG)
;!   _io_get_battery_status_from_GPIO
;!   _io_get_cautin_temperature_from_ADC
;!     ___flmul
;!     ___xxtofl
;!   _io_get_setpoint_from_ENCODER
;!   _io_init
;!   _io_set_cautin_duty_cycle_PWM
;!   _pid_execute
;!     ___fladd
;!     ___fldiv
;!     ___flge
;!     ___flmul
;!     ___flsub
;!     ___fltol
;!   _pid_get_setpoint
;!   _pid_init
;!   _pid_set_setpoint
;!     _io_get_setpoint_from_ENCODER (ARG)
;!   _screen_init
;!   _screen_set_battery_status
;!   _screen_set_temperature_cautin
;!     _io_get_cautin_temperature_from_ADC (ARG)
;!   _screen_set_temperature_setpoint
;!     _io_get_setpoint_from_ENCODER (ARG)
;!   _snprintf
;!     _pid_get_setpoint (ARG)
;!     _vfprintf (ARG)
;!       _vfpfcnvrt
;!         _efgtoa
;!           ___fladd
;!           ___fldiv
;!           ___fleq
;!           ___flge
;!           ___flmul
;!           ___flneg
;!           ___flsub
;!           ___fltol
;!           ___fpclassifyf
;!           _floorf
;!             ___fldiv (ARG)
;!           _labs
;!           _memcpy
;!           _pad
;!             _fputc
;!               _putch
;!             _fputs
;!               _fputc
;!             _strlen
;!           _strcpy
;!         _fputc
;!         _read_prec_or_width
;!           ___wmul
;!   _software_uart_init
;!   _software_uart_print_string
;!     _software_uart_print_char
;!   _systimer_get_ms
;!   _systimer_init
;!
;! _isr (ROOT)
;!   _ISR_TIMER_0
;!   _ISR_TIMER_1
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             7FF      0       0      30        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK7           100      0       0      18        0.0%
;!BANK7              100      0       0      19        0.0%
;!BITBANK6           100      0       0      16        0.0%
;!BANK6              100      0       0      17        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100     43      9B       7       60.5%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0     69      9E       5       98.8%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     57      5B       1       96.8%
;!BITBIGSFRhhhlll     21      0       0      24        0.0%
;!BITBIGSFRll         20      0       0      28        0.0%
;!BITBIGSFRhhhlh      1A      0       0      21        0.0%
;!BITBIGSFRhhhh        D      0       0      20        0.0%
;!BITBIGSFRhhhllh      8      0       0      23        0.0%
;!BITBIGSFRhl          8      0       0      27        0.0%
;!BITBIGSFRhhhlll      7      0       0      25        0.0%
;!BITBIGSFRhhhllh      5      0       0      22        0.0%
;!BITBIGSFRhhll        5      0       0      26        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     194      29        0.0%
;!DATA                 0      0     194       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 95 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  txt            50    4[BANK1 ] unsigned char [50]
;;  cautin_tempe    4   63[BANK1 ] float 
;;  duty            1   62[BANK1 ] unsigned char 
;;  pid_countMS     4   58[BANK1 ] unsigned long 
;;  screen_count    4   54[BANK1 ] unsigned long 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0      63       0       0       0       0       0       0
;;      Temps:          0       0       4       0       0       0       0       0       0
;;      Totals:         0       0      67       0       0       0       0       0       0
;;Total ram usage:       67 bytes
;; Hardware stack levels required when called: 10
;; This function calls:
;;		_io_encoder_button_is_pressed
;;		_io_encoder_loop
;;		_io_get_battery_status_from_GPIO
;;		_io_get_cautin_temperature_from_ADC
;;		_io_get_setpoint_from_ENCODER
;;		_io_init
;;		_io_set_cautin_duty_cycle_PWM
;;		_pid_execute
;;		_pid_get_setpoint
;;		_pid_init
;;		_pid_set_setpoint
;;		_screen_init
;;		_screen_set_battery_status
;;		_screen_set_temperature_cautin
;;		_screen_set_temperature_setpoint
;;		_snprintf
;;		_software_uart_init
;;		_software_uart_print_string
;;		_systimer_get_ms
;;		_systimer_init
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	95
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	95
	
_main:
;incstack = 0
	callstack 21
	line	97
	
l5061:
;main.c: 97:     io_init();
	call	_io_init	;wreg free
	line	98
	
l5063:
;main.c: 98:     software_uart_init();
	call	_software_uart_init	;wreg free
	line	99
	
l5065:
;main.c: 99:     screen_init();
	call	_screen_init	;wreg free
	line	100
;main.c: 100:     systimer_init();
	call	_systimer_init	;wreg free
	line	101
	
l5067:
;main.c: 101:     pid_init();
	call	_pid_init	;wreg free
	line	103
;main.c: 103:     uint32_t screen_countMS = 0;
	movlw	low(0)
	movlb	1	; () banked
	movwf	((main@screen_countMS))&0ffh
	movlw	high(0)
	movwf	((main@screen_countMS+1))&0ffh
	movlw	low highword(0)
	movwf	((main@screen_countMS+2))&0ffh
	movlw	high highword(0)
	movwf	((main@screen_countMS+3))&0ffh
	line	104
;main.c: 104:     uint32_t pid_countMS = 0;
	movlw	low(0)
	movwf	((main@pid_countMS))&0ffh
	movlw	high(0)
	movwf	((main@pid_countMS+1))&0ffh
	movlw	low highword(0)
	movwf	((main@pid_countMS+2))&0ffh
	movlw	high highword(0)
	movwf	((main@pid_countMS+3))&0ffh
	line	107
	
l5069:
;main.c: 107:         io_encoder_loop();
	call	_io_encoder_loop	;wreg free
	line	109
	
l5071:
;main.c: 109:         if (io_encoder_button_is_pressed()) {
	call	_io_encoder_button_is_pressed	;wreg free
	iorlw	0
	btfsc	status,2
	goto	u5921
	goto	u5920
u5921:
	goto	l5075
u5920:
	line	110
	
l5073:
;main.c: 110:             pid_set_setpoint(io_get_setpoint_from_ENCODER());
	call	_io_get_setpoint_from_ENCODER	;wreg free
	movff	0+?_io_get_setpoint_from_ENCODER,(c:pid_set_setpoint@s)
	movff	1+?_io_get_setpoint_from_ENCODER,(c:pid_set_setpoint@s+1)
	movff	2+?_io_get_setpoint_from_ENCODER,(c:pid_set_setpoint@s+2)
	movff	3+?_io_get_setpoint_from_ENCODER,(c:pid_set_setpoint@s+3)
	
	call	_pid_set_setpoint	;wreg free
	line	113
	
l5075:
;main.c: 113:         if (systimer_get_ms() - screen_countMS >= (1000UL)) {
	call	_systimer_get_ms	;wreg free
	movlb	1	; () banked
	movf	((main@screen_countMS))&0ffh,w
	subwf	(0+?_systimer_get_ms)^00h,c,w
	movwf	(??_main+0+0)&0ffh
	movf	((main@screen_countMS+1))&0ffh,w
	subwfb	(1+?_systimer_get_ms)^00h,c,w
	movwf	1+(??_main+0+0)&0ffh
	
	movf	((main@screen_countMS+2))&0ffh,w
	subwfb	(2+?_systimer_get_ms)^00h,c,w
	movwf	2+(??_main+0+0)&0ffh
	
	movf	((main@screen_countMS+3))&0ffh,w
	subwfb	(3+?_systimer_get_ms)^00h,c,w
	movwf	3+(??_main+0+0)&0ffh
		movf	(??_main+0+3)&0ffh,w
	iorwf	(??_main+0+2)&0ffh,w
	bnz	u5930
	movlw	232
	subwf	 (??_main+0+0)&0ffh,w
	movlw	3
	subwfb	(??_main+0+1)&0ffh,w
	btfss	status,0
	goto	u5931
	goto	u5930

u5931:
	goto	l5085
u5930:
	line	114
	
l5077:; BSR set to: 1

;main.c: 114:             screen_countMS = systimer_get_ms();
	call	_systimer_get_ms	;wreg free
	movff	0+?_systimer_get_ms,(main@screen_countMS)
	movff	1+?_systimer_get_ms,(main@screen_countMS+1)
	movff	2+?_systimer_get_ms,(main@screen_countMS+2)
	movff	3+?_systimer_get_ms,(main@screen_countMS+3)
	
	line	117
	
l5079:
;main.c: 117:             screen_set_battery_status(io_get_battery_status_from_GPIO());
	call	_io_get_battery_status_from_GPIO	;wreg free
	
	call	_screen_set_battery_status
	line	118
	
l5081:
;main.c: 118:             screen_set_temperature_setpoint(io_get_setpoint_from_ENCODER());
	call	_io_get_setpoint_from_ENCODER	;wreg free
	movff	0+?_io_get_setpoint_from_ENCODER,(c:screen_set_temperature_setpoint@f)
	movff	1+?_io_get_setpoint_from_ENCODER,(c:screen_set_temperature_setpoint@f+1)
	movff	2+?_io_get_setpoint_from_ENCODER,(c:screen_set_temperature_setpoint@f+2)
	movff	3+?_io_get_setpoint_from_ENCODER,(c:screen_set_temperature_setpoint@f+3)
	
	call	_screen_set_temperature_setpoint	;wreg free
	line	119
	
l5083:
;main.c: 119:             screen_set_temperature_cautin(io_get_cautin_temperature_from_ADC());
	call	_io_get_cautin_temperature_from_ADC	;wreg free
	movff	0+?_io_get_cautin_temperature_from_ADC,(c:screen_set_temperature_cautin@f)
	movff	1+?_io_get_cautin_temperature_from_ADC,(c:screen_set_temperature_cautin@f+1)
	movff	2+?_io_get_cautin_temperature_from_ADC,(c:screen_set_temperature_cautin@f+2)
	movff	3+?_io_get_cautin_temperature_from_ADC,(c:screen_set_temperature_cautin@f+3)
	
	call	_screen_set_temperature_cautin	;wreg free
	line	124
	
l5085:
;main.c: 124:         if (systimer_get_ms() - pid_countMS >= (50)) {
	call	_systimer_get_ms	;wreg free
	movlb	1	; () banked
	movf	((main@pid_countMS))&0ffh,w
	subwf	(0+?_systimer_get_ms)^00h,c,w
	movwf	(??_main+0+0)&0ffh
	movf	((main@pid_countMS+1))&0ffh,w
	subwfb	(1+?_systimer_get_ms)^00h,c,w
	movwf	1+(??_main+0+0)&0ffh
	
	movf	((main@pid_countMS+2))&0ffh,w
	subwfb	(2+?_systimer_get_ms)^00h,c,w
	movwf	2+(??_main+0+0)&0ffh
	
	movf	((main@pid_countMS+3))&0ffh,w
	subwfb	(3+?_systimer_get_ms)^00h,c,w
	movwf	3+(??_main+0+0)&0ffh
		movf	(??_main+0+3)&0ffh,w
	iorwf	(??_main+0+2)&0ffh,w
	iorwf	(??_main+0+1)&0ffh,w
	bnz	u5940
	movlw	50
	subwf	 (??_main+0+0)&0ffh,w
	btfss	status,0
	goto	u5941
	goto	u5940

u5941:
	goto	l5069
u5940:
	line	125
	
l5087:; BSR set to: 1

;main.c: 125:             pid_countMS = systimer_get_ms();
	call	_systimer_get_ms	;wreg free
	movff	0+?_systimer_get_ms,(main@pid_countMS)
	movff	1+?_systimer_get_ms,(main@pid_countMS+1)
	movff	2+?_systimer_get_ms,(main@pid_countMS+2)
	movff	3+?_systimer_get_ms,(main@pid_countMS+3)
	
	line	128
	
l5089:
;main.c: 128:             float cautin_temperature = io_get_cautin_temperature_from_ADC();
	call	_io_get_cautin_temperature_from_ADC	;wreg free
	movff	0+?_io_get_cautin_temperature_from_ADC,(main@cautin_temperature)
	movff	1+?_io_get_cautin_temperature_from_ADC,(main@cautin_temperature+1)
	movff	2+?_io_get_cautin_temperature_from_ADC,(main@cautin_temperature+2)
	movff	3+?_io_get_cautin_temperature_from_ADC,(main@cautin_temperature+3)
	
	line	129
	
l5091:
;main.c: 129:             uint8_t duty = pid_execute(cautin_temperature);
	movff	(main@cautin_temperature),(c:pid_execute@sensor)
	movff	(main@cautin_temperature+1),(c:pid_execute@sensor+1)
	movff	(main@cautin_temperature+2),(c:pid_execute@sensor+2)
	movff	(main@cautin_temperature+3),(c:pid_execute@sensor+3)
	call	_pid_execute	;wreg free
	movlb	1	; () banked
	movwf	((main@duty))&0ffh
	line	130
	
l5093:; BSR set to: 1

;main.c: 130:             io_set_cautin_duty_cycle_PWM(duty);
	movf	((main@duty))&0ffh,w
	
	call	_io_set_cautin_duty_cycle_PWM
	line	133
	
l5095:
;main.c: 132:             char txt[50];;main.c: 133:             snprintf(txt, sizeof (txt), "%.2f,%.2f\r", pid_get_setpoint(), cautin_temperature);
		movlw	low(main@txt)
	movlb	0	; () banked
	movwf	((snprintf@s))&0ffh
	movlw	high(main@txt)
	movwf	((snprintf@s+1))&0ffh

	movlw	high(032h)
	movwf	((snprintf@n+1))&0ffh
	movlw	low(032h)
	movwf	((snprintf@n))&0ffh
		movlw	low(STR_1)
	movwf	((snprintf@fmt))&0ffh
	movlw	high(STR_1)
	movwf	((snprintf@fmt+1))&0ffh

	call	_pid_get_setpoint	;wreg free
	movff	0+?_pid_get_setpoint,0+(?_snprintf+06h)
	movff	1+?_pid_get_setpoint,1+(?_snprintf+06h)
	movff	2+?_pid_get_setpoint,2+(?_snprintf+06h)
	movff	3+?_pid_get_setpoint,3+(?_snprintf+06h)
	
	movff	(main@cautin_temperature),0+(?_snprintf+0Ah)
	movff	(main@cautin_temperature+1),1+(?_snprintf+0Ah)
	movff	(main@cautin_temperature+2),2+(?_snprintf+0Ah)
	movff	(main@cautin_temperature+3),3+(?_snprintf+0Ah)
	call	_snprintf	;wreg free
	line	134
	
l5097:
;main.c: 134:             software_uart_print_string(txt);
		movlw	low(main@txt)
	movwf	((c:software_uart_print_string@str))^00h,c
	movlw	high(main@txt)
	movwf	((c:software_uart_print_string@str+1))^00h,c

	call	_software_uart_print_string	;wreg free
	goto	l5069
	global	start
	goto	start
	callstack 0
	line	140
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_systimer_init

;; *************** function _systimer_init *****************
;; Defined at:
;;		line 8 in file "systimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	file	"systimer.c"
	line	8
global __ptext1
__ptext1:
psect	text1
	file	"systimer.c"
	line	8
	
_systimer_init:
;incstack = 0
	callstack 28
	line	9
	
l3665:
;systimer.c: 9:     INTCONbits.GIE = 0;
	bcf	((c:4082))^0f00h,c,7	;volatile
	line	10
;systimer.c: 10:     T0CONbits.T0CS = 0;
	bcf	((c:4053))^0f00h,c,5	;volatile
	line	11
;systimer.c: 11:     T0CONbits.PSA = 0;
	bcf	((c:4053))^0f00h,c,3	;volatile
	line	12
	
l3667:
;systimer.c: 12:     T0CONbits.T0PS = 0b111;
	movlw	(07h & ((1<<3)-1))<<0
	iorwf	((c:4053))^0f00h,c	;volatile
	line	13
	
l3669:
;systimer.c: 13:     T0CONbits.T08BIT = 0;
	bcf	((c:4053))^0f00h,c,6	;volatile
	line	14
	
l3671:
;systimer.c: 14:     T0CONbits.TMR0ON = 1;
	bsf	((c:4053))^0f00h,c,7	;volatile
	line	15
	
l3673:
;systimer.c: 15:     INTCONbits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	16
	
l3675:
;systimer.c: 16:     INTCONbits.TMR0IE = 1;
	bsf	((c:4082))^0f00h,c,5	;volatile
	line	17
	
l3677:
;systimer.c: 17:     INTCONbits.PEIE = 1;
	bsf	((c:4082))^0f00h,c,6	;volatile
	line	18
;systimer.c: 18:     TMR0 = 63192;
	movlw	high(0F6D8h)
	movwf	((c:4054+1))^0f00h,c	;volatile
	movlw	low(0F6D8h)
	movwf	((c:4054))^0f00h,c	;volatile
	line	19
	
l3679:
;systimer.c: 19:     INTCONbits.GIE = 1;
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	20
	
l131:
	return	;funcret
	callstack 0
GLOBAL	__end_of_systimer_init
	__end_of_systimer_init:
	signat	_systimer_init,89
	global	_systimer_get_ms

;; *************** function _systimer_get_ms *****************
;; Defined at:
;;		line 24 in file "systimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ms              4    7[COMRAM] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] unsigned long 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=0
	line	24
global __ptext2
__ptext2:
psect	text2
	file	"systimer.c"
	line	24
	
_systimer_get_ms:
;incstack = 0
	callstack 28
	line	25
	
l3717:
;systimer.c: 25:     (INTCONbits.GIE = 0);
	bcf	((c:4082))^0f00h,c,7	;volatile
	line	26
;systimer.c: 26:     uint32_t ms = _ms;
	movff	(__ms),(c:systimer_get_ms@ms)	;volatile
	movff	(__ms+1),(c:systimer_get_ms@ms+1)	;volatile
	movff	(__ms+2),(c:systimer_get_ms@ms+2)	;volatile
	movff	(__ms+3),(c:systimer_get_ms@ms+3)	;volatile
	line	27
;systimer.c: 27:     (INTCONbits.GIE = 1);
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	28
;systimer.c: 28:     return ms;
	movff	(c:systimer_get_ms@ms),(c:?_systimer_get_ms)
	movff	(c:systimer_get_ms@ms+1),(c:?_systimer_get_ms+1)
	movff	(c:systimer_get_ms@ms+2),(c:?_systimer_get_ms+2)
	movff	(c:systimer_get_ms@ms+3),(c:?_systimer_get_ms+3)
	line	29
	
l134:
	return	;funcret
	callstack 0
GLOBAL	__end_of_systimer_get_ms
	__end_of_systimer_get_ms:
	signat	_systimer_get_ms,92
	global	_software_uart_print_string

;; *************** function _software_uart_print_string *****************
;; Defined at:
;;		line 52 in file "software_uart.c"
;; Parameters:    Size  Location     Type
;;  str             2    5[COMRAM] PTR unsigned char 
;;		 -> software_uart_print_fmt@buffer(100), screen_update@txt(50), main@txt(50), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_software_uart_print_char
;; This function is called by:
;;		_main
;;		_screen_update
;;		_software_uart_print_fmt
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"software_uart.c"
	line	52
global __ptext3
__ptext3:
psect	text3
	file	"software_uart.c"
	line	52
	
_software_uart_print_string:
;incstack = 0
	callstack 27
	line	53
	
l3797:
;software_uart.c: 53:     while (*str != 0) {
	goto	l3803
	line	54
	
l3799:
;software_uart.c: 54:         software_uart_print_char(*str);
	movff	(c:software_uart_print_string@str),fsr2l
	movff	(c:software_uart_print_string@str+1),fsr2h
	movf	indf2,w
	
	call	_software_uart_print_char
	line	55
	
l3801:
;software_uart.c: 55:         str++;
	infsnz	((c:software_uart_print_string@str))^00h,c
	incf	((c:software_uart_print_string@str+1))^00h,c
	line	53
	
l3803:
;software_uart.c: 53:     while (*str != 0) {
	movff	(c:software_uart_print_string@str),fsr2l
	movff	(c:software_uart_print_string@str+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u4041
	goto	u4040
u4041:
	goto	l3799
u4040:
	line	57
	
l117:
	return	;funcret
	callstack 0
GLOBAL	__end_of_software_uart_print_string
	__end_of_software_uart_print_string:
	signat	_software_uart_print_string,4217
	global	_software_uart_print_char

;; *************** function _software_uart_print_char *****************
;; Defined at:
;;		line 23 in file "software_uart.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    3[COMRAM] unsigned char 
;;  bits            1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_software_uart_print_string
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	line	23
global __ptext4
__ptext4:
psect	text4
	file	"software_uart.c"
	line	23
	
_software_uart_print_char:
;incstack = 0
	callstack 27
;software_uart_print_char@c stored from wreg
	movwf	((c:software_uart_print_char@c))^00h,c
	line	10
	
l3559:
;software_uart.c: 24:     uint8_t bits = bit_lenght;
	movlw	low(08h)
	movwf	((c:software_uart_print_char@bits))^00h,c
	line	27
	
l3561:
;software_uart.c: 27:     (PORTCbits.RC6=0);
	bcf	((c:3970))^0f00h,c,6	;volatile
	line	28
	
l3563:
;software_uart.c: 28:     (_delay((unsigned long)((bittime_us)*((48UL*1000UL*1000UL)/4000000.0))));
	asmopt push
asmopt off
	movlw	249
u5957:
	nop2
decfsz	wreg,f
	bra	u5957
	nop2
	nop
asmopt pop

	line	32
	
l3565:
;software_uart.c: 32:         if (c & 1) {
	
	btfss	((c:software_uart_print_char@c))^00h,c,(0)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l108
u3690:
	line	33
	
l3567:
;software_uart.c: 33:             (LATCbits.LATC6=1);
	bsf	((c:3979))^0f00h,c,6	;volatile
	line	34
;software_uart.c: 34:         } else {
	goto	l3569
	
l108:
	line	35
;software_uart.c: 35:             (PORTCbits.RC6=0);
	bcf	((c:3970))^0f00h,c,6	;volatile
	line	37
	
l3569:
;software_uart.c: 37:         (_delay((unsigned long)((bittime_us)*((48UL*1000UL*1000UL)/4000000.0))));
	asmopt push
asmopt off
	movlw	249
u5967:
	nop2
decfsz	wreg,f
	bra	u5967
	nop2
	nop
asmopt pop

	line	38
	
l3571:
;software_uart.c: 38:         c >>= 1;
	bcf status,0
	rrcf	((c:software_uart_print_char@c))^00h,c

	line	39
	
l3573:
;software_uart.c: 39:     } while (--bits);
	decfsz	((c:software_uart_print_char@bits))^00h,c
	
	goto	l3565
	
l110:
	line	48
;software_uart.c: 48:     (LATCbits.LATC6=1);
	bsf	((c:3979))^0f00h,c,6	;volatile
	line	49
	
l3575:
;software_uart.c: 49:     (_delay((unsigned long)((bittime_us)*((48UL*1000UL*1000UL)/4000000.0))));
	asmopt push
asmopt off
	movlw	249
u5977:
	nop2
decfsz	wreg,f
	bra	u5977
	nop2
	nop
asmopt pop

	line	50
	
l111:
	return	;funcret
	callstack 0
GLOBAL	__end_of_software_uart_print_char
	__end_of_software_uart_print_char:
	signat	_software_uart_print_char,4217
	global	_software_uart_init

;; *************** function _software_uart_init *****************
;; Defined at:
;;		line 18 in file "software_uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	line	18
global __ptext5
__ptext5:
psect	text5
	file	"software_uart.c"
	line	18
	
_software_uart_init:
;incstack = 0
	callstack 28
	line	19
	
l3663:
;software_uart.c: 19:     {PORTCbits.RC6=0;LATCbits.LATC6=0;TRISCbits.TRISC6=0;};
	bcf	((c:3970))^0f00h,c,6	;volatile
	bcf	((c:3979))^0f00h,c,6	;volatile
	bcf	((c:3988))^0f00h,c,6	;volatile
	line	20
;software_uart.c: 20:     (LATCbits.LATC6=1);
	bsf	((c:3979))^0f00h,c,6	;volatile
	line	21
	
l104:
	return	;funcret
	callstack 0
GLOBAL	__end_of_software_uart_init
	__end_of_software_uart_init:
	signat	_software_uart_init,89
	global	_snprintf

;; *************** function _snprintf *****************
;; Defined at:
;;		line 13 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_snprintf.c"
;; Parameters:    Size  Location     Type
;;  s               2   70[BANK0 ] PTR unsigned char 
;;		 -> screen_update@txt(50), main@txt(50), 
;;  n               2   72[BANK0 ] unsigned int 
;;  fmt             2   74[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(33), STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  f              12   93[BANK0 ] struct _IO_FILE
;;  cnt             2   91[BANK0 ] int 
;;  ap              2   89[BANK0 ] PTR void [1]
;;		 -> ?_snprintf(2), ?_software_uart_print_fmt(1), 
;; Return value:  Size  Location     Type
;;                  2   70[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0      14       0       0       0       0       0       0       0
;;      Locals:         0      18       0       0       0       0       0       0       0
;;      Temps:          0       3       0       0       0       0       0       0       0
;;      Totals:         0      35       0       0       0       0       0       0       0
;;Total ram usage:       35 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 9
;; This function calls:
;;		_vfprintf
;; This function is called by:
;;		_main
;;		_screen_update
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_snprintf.c"
	line	13
global __ptext6
__ptext6:
psect	text6
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_snprintf.c"
	line	13
	
_snprintf:
;incstack = 0
	callstack 21
	line	19
	
l5033:
		movlw	128
	movlb	0	; () banked
	subwf	 ((snprintf@n+1))&0ffh,w
	btfss	status,0
	goto	u5871
	goto	u5870

u5871:
	goto	l5039
u5870:
	line	20
	
l5035:; BSR set to: 0

	movlw	high(04Bh)
	movwf	((_errno+1))&0ffh
	movlw	low(04Bh)
	movwf	((_errno))&0ffh
	goto	l943
	line	23
	
l5039:; BSR set to: 0

		movlw	low(?_snprintf+06h)
	movwf	((snprintf@ap))&0ffh
	movlw	high(?_snprintf+06h)
	movwf	((snprintf@ap+1))&0ffh

	line	24
		movff	(snprintf@s),(snprintf@f)
	movff	(snprintf@s+1),(snprintf@f+1)

	line	25
		movf	((snprintf@n+1))&0ffh,w
	bnz	u5880
	movlw	2
	subwf	 ((snprintf@n))&0ffh,w
	btfss	status,0
	goto	u5881
	goto	u5880

u5881:
	goto	l5045
u5880:
	line	26
	
l5041:; BSR set to: 0

	movlw	low(-1)
	addwf	((snprintf@n))&0ffh,w
	movwf	(0+(snprintf@f+0Ah))&0ffh
	movlw	high(-1)
	addwfc	((snprintf@n+1))&0ffh,w
	movwf	1+(0+(snprintf@f+0Ah))&0ffh
	line	27
	
l5043:; BSR set to: 0

	movlw	high(0)
	movwf	(1+(snprintf@f+03h))&0ffh
	movlw	low(0)
	movwf	(0+(snprintf@f+03h))&0ffh
	line	28
	goto	l5047
	line	30
	
l5045:; BSR set to: 0

	movlw	high(01h)
	movwf	(1+(snprintf@f+0Ah))&0ffh
	movlw	low(01h)
	movwf	(0+(snprintf@f+0Ah))&0ffh
	line	31
	movlw	high(01h)
	movwf	(1+(snprintf@f+03h))&0ffh
	movlw	low(01h)
	movwf	(0+(snprintf@f+03h))&0ffh
	line	33
	
l5047:; BSR set to: 0

		movlw	low(snprintf@f)
	movwf	((vfprintf@fp))&0ffh
	movlw	high(snprintf@f)
	movwf	((vfprintf@fp+1))&0ffh

		movff	(snprintf@fmt),(vfprintf@fmt)
	movff	(snprintf@fmt+1),(vfprintf@fmt+1)

		movlw	low(snprintf@ap)
	movwf	((vfprintf@ap))&0ffh
	movlw	high(snprintf@ap)
	movwf	((vfprintf@ap+1))&0ffh

	call	_vfprintf	;wreg free
	movff	0+?_vfprintf,(snprintf@cnt)
	movff	1+?_vfprintf,(snprintf@cnt+1)
	line	34
	
l5049:
	movlb	0	; () banked
	movf	((snprintf@n))&0ffh,w
iorwf	((snprintf@n+1))&0ffh,w
	btfsc	status,2
	goto	u5891
	goto	u5890

u5891:
	goto	l943
u5890:
	
l5051:; BSR set to: 0

	btfsc	((snprintf@cnt+1))&0ffh,7
	goto	u5901
	goto	u5900

u5901:
	goto	l943
u5900:
	line	35
	
l5053:; BSR set to: 0

	movlw	low(-1)
	addwf	((snprintf@n))&0ffh,w
	movwf	(??_snprintf+0+0)&0ffh
	movlw	high(-1)
	addwfc	((snprintf@n+1))&0ffh,w
	movwf	1+(??_snprintf+0+0)&0ffh
		movf	(??_snprintf+0+0)&0ffh,w
	subwf	((snprintf@cnt))&0ffh,w
	movf	((snprintf@cnt+1))&0ffh,w
	xorlw	80h
	movwf	(??_snprintf+2+0)&0ffh
	movf	(??_snprintf+0+1)&0ffh,w
	xorlw	80h
	subwfb	(??_snprintf+2+0)&0ffh,w
	btfss	status,0
	goto	u5911
	goto	u5910

u5911:
	goto	l948
u5910:
	
l5055:; BSR set to: 0

	movlw	low(-1)
	addwf	((snprintf@n))&0ffh,w
	movwf	((_snprintf$1578))&0ffh
	movlw	high(-1)
	addwfc	((snprintf@n+1))&0ffh,w
	movwf	1+((_snprintf$1578))&0ffh
	goto	l5057
	
l948:; BSR set to: 0

	movff	(snprintf@cnt),(_snprintf$1578)
	movff	(snprintf@cnt+1),(_snprintf$1578+1)
	
l5057:; BSR set to: 0

	movf	((_snprintf$1578))&0ffh,w
	addwf	((snprintf@s))&0ffh,w
	movwf	c:fsr2l
	movf	((_snprintf$1578+1))&0ffh,w
	addwfc	((snprintf@s+1))&0ffh,w
	movwf	1+c:fsr2l
	clrf	indf2
	line	39
	
l943:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_snprintf
	__end_of_snprintf:
	signat	_snprintf,8794
	global	_vfprintf

;; *************** function _vfprintf *****************
;; Defined at:
;;		line 1546 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   64[BANK0 ] PTR struct _IO_FILE
;;		 -> vsprintf@f(12), snprintf@f(12), 
;;  fmt             2   66[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(33), STR_1(11), 
;;  ap              2   68[BANK0 ] PTR PTR void 
;;		 -> snprintf@ap(2), software_uart_print_fmt@args(2), 
;; Auto vars:     Size  Location     Type
;;  cfmt            2   85[COMRAM] PTR unsigned char 
;;		 -> STR_2(33), STR_1(11), 
;; Return value:  Size  Location     Type
;;                  2   64[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       6       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         2       6       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 8
;; This function calls:
;;		_vfpfcnvrt
;; This function is called by:
;;		_snprintf
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
	line	1546
global __ptext7
__ptext7:
psect	text7
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
	line	1546
	
_vfprintf:; BSR set to: 0

;incstack = 0
	callstack 21
	line	1551
	
l4961:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1546: int vfprintf(FILE *fp, const char *fmt, va_list ap);C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1547: {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1549:     char *cfmt;;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1551:     cfmt = (char *)fmt;
		movff	(vfprintf@fmt),(c:vfprintf@cfmt)
	movff	(vfprintf@fmt+1),(c:vfprintf@cfmt+1)

	line	1553
	
l4963:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1553:     nout = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_nout+1))&0ffh
	movlw	low(0)
	movwf	((_nout))&0ffh
	line	1555
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1555:     while (*cfmt) {
	goto	l4967
	line	1557
	
l4965:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1557:         nout +=
		movff	(vfprintf@fp),(vfpfcnvrt@fp)
	movff	(vfprintf@fp+1),(vfpfcnvrt@fp+1)

		movlw	low(vfprintf@cfmt)
	movwf	((vfpfcnvrt@fmt))&0ffh
	movlw	high(vfprintf@cfmt)
	movwf	((vfpfcnvrt@fmt+1))&0ffh

		movff	(vfprintf@ap),(vfpfcnvrt@ap)
	movff	(vfprintf@ap+1),(vfpfcnvrt@ap+1)

	call	_vfpfcnvrt	;wreg free
	movlb	0	; () banked
	movf	(0+?_vfpfcnvrt)&0ffh,w
	addwf	((_nout))&0ffh
	movf	(1+?_vfpfcnvrt)&0ffh,w
	addwfc	((_nout+1))&0ffh

	line	1555
	
l4967:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1555:     while (*cfmt) {
	movff	(c:vfprintf@cfmt),tblptrl
	movff	(c:vfprintf@cfmt+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	iorlw	0
	btfss	status,2
	goto	u5711
	goto	u5710
u5711:
	goto	l4965
u5710:
	
l1074:; BSR set to: 0

	line	1562
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1562:     return nout;
	movff	(_nout),(?_vfprintf)
	movff	(_nout+1),(?_vfprintf+1)
	line	1569
	
l1075:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_vfprintf
	__end_of_vfprintf:
	signat	_vfprintf,12410
	global	_vfpfcnvrt

;; *************** function _vfpfcnvrt *****************
;; Defined at:
;;		line 1048 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   51[BANK0 ] PTR struct _IO_FILE
;;		 -> vsprintf@f(12), snprintf@f(12), 
;;  fmt             2   53[BANK0 ] PTR PTR unsigned char 
;;		 -> vfprintf@cfmt(2), 
;;  ap              2   55[BANK0 ] PTR PTR void 
;;		 -> snprintf@ap(2), software_uart_print_fmt@args(2), 
;; Auto vars:     Size  Location     Type
;;  convarg         4   57[BANK0 ] struct .
;;  cp              2   62[BANK0 ] PTR unsigned char 
;;		 -> STR_2(33), STR_1(11), 
;;  i               2    0        int 
;;  done            2    0        int 
;;  c               1   61[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   51[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       6       0       0       0       0       0       0       0
;;      Locals:         0       7       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2      13       0       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_efgtoa
;;		_fputc
;;		_read_prec_or_width
;; This function is called by:
;;		_vfprintf
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=1
	line	1048
global __ptext8
__ptext8:
psect	text8
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
	line	1048
	
_vfpfcnvrt:; BSR set to: 0

;incstack = 0
	callstack 21
	line	1062
	
l4881:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1048: vfpfcnvrt(FILE *fp, char *fmt[], va_list ap);C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1049: {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1050:     char c, *cp;;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1051:     int done, i;;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1059:  } convarg;;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1062:     if ((*fmt)[0] == '%') {
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	movff	postinc2,tblptrl
	movff	postdec2,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	025h
	btfss	status,2
	goto	u5681
	goto	u5680
u5681:
	goto	l4935
u5680:
	line	1063
	
l4883:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1063:         ++*fmt;
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	1065
	
l4885:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1065:         flags = width = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((_width+1))&0ffh
	movlw	low(0)
	movwf	((_width))&0ffh
	movff	(_width),(_flags)
	line	1066
	
l4887:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1066:         prec = -1;
	setf	((_prec))&0ffh
	setf	((_prec+1))&0ffh
	line	1126
	
l4889:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1126:         if ((*fmt)[0] == '.') {
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	movff	postinc2,tblptrl
	movff	postdec2,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	02Eh
	btfss	status,2
	goto	u5691
	goto	u5690
u5691:
	goto	l4895
u5690:
	line	1127
	
l4891:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1127:             ++*fmt;
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	1128
	
l4893:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1128:    prec = read_prec_or_width(fmt, ap);
		movff	(vfpfcnvrt@fmt),(c:read_prec_or_width@fmt)
	movff	(vfpfcnvrt@fmt+1),(c:read_prec_or_width@fmt+1)

		movff	(vfpfcnvrt@ap),(c:read_prec_or_width@ap)
	movff	(vfpfcnvrt@ap+1),(c:read_prec_or_width@ap+1)

	call	_read_prec_or_width	;wreg free
	movff	0+?_read_prec_or_width,(_prec)
	movff	1+?_read_prec_or_width,(_prec+1)
	line	1418
	
l4895:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1418:   cp = *fmt;
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	movff	postinc2,(vfpfcnvrt@cp)
	movff	postdec2,(vfpfcnvrt@cp+1)
	line	1419
	
l4897:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1419:   c = *cp;
	movff	(vfpfcnvrt@cp),tblptrl
	movff	(vfpfcnvrt@cp+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(vfpfcnvrt@c)
	line	1420
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1420:   switch(c) {
	goto	l4907
	line	1424
	
l4899:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1424:     cp++;
	infsnz	((vfpfcnvrt@cp))&0ffh
	incf	((vfpfcnvrt@cp+1))&0ffh
	line	1425
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1425:     break;
	goto	l4909
	line	1450
	
l4901:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1450:     c = 'l';
	movlw	low(06Ch)
	movwf	((vfpfcnvrt@c))&0ffh
	line	1451
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1451:     break;
	goto	l4909
	line	1453
	
l4903:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1453:     c = 0;
	movlw	low(0)
	movwf	((vfpfcnvrt@c))&0ffh
	line	1454
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1454:     break;
	goto	l4909
	line	1455
	
l4907:
	movlb	0	; () banked
	movf	((vfpfcnvrt@c))&0ffh,w
	movwf	(??_vfpfcnvrt+0+0)^00h,c
	clrf	(??_vfpfcnvrt+0+0+1)^00h,c

	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_vfpfcnvrt+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5193
	goto	l4903
	
l5193:; BSR set to: 0

; Switch size 1, requested type "simple"
; Number of cases is 3, Range of values is 76 to 108
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
;	Chosen strategy is simple_byte

	movf ??_vfpfcnvrt+0+0^00h,c,w
	xorlw	76^0	; case 76
	skipnz
	goto	l4899
	xorlw	102^76	; case 102
	skipnz
	goto	l4901
	xorlw	108^102	; case 108
	skipnz
	goto	l4899
	goto	l4903

	line	1457
	
l4909:; BSR set to: 0

	movff	(vfpfcnvrt@cp),tblptrl
	movff	(vfpfcnvrt@cp+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	066h
	btfss	status,2
	goto	u5701
	goto	u5700
u5701:
	goto	l4929
u5700:
	goto	l4917
	line	1485
	
l4911:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1485:      convarg.f = (long double)(*(double *)__va_arg(*(double **)ap, (double)0));
	movff	(vfpfcnvrt@ap),fsr2l
	movff	(vfpfcnvrt@ap+1),fsr2h
	movff	indf2,??_vfpfcnvrt+0+0
	movlw	low(04h)
	addwf	postinc2
	movff	indf2,??_vfpfcnvrt+0+0+1
	movlw	high(04h)
	addwfc	postdec2
	movff	??_vfpfcnvrt+0+0,fsr2l
	movff	??_vfpfcnvrt+0+1,fsr2h
	movff	postinc2,(vfpfcnvrt@convarg)
	movff	postinc2,(vfpfcnvrt@convarg+1)
	movff	postinc2,(vfpfcnvrt@convarg+2)
	movff	postinc2,(vfpfcnvrt@convarg+3)
	line	1486
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1486:      break;
	goto	l4919
	line	1488
	
l4913:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1488:      convarg.f = (long double)(*(long double *)__va_arg(*(long double **)ap, (long double)0));
	movff	(vfpfcnvrt@ap),fsr2l
	movff	(vfpfcnvrt@ap+1),fsr2h
	movff	indf2,??_vfpfcnvrt+0+0
	movlw	low(04h)
	addwf	postinc2
	movff	indf2,??_vfpfcnvrt+0+0+1
	movlw	high(04h)
	addwfc	postdec2
	movff	??_vfpfcnvrt+0+0,fsr2l
	movff	??_vfpfcnvrt+0+1,fsr2h
	movff	postinc2,(vfpfcnvrt@convarg)
	movff	postinc2,(vfpfcnvrt@convarg+1)
	movff	postinc2,(vfpfcnvrt@convarg+2)
	movff	postinc2,(vfpfcnvrt@convarg+3)
	line	1489
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1489:      break;
	goto	l4919
	line	1490
	
l4917:; BSR set to: 0

	movf	((vfpfcnvrt@c))&0ffh,w
	movwf	(??_vfpfcnvrt+0+0)^00h,c
	clrf	(??_vfpfcnvrt+0+0+1)^00h,c

	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_vfpfcnvrt+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5195
	goto	l4919
	
l5195:; BSR set to: 0

; Switch size 1, requested type "simple"
; Number of cases is 2, Range of values is 76 to 108
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
;	Chosen strategy is simple_byte

	movf ??_vfpfcnvrt+0+0^00h,c,w
	xorlw	76^0	; case 76
	skipnz
	goto	l4913
	xorlw	108^76	; case 108
	skipnz
	goto	l4911
	goto	l4919

	line	1491
	
l4919:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1491:    *fmt = cp+1;
	movlw	01h
	addwf	((vfpfcnvrt@cp))&0ffh,w
	movwf	(??_vfpfcnvrt+0+0)^00h,c
	movlw	0
	addwfc	((vfpfcnvrt@cp+1))&0ffh,w
	movwf	(??_vfpfcnvrt+0+0+1)^00h,c
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	movff	??_vfpfcnvrt+0+0,postinc2
	movff	??_vfpfcnvrt+0+1,postdec2

	line	1492
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1492:    switch (*cp) {
	goto	l4927
	line	1519
	
l4921:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1519:      return (int) efgtoa(fp, convarg.f, *cp);
		movff	(vfpfcnvrt@fp),(efgtoa@fp)
	movff	(vfpfcnvrt@fp+1),(efgtoa@fp+1)

	movff	(vfpfcnvrt@convarg),(efgtoa@f)
	movff	(vfpfcnvrt@convarg+1),(efgtoa@f+1)
	movff	(vfpfcnvrt@convarg+2),(efgtoa@f+2)
	movff	(vfpfcnvrt@convarg+3),(efgtoa@f+3)
	movff	(vfpfcnvrt@cp),tblptrl
	movff	(vfpfcnvrt@cp+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movff	tablat,(efgtoa@c)
	call	_efgtoa	;wreg free
	movff	0+?_efgtoa,(?_vfpfcnvrt)
	movff	1+?_efgtoa,(?_vfpfcnvrt+1)
	goto	l1068
	line	1521
	
l4927:; BSR set to: 0

	movff	(vfpfcnvrt@cp),tblptrl
	movff	(vfpfcnvrt@cp+1),tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	movwf	(??_vfpfcnvrt+0+0)^00h,c
	clrf	(??_vfpfcnvrt+0+0+1)^00h,c

	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_vfpfcnvrt+0+1^00h,c,w
	xorlw	0^0	; case 0
	skipnz
	goto	l5197
	goto	l4929
	
l5197:; BSR set to: 0

; Switch size 1, requested type "simple"
; Number of cases is 1, Range of values is 102 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
;	Chosen strategy is simple_byte

	movf ??_vfpfcnvrt+0+0^00h,c,w
	xorlw	102^0	; case 102
	skipnz
	goto	l4921
	goto	l4929

	line	1535
	
l4929:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1535:         ++*fmt;
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	1536
	
l4931:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1536:         return (int) 0;
	movlw	high(0)
	movwf	((?_vfpfcnvrt+1))&0ffh
	movlw	low(0)
	movwf	((?_vfpfcnvrt))&0ffh
	goto	l1068
	line	1540
	
l4935:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1540:     fputc((int)(*fmt)[0], fp);
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	movff	postinc2,tblptrl
	movff	postdec2,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w

	movwf	((c:fputc@c))^00h,c
	clrf	((c:fputc@c+1))^00h,c
		movff	(vfpfcnvrt@fp),(c:fputc@fp)
	movff	(vfpfcnvrt@fp+1),(c:fputc@fp+1)

	call	_fputc	;wreg free
	line	1541
	
l4937:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1541:     ++*fmt;
	movff	(vfpfcnvrt@fmt),fsr2l
	movff	(vfpfcnvrt@fmt+1),fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	1542
	
l4939:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1542:     return (int) 1;
	movlw	high(01h)
	movlb	0	; () banked
	movwf	((?_vfpfcnvrt+1))&0ffh
	movlw	low(01h)
	movwf	((?_vfpfcnvrt))&0ffh
	line	1543
	
l1068:
	return	;funcret
	callstack 0
GLOBAL	__end_of_vfpfcnvrt
	__end_of_vfpfcnvrt:
	signat	_vfpfcnvrt,12410
	global	_read_prec_or_width

;; *************** function _read_prec_or_width *****************
;; Defined at:
;;		line 1029 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fmt             2    9[COMRAM] PTR PTR const unsigned c
;;		 -> vfprintf@cfmt(2), 
;;  ap              2   11[COMRAM] PTR PTR void [1]
;;		 -> snprintf@ap(2), software_uart_print_fmt@args(2), 
;; Auto vars:     Size  Location     Type
;;  c               1   15[COMRAM] unsigned char 
;;  n               2   16[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2    9[COMRAM] int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___wmul
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=1
	line	1029
global __ptext9
__ptext9:
psect	text9
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
	line	1029
	
_read_prec_or_width:
;incstack = 0
	callstack 24
	line	1030
	
l4869:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1030:     int n = 0;
	movlw	high(0)
	movwf	((c:read_prec_or_width@n+1))^00h,c
	movlw	low(0)
	movwf	((c:read_prec_or_width@n))^00h,c
	line	1031
	
l4871:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1031:     if ((*fmt)[0] == '*') {
	movff	(c:read_prec_or_width@fmt),fsr2l
	movff	(c:read_prec_or_width@fmt+1),fsr2h
	movff	postinc2,tblptrl
	movff	postdec2,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	xorlw	02Ah
	btfss	status,2
	goto	u5661
	goto	u5660
u5661:
	goto	l4879
u5660:
	line	1032
	
l4873:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1032:         ++*fmt;
	movff	(c:read_prec_or_width@fmt),fsr2l
	movff	(c:read_prec_or_width@fmt+1),fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	1033
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1033:         n = (*(int *)__va_arg(*(int **)*ap, (int)0));
	movff	(c:read_prec_or_width@ap),fsr2l
	movff	(c:read_prec_or_width@ap+1),fsr2h
	movff	indf2,??_read_prec_or_width+0+0
	movlw	low(02h)
	addwf	postinc2
	movff	indf2,??_read_prec_or_width+0+0+1
	movlw	high(02h)
	addwfc	postdec2
	movff	??_read_prec_or_width+0+0,fsr2l
	movff	??_read_prec_or_width+0+1,fsr2h
	movff	postinc2,(c:read_prec_or_width@n)
	movff	postdec2,(c:read_prec_or_width@n+1)
	line	1034
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1034:     } else {
	goto	l1044
	line	1037
	
l4875:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1037:             n = n * 10 + c;
	movff	(c:read_prec_or_width@n),(c:___wmul@multiplier)
	movff	(c:read_prec_or_width@n+1),(c:___wmul@multiplier+1)
	movlw	high(0Ah)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movf	((c:read_prec_or_width@c))^00h,c,w
	addwf	(0+?___wmul)^00h,c,w
	movwf	((c:read_prec_or_width@n))^00h,c
	movlw	0
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+((c:read_prec_or_width@n))^00h,c
	line	1038
	
l4877:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1038:             ++*fmt;
	movff	(c:read_prec_or_width@fmt),fsr2l
	movff	(c:read_prec_or_width@fmt+1),fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	1036
	
l4879:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1036:         while ((c = ((unsigned)(*fmt)[0]) - '0') < 10) {
	movff	(c:read_prec_or_width@fmt),fsr2l
	movff	(c:read_prec_or_width@fmt+1),fsr2h
	movff	postinc2,tblptrl
	movff	postdec2,tblptrh
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	tblrd	*
	
	movf	tablat,w
	addlw	low(0D0h)
	movwf	((c:read_prec_or_width@c))^00h,c
		movlw	0Ah-1
	cpfsgt	((c:read_prec_or_width@c))^00h,c
	goto	u5671
	goto	u5670

u5671:
	goto	l4875
u5670:
	line	1040
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1040:     }
	
l1044:
	line	1041
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 1041:     return n;
	movff	(c:read_prec_or_width@n),(c:?_read_prec_or_width)
	movff	(c:read_prec_or_width@n+1),(c:?_read_prec_or_width+1)
	line	1042
	
l1048:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_prec_or_width
	__end_of_read_prec_or_width:
	signat	_read_prec_or_width,8314
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    3[COMRAM] unsigned int 
;;  multiplicand    2    5[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    7[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_prec_or_width
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\Umul16.c"
	line	15
global __ptext10
__ptext10:
psect	text10
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\Umul16.c"
	line	15
	
___wmul:
;incstack = 0
	callstack 24
	line	37
	
l4189:
	movf	((c:___wmul@multiplier))^00h,c,w
	mulwf	((c:___wmul@multiplicand))^00h,c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier))^00h,c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h))^00h,c
	movf	(prodl)^0f00h,c,w
	addwf	((c:___wmul@product+1))^00h,c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h))^00h,c,w
	mulwf	((c:___wmul@multiplicand))^00h,c
	movf	(prodl)^0f00h,c,w
	addwf	((c:___wmul@product+1))^00h,c

	line	52
	
l4191:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	line	53
	
l262:
	return	;funcret
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_efgtoa

;; *************** function _efgtoa *****************
;; Defined at:
;;		line 531 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2    0[BANK0 ] PTR struct _IO_FILE
;;		 -> vsprintf@f(12), snprintf@f(12), 
;;  f               4    2[BANK0 ] PTR struct _IO_FILE
;;  c               1    6[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  u               4   47[BANK0 ] struct flui
;;  g               4   41[BANK0 ] struct flui
;;  l               4   36[BANK0 ] struct flui
;;  h               4   32[BANK0 ] struct flui
;;  ou              4   26[BANK0 ] struct flui
;;  n               2   45[BANK0 ] int 
;;  i               2   30[BANK0 ] int 
;;  w               2   24[BANK0 ] int 
;;  e               2   22[BANK0 ] int 
;;  m               2   20[BANK0 ] int 
;;  d               2   18[BANK0 ] int 
;;  t               2   11[BANK0 ] int 
;;  p               2    9[BANK0 ] int 
;;  ne              2    7[BANK0 ] int 
;;  sign            1   40[BANK0 ] unsigned char 
;;  nmode           1   17[BANK0 ] unsigned char 
;;  mode            1   16[BANK0 ] unsigned char 
;;  pp              1   15[BANK0 ] unsigned char 
;;  esign           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       7       0       0       0       0       0       0       0
;;      Locals:         0      44       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0
;;      Totals:         2      51       0       0       0       0       0       0       0
;;Total ram usage:       53 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		___fladd
;;		___fldiv
;;		___fleq
;;		___flge
;;		___flmul
;;		___flneg
;;		___flsub
;;		___fltol
;;		___fpclassifyf
;;		_floorf
;;		_labs
;;		_memcpy
;;		_pad
;;		_strcpy
;; This function is called by:
;;		_vfpfcnvrt
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
	line	531
global __ptext11
__ptext11:
psect	text11
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
	line	531
	
_efgtoa:
;incstack = 0
	callstack 21
	line	539
	
l4647:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 531: static int efgtoa(FILE *fp, long double f, char c);C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 532: {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 533:     char mode, nmode, pp, sign, esign;;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 534:     int d, e, i, m, n, ne, p, t, w;;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 535:     long double h, l;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((efgtoa@sign))&0ffh
	line	540
	
l4649:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 540:     g.f = f;
	movff	(efgtoa@f),(efgtoa@g)
	movff	(efgtoa@f+1),(efgtoa@g+1)
	movff	(efgtoa@f+2),(efgtoa@g+2)
	movff	(efgtoa@f+3),(efgtoa@g+3)
	line	541
	
l4651:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 541:     if (g.f < 0.0) {
	btfsc	((efgtoa@g+3))&0ffh,7
	goto	u5340
	goto	u5341

u5341:
	goto	l4657
u5340:
	line	542
	
l4653:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 542:         sign = 1;
	movlw	low(01h)
	movwf	((efgtoa@sign))&0ffh
	line	543
	
l4655:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 543:         g.f = -g.f;
	movff	(efgtoa@g),(c:___flneg@f1)
	movff	(efgtoa@g+1),(c:___flneg@f1+1)
	movff	(efgtoa@g+2),(c:___flneg@f1+2)
	movff	(efgtoa@g+3),(c:___flneg@f1+3)
	call	___flneg	;wreg free
	movff	0+?___flneg,(efgtoa@g)
	movff	1+?___flneg,(efgtoa@g+1)
	movff	2+?___flneg,(efgtoa@g+2)
	movff	3+?___flneg,(efgtoa@g+3)
	
	line	547
	
l4657:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 547:     n = 0;
	movlw	high(0)
	movlb	0	; () banked
	movwf	((efgtoa@n+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@n))&0ffh
	line	548
	
l4659:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 548:     w = width;
	movff	(_width),(efgtoa@w)
	movff	(_width+1),(efgtoa@w+1)
	line	549
	
l4661:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 549:     if (sign
	movf	((efgtoa@sign))&0ffh,w
	btfsc	status,2
	goto	u5351
	goto	u5350
u5351:
	goto	l4671
u5350:
	line	554
	
l4663:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 553:    ) {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 554:   sign = sign ? '-' : '+';
	movf	((efgtoa@sign))&0ffh,w
	btfss	status,2
	goto	u5361
	goto	u5360
u5361:
	goto	l4667
u5360:
	
l4665:; BSR set to: 0

	movlw	high(02Bh)
	movwf	((_efgtoa$1677+1))&0ffh
	movlw	low(02Bh)
	movwf	((_efgtoa$1677))&0ffh
	goto	l4669
	
l4667:; BSR set to: 0

	movlw	high(02Dh)
	movwf	((_efgtoa$1677+1))&0ffh
	movlw	low(02Dh)
	movwf	((_efgtoa$1677))&0ffh
	
l4669:; BSR set to: 0

	movff	(_efgtoa$1677),(efgtoa@sign)
	line	563
	
l4671:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 563:     if (( __fpclassifyf(g.f) == 1 )) {
	movff	(efgtoa@g),(c:___fpclassifyf@x)
	movff	(efgtoa@g+1),(c:___fpclassifyf@x+1)
	movff	(efgtoa@g+2),(c:___fpclassifyf@x+2)
	movff	(efgtoa@g+3),(c:___fpclassifyf@x+3)
	call	___fpclassifyf	;wreg free
		decf	(0+?___fpclassifyf)^00h,c,w
iorwf	(1+?___fpclassifyf)^00h,c,w
	btfss	status,2
	goto	u5371
	goto	u5370

u5371:
	goto	l4689
u5370:
	line	564
	
l4673:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 564:   if (sign) {
	movlb	0	; () banked
	movf	((efgtoa@sign))&0ffh,w
	btfsc	status,2
	goto	u5381
	goto	u5380
u5381:
	goto	l4681
u5380:
	line	565
	
l4675:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 565:    dbuf[0] = sign;
	movff	(efgtoa@sign),(_dbuf)
	line	566
	
l4677:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 566:    w--;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	567
	
l4679:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 567:    n = 1;
	movlw	high(01h)
	movwf	((efgtoa@n+1))&0ffh
	movlw	low(01h)
	movwf	((efgtoa@n))&0ffh
	line	576
	
l4681:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 575:   {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 576:             strcpy(&dbuf[n], "inf");
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	((c:strcpy@dest))^00h,c
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+((c:strcpy@dest))^00h,c
		movlw	low(STR_3)
	movwf	((c:strcpy@src))^00h,c
	movlw	high(STR_3)
	movwf	((c:strcpy@src+1))^00h,c

	call	_strcpy	;wreg free
	line	578
	
l4683:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 577:         };C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 578:         w -= ((sizeof("inf")/sizeof("inf"[0]))-1);
	movlb	0	; () banked
	movlw	low(-3)
	addwf	((efgtoa@w))&0ffh
	movlw	high(-3)
	addwfc	((efgtoa@w+1))&0ffh
	line	579
	
l4685:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 579:         return (int) pad(fp, &dbuf[0], w);
		movff	(efgtoa@fp),(c:pad@fp)
	movff	(efgtoa@fp+1),(c:pad@fp+1)

		movlw	low(_dbuf)
	movwf	((c:pad@buf))^00h,c
	movlw	high(_dbuf)
	movwf	((c:pad@buf+1))^00h,c

	movff	(efgtoa@w),(c:pad@p)
	movff	(efgtoa@w+1),(c:pad@p+1)
	call	_pad	;wreg free
	movff	0+?_pad,(?_efgtoa)
	movff	1+?_pad,(?_efgtoa+1)
	goto	l999
	line	581
	
l4689:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 581:     if (( __fpclassifyf(g.f) == 0 )) {
	movff	(efgtoa@g),(c:___fpclassifyf@x)
	movff	(efgtoa@g+1),(c:___fpclassifyf@x+1)
	movff	(efgtoa@g+2),(c:___fpclassifyf@x+2)
	movff	(efgtoa@g+3),(c:___fpclassifyf@x+3)
	call	___fpclassifyf	;wreg free
	movf	(0+?___fpclassifyf)^00h,c,w
iorwf	(1+?___fpclassifyf)^00h,c,w
	btfss	status,2
	goto	u5391
	goto	u5390

u5391:
	goto	l4707
u5390:
	line	582
	
l4691:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 582:   if (sign) {
	movlb	0	; () banked
	movf	((efgtoa@sign))&0ffh,w
	btfsc	status,2
	goto	u5401
	goto	u5400
u5401:
	goto	l4699
u5400:
	line	583
	
l4693:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 583:    dbuf[0] = sign;
	movff	(efgtoa@sign),(_dbuf)
	line	584
	
l4695:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 584:    w--;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	585
	
l4697:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 585:    n = 1;
	movlw	high(01h)
	movwf	((efgtoa@n+1))&0ffh
	movlw	low(01h)
	movwf	((efgtoa@n))&0ffh
	line	594
	
l4699:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 593:   {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 594:             strcpy(&dbuf[n], "nan");
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	((c:strcpy@dest))^00h,c
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+((c:strcpy@dest))^00h,c
		movlw	low(STR_6)
	movwf	((c:strcpy@src))^00h,c
	movlw	high(STR_6)
	movwf	((c:strcpy@src+1))^00h,c

	call	_strcpy	;wreg free
	goto	l4683
	line	601
	
l4707:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 601:     u.f = 1.0;
	movlw	low(normalize32(0x3f800000))
	movlb	0	; () banked
	movwf	((efgtoa@u))&0ffh
	movlw	high(normalize32(0x3f800000))
	movwf	((efgtoa@u+1))&0ffh
	movlw	low highword(normalize32(0x3f800000))
	movwf	((efgtoa@u+2))&0ffh
	movlw	high highword(normalize32(0x3f800000))
	movwf	((efgtoa@u+3))&0ffh
	line	602
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 602:     e = 0;
	movlw	high(0)
	movwf	((efgtoa@e+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@e))&0ffh
	line	603
	
l4709:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 603:  if (!(g.f == 0.0)) {
	movff	(efgtoa@g),(c:___fleq@ff1)
	movff	(efgtoa@g+1),(c:___fleq@ff1+1)
	movff	(efgtoa@g+2),(c:___fleq@ff1+2)
	movff	(efgtoa@g+3),(c:___fleq@ff1+3)
	movlw	low(normalize32(0x0))
	movwf	((c:___fleq@ff2))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fleq@ff2+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fleq@ff2+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fleq@ff2+3))^00h,c
	call	___fleq	;wreg free
	btfsc	status,0
	goto	u5411
	goto	u5410
u5411:
	goto	l1002
u5410:
	goto	l4715
	line	604
	
l1004:
	line	605
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 605:    u = ou;
	movff	(efgtoa@ou),(efgtoa@u)
	movff	(efgtoa@ou+1),(efgtoa@u+1)
	movff	(efgtoa@ou+2),(efgtoa@u+2)
	movff	(efgtoa@ou+3),(efgtoa@u+3)
	line	606
	
l4713:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 606:    ++e;
	movlb	0	; () banked
	infsnz	((efgtoa@e))&0ffh
	incf	((efgtoa@e+1))&0ffh
	line	604
	
l4715:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 604:   while ((labs((g).u-((ou.f = u.f*10.0,ou)).u) <= 1) || g.f > ou.f) {
	movff	(efgtoa@u),(c:___flmul@b)
	movff	(efgtoa@u+1),(c:___flmul@b+1)
	movff	(efgtoa@u+2),(c:___flmul@b+2)
	movff	(efgtoa@u+3),(c:___flmul@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+3))^00h,c
	call	___flmul	;wreg free
	movff	0+?___flmul,(efgtoa@ou)
	movff	1+?___flmul,(efgtoa@ou+1)
	movff	2+?___flmul,(efgtoa@ou+2)
	movff	3+?___flmul,(efgtoa@ou+3)
	
	
l4717:
	movlb	0	; () banked
	movf	((efgtoa@ou))&0ffh,w
	subwf	((efgtoa@g))&0ffh,w
	movwf	((c:labs@a))^00h,c
	movf	((efgtoa@ou+1))&0ffh,w
	subwfb	((efgtoa@g+1))&0ffh,w
	movwf	1+((c:labs@a))^00h,c
	
	movf	((efgtoa@ou+2))&0ffh,w
	subwfb	((efgtoa@g+2))&0ffh,w
	movwf	2+((c:labs@a))^00h,c
	
	movf	((efgtoa@ou+3))&0ffh,w
	subwfb	((efgtoa@g+3))&0ffh,w
	movwf	3+((c:labs@a))^00h,c
	call	_labs	;wreg free
	btfsc	(3+?_labs)^00h,c,7
	goto	u5421
	movf	(3+?_labs)^00h,c,w
	iorwf	(2+?_labs)^00h,c,w
	iorwf	(1+?_labs)^00h,c,w
	bnz	u5420
	movlw	2
	subwf	 (0+?_labs)^00h,c,w
	btfss	status,0
	goto	u5421
	goto	u5420

u5421:
	goto	l1004
u5420:
	
l4719:
	movff	(efgtoa@ou),(c:___flge@ff1)
	movff	(efgtoa@ou+1),(c:___flge@ff1+1)
	movff	(efgtoa@ou+2),(c:___flge@ff1+2)
	movff	(efgtoa@ou+3),(c:___flge@ff1+3)
	movff	(efgtoa@g),(c:___flge@ff2)
	movff	(efgtoa@g+1),(c:___flge@ff2+1)
	movff	(efgtoa@g+2),(c:___flge@ff2+2)
	movff	(efgtoa@g+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfss	status,0
	goto	u5431
	goto	u5430
u5431:
	goto	l1004
u5430:
	line	608
	
l4721:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 608:   if ((labs((g).u-(u).u) <= 1)) {
	movlb	0	; () banked
	movf	((efgtoa@u))&0ffh,w
	subwf	((efgtoa@g))&0ffh,w
	movwf	((c:labs@a))^00h,c
	movf	((efgtoa@u+1))&0ffh,w
	subwfb	((efgtoa@g+1))&0ffh,w
	movwf	1+((c:labs@a))^00h,c
	
	movf	((efgtoa@u+2))&0ffh,w
	subwfb	((efgtoa@g+2))&0ffh,w
	movwf	2+((c:labs@a))^00h,c
	
	movf	((efgtoa@u+3))&0ffh,w
	subwfb	((efgtoa@g+3))&0ffh,w
	movwf	3+((c:labs@a))^00h,c
	call	_labs	;wreg free
	btfsc	(3+?_labs)^00h,c,7
	goto	u5440
	movf	(3+?_labs)^00h,c,w
	iorwf	(2+?_labs)^00h,c,w
	iorwf	(1+?_labs)^00h,c,w
	bnz	u5441
	movlw	2
	subwf	 (0+?_labs)^00h,c,w
	btfsc	status,0
	goto	u5441
	goto	u5440

u5441:
	goto	l4733
u5440:
	line	609
	
l4723:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 609:    g = u;
	movff	(efgtoa@u),(efgtoa@g)
	movff	(efgtoa@u+1),(efgtoa@g+1)
	movff	(efgtoa@u+2),(efgtoa@g+2)
	movff	(efgtoa@u+3),(efgtoa@g+3)
	line	610
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 610:   }
	goto	l1002
	line	613
	
l4725:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 613:     u.f = u.f/10.0;
	movff	(efgtoa@u),(c:___fldiv@b)
	movff	(efgtoa@u+1),(c:___fldiv@b+1)
	movff	(efgtoa@u+2),(c:___fldiv@b+2)
	movff	(efgtoa@u+3),(c:___fldiv@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+3))^00h,c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(efgtoa@u)
	movff	1+?___fldiv,(efgtoa@u+1)
	movff	2+?___fldiv,(efgtoa@u+2)
	movff	3+?___fldiv,(efgtoa@u+3)
	
	line	614
	
l4727:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 614:     --e;
	movlb	0	; () banked
	decf	((efgtoa@e))&0ffh
	btfss	status,0
	decf	((efgtoa@e+1))&0ffh
	line	615
	
l4729:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 615:     if ((labs((g).u-(u).u) <= 1)) {
	movf	((efgtoa@u))&0ffh,w
	subwf	((efgtoa@g))&0ffh,w
	movwf	((c:labs@a))^00h,c
	movf	((efgtoa@u+1))&0ffh,w
	subwfb	((efgtoa@g+1))&0ffh,w
	movwf	1+((c:labs@a))^00h,c
	
	movf	((efgtoa@u+2))&0ffh,w
	subwfb	((efgtoa@g+2))&0ffh,w
	movwf	2+((c:labs@a))^00h,c
	
	movf	((efgtoa@u+3))&0ffh,w
	subwfb	((efgtoa@g+3))&0ffh,w
	movwf	3+((c:labs@a))^00h,c
	call	_labs	;wreg free
	btfsc	(3+?_labs)^00h,c,7
	goto	u5450
	movf	(3+?_labs)^00h,c,w
	iorwf	(2+?_labs)^00h,c,w
	iorwf	(1+?_labs)^00h,c,w
	bnz	u5451
	movlw	2
	subwf	 (0+?_labs)^00h,c,w
	btfsc	status,0
	goto	u5451
	goto	u5450

u5451:
	goto	l4733
u5450:
	goto	l4723
	line	612
	
l4733:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 612:    while (g.f < u.f) {
	movff	(efgtoa@g),(c:___flge@ff1)
	movff	(efgtoa@g+1),(c:___flge@ff1+1)
	movff	(efgtoa@g+2),(c:___flge@ff1+2)
	movff	(efgtoa@g+3),(c:___flge@ff1+3)
	movff	(efgtoa@u),(c:___flge@ff2)
	movff	(efgtoa@u+1),(c:___flge@ff2+1)
	movff	(efgtoa@u+2),(c:___flge@ff2+2)
	movff	(efgtoa@u+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfss	status,0
	goto	u5461
	goto	u5460
u5461:
	goto	l4725
u5460:
	line	621
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 621:     }
	
l1002:
	line	627
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 627:  mode = c;
	movff	(efgtoa@c),(efgtoa@mode)
	line	629
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 629:     nmode = mode;
	movff	(efgtoa@mode),(efgtoa@nmode)
	line	640
	
l4735:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 639:  {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 640:         p = (prec < 0) ? 6 : prec;
	movlb	0	; () banked
	btfsc	((_prec+1))&0ffh,7
	goto	u5471
	goto	u5470

u5471:
	goto	l4739
u5470:
	
l4737:; BSR set to: 0

	movff	(_prec),(efgtoa@p)
	movff	(_prec+1),(efgtoa@p+1)
	goto	l4741
	
l4739:; BSR set to: 0

	movlw	high(06h)
	movwf	((efgtoa@p+1))&0ffh
	movlw	low(06h)
	movwf	((efgtoa@p))&0ffh
	line	655
	
l4741:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 641:     };C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 655:     m = p;
	movff	(efgtoa@p),(efgtoa@m)
	movff	(efgtoa@p+1),(efgtoa@m+1)
	line	660
	
l4743:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 659:  {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 660:         ++m;
	infsnz	((efgtoa@m))&0ffh
	incf	((efgtoa@m+1))&0ffh
	line	665
	
l4745:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 661:     };C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 665:     if (nmode == 'f') {
		movlw	102
	xorwf	((efgtoa@nmode))&0ffh,w
	btfss	status,2
	goto	u5481
	goto	u5480

u5481:
	goto	l4755
u5480:
	line	666
	
l4747:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 666:         if (e < 0) {
	btfsc	((efgtoa@e+1))&0ffh,7
	goto	u5490
	goto	u5491

u5491:
	goto	l4751
u5490:
	line	667
	
l4749:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 667:             u.f = 1.0;
	movlw	low(normalize32(0x3f800000))
	movwf	((efgtoa@u))&0ffh
	movlw	high(normalize32(0x3f800000))
	movwf	((efgtoa@u+1))&0ffh
	movlw	low highword(normalize32(0x3f800000))
	movwf	((efgtoa@u+2))&0ffh
	movlw	high highword(normalize32(0x3f800000))
	movwf	((efgtoa@u+3))&0ffh
	line	668
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 668:             e = 0;
	movlw	high(0)
	movwf	((efgtoa@e+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@e))&0ffh
	line	670
	
l4751:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 670:         if (!(mode == 'g')) {
		movlw	103
	xorwf	((efgtoa@mode))&0ffh,w
	btfsc	status,2
	goto	u5501
	goto	u5500

u5501:
	goto	l4755
u5500:
	line	671
	
l4753:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 671:             m += e;
	movf	((efgtoa@e))&0ffh,w
	addwf	((efgtoa@m))&0ffh
	movf	((efgtoa@e+1))&0ffh,w
	addwfc	((efgtoa@m+1))&0ffh

	line	677
	
l4755:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 677:     i = 0;
	movlw	high(0)
	movwf	((efgtoa@i+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@i))&0ffh
	line	678
	
l4757:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 678:     h = g.f;
	movff	(efgtoa@g),(efgtoa@h)
	movff	(efgtoa@g+1),(efgtoa@h+1)
	movff	(efgtoa@g+2),(efgtoa@h+2)
	movff	(efgtoa@g+3),(efgtoa@h+3)
	line	679
	
l4759:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 679:     ou = u;
	movff	(efgtoa@u),(efgtoa@ou)
	movff	(efgtoa@u+1),(efgtoa@ou+1)
	movff	(efgtoa@u+2),(efgtoa@ou+2)
	movff	(efgtoa@u+3),(efgtoa@ou+3)
	line	680
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 680:     while (i < m) {
	goto	l4769
	line	681
	
l4761:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 681:         l = floorf(h/u.f);
	movff	(efgtoa@h),(c:___fldiv@b)
	movff	(efgtoa@h+1),(c:___fldiv@b+1)
	movff	(efgtoa@h+2),(c:___fldiv@b+2)
	movff	(efgtoa@h+3),(c:___fldiv@b+3)
	movff	(efgtoa@u),(c:___fldiv@a)
	movff	(efgtoa@u+1),(c:___fldiv@a+1)
	movff	(efgtoa@u+2),(c:___fldiv@a+2)
	movff	(efgtoa@u+3),(c:___fldiv@a+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:floorf@x)
	movff	1+?___fldiv,(c:floorf@x+1)
	movff	2+?___fldiv,(c:floorf@x+2)
	movff	3+?___fldiv,(c:floorf@x+3)
	
	call	_floorf	;wreg free
	movff	0+?_floorf,(efgtoa@l)
	movff	1+?_floorf,(efgtoa@l+1)
	movff	2+?_floorf,(efgtoa@l+2)
	movff	3+?_floorf,(efgtoa@l+3)
	
	line	682
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 682:         d = (int)l;
	movff	(efgtoa@l),(c:___fltol@f1)
	movff	(efgtoa@l+1),(c:___fltol@f1+1)
	movff	(efgtoa@l+2),(c:___fltol@f1+2)
	movff	(efgtoa@l+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(efgtoa@d)
	movff	1+?___fltol,(efgtoa@d+1)
	line	683
	
l4763:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 683:         h -= l*u.f;
	movff	(efgtoa@h),(c:___flsub@b)
	movff	(efgtoa@h+1),(c:___flsub@b+1)
	movff	(efgtoa@h+2),(c:___flsub@b+2)
	movff	(efgtoa@h+3),(c:___flsub@b+3)
	movff	(efgtoa@l),(c:___flmul@a)
	movff	(efgtoa@l+1),(c:___flmul@a+1)
	movff	(efgtoa@l+2),(c:___flmul@a+2)
	movff	(efgtoa@l+3),(c:___flmul@a+3)
	movff	(efgtoa@u),(c:___flmul@b)
	movff	(efgtoa@u+1),(c:___flmul@b+1)
	movff	(efgtoa@u+2),(c:___flmul@b+2)
	movff	(efgtoa@u+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@a)
	movff	1+?___flmul,(c:___flsub@a+1)
	movff	2+?___flmul,(c:___flsub@a+2)
	movff	3+?___flmul,(c:___flsub@a+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(efgtoa@h)
	movff	1+?___flsub,(efgtoa@h+1)
	movff	2+?___flsub,(efgtoa@h+2)
	movff	3+?___flsub,(efgtoa@h+3)
	
	line	684
	
l4765:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 684:         u.f = u.f/10.0;
	movff	(efgtoa@u),(c:___fldiv@b)
	movff	(efgtoa@u+1),(c:___fldiv@b+1)
	movff	(efgtoa@u+2),(c:___fldiv@b+2)
	movff	(efgtoa@u+3),(c:___fldiv@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+3))^00h,c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(efgtoa@u)
	movff	1+?___fldiv,(efgtoa@u+1)
	movff	2+?___fldiv,(efgtoa@u+2)
	movff	3+?___fldiv,(efgtoa@u+3)
	
	line	685
	
l4767:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 685:         ++i;
	movlb	0	; () banked
	infsnz	((efgtoa@i))&0ffh
	incf	((efgtoa@i+1))&0ffh
	line	680
	
l4769:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 680:     while (i < m) {
		movf	((efgtoa@m))&0ffh,w
	subwf	((efgtoa@i))&0ffh,w
	movf	((efgtoa@i+1))&0ffh,w
	xorlw	80h
	movwf	(??_efgtoa+0+0)^00h,c
	movf	((efgtoa@m+1))&0ffh,w
	xorlw	80h
	subwfb	(??_efgtoa+0+0)^00h,c,w
	btfss	status,0
	goto	u5511
	goto	u5510

u5511:
	goto	l4761
u5510:
	line	689
	
l4771:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 689:     l = u.f*5.0;
	movff	(efgtoa@u),(c:___flmul@b)
	movff	(efgtoa@u+1),(c:___flmul@b+1)
	movff	(efgtoa@u+2),(c:___flmul@b+2)
	movff	(efgtoa@u+3),(c:___flmul@b+3)
	movlw	low(normalize32(0x40a00000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x40a00000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x40a00000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x40a00000))
	movwf	((c:___flmul@a+3))^00h,c
	call	___flmul	;wreg free
	movff	0+?___flmul,(efgtoa@l)
	movff	1+?___flmul,(efgtoa@l+1)
	movff	2+?___flmul,(efgtoa@l+2)
	movff	3+?___flmul,(efgtoa@l+3)
	
	line	690
	
l4773:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 690:     if (h < l) {
	movff	(efgtoa@h),(c:___flge@ff1)
	movff	(efgtoa@h+1),(c:___flge@ff1+1)
	movff	(efgtoa@h+2),(c:___flge@ff1+2)
	movff	(efgtoa@h+3),(c:___flge@ff1+3)
	movff	(efgtoa@l),(c:___flge@ff2)
	movff	(efgtoa@l+1),(c:___flge@ff2+1)
	movff	(efgtoa@l+2),(c:___flge@ff2+2)
	movff	(efgtoa@l+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5521
	goto	u5520
u5521:
	goto	l4777
u5520:
	line	691
	
l4775:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 691:         l = 0.0;
	movlw	low(normalize32(0x0))
	movlb	0	; () banked
	movwf	((efgtoa@l))&0ffh
	movlw	high(normalize32(0x0))
	movwf	((efgtoa@l+1))&0ffh
	movlw	low highword(normalize32(0x0))
	movwf	((efgtoa@l+2))&0ffh
	movlw	high highword(normalize32(0x0))
	movwf	((efgtoa@l+3))&0ffh
	line	692
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 692:     } else {
	goto	l4783
	line	694
	
l4777:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 694:         if ((h == l) && !(d % 2)) {
	movff	(efgtoa@h),(c:___fleq@ff1)
	movff	(efgtoa@h+1),(c:___fleq@ff1+1)
	movff	(efgtoa@h+2),(c:___fleq@ff1+2)
	movff	(efgtoa@h+3),(c:___fleq@ff1+3)
	movff	(efgtoa@l),(c:___fleq@ff2)
	movff	(efgtoa@l+1),(c:___fleq@ff2+1)
	movff	(efgtoa@l+2),(c:___fleq@ff2+2)
	movff	(efgtoa@l+3),(c:___fleq@ff2+3)
	call	___fleq	;wreg free
	btfss	status,0
	goto	u5531
	goto	u5530
u5531:
	goto	l4783
u5530:
	
l4779:
	movlb	0	; () banked
	
	btfsc	((efgtoa@d))&0ffh,(0)&7
	goto	u5541
	goto	u5540
u5541:
	goto	l4783
u5540:
	line	695
	
l4781:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 695:             l = 0.0;
	movlw	low(normalize32(0x0))
	movwf	((efgtoa@l))&0ffh
	movlw	high(normalize32(0x0))
	movwf	((efgtoa@l+1))&0ffh
	movlw	low highword(normalize32(0x0))
	movwf	((efgtoa@l+2))&0ffh
	movlw	high highword(normalize32(0x0))
	movwf	((efgtoa@l+3))&0ffh
	line	700
	
l4783:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 700:     h = g.f + l;
	movff	(efgtoa@g),(c:___fladd@b)
	movff	(efgtoa@g+1),(c:___fladd@b+1)
	movff	(efgtoa@g+2),(c:___fladd@b+2)
	movff	(efgtoa@g+3),(c:___fladd@b+3)
	movff	(efgtoa@l),(c:___fladd@a)
	movff	(efgtoa@l+1),(c:___fladd@a+1)
	movff	(efgtoa@l+2),(c:___fladd@a+2)
	movff	(efgtoa@l+3),(c:___fladd@a+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(efgtoa@h)
	movff	1+?___fladd,(efgtoa@h+1)
	movff	2+?___fladd,(efgtoa@h+2)
	movff	3+?___fladd,(efgtoa@h+3)
	
	line	702
	
l4785:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 702:  if (h >= (ou.f*10.0)) {
	movff	(efgtoa@h),(c:___flge@ff1)
	movff	(efgtoa@h+1),(c:___flge@ff1+1)
	movff	(efgtoa@h+2),(c:___flge@ff1+2)
	movff	(efgtoa@h+3),(c:___flge@ff1+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+3))^00h,c
	movff	(efgtoa@ou),(c:___flmul@b)
	movff	(efgtoa@ou+1),(c:___flmul@b+1)
	movff	(efgtoa@ou+2),(c:___flmul@b+2)
	movff	(efgtoa@ou+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flge@ff2)
	movff	1+?___flmul,(c:___flge@ff2+1)
	movff	2+?___flmul,(c:___flge@ff2+2)
	movff	3+?___flmul,(c:___flge@ff2+3)
	
	call	___flge	;wreg free
	btfss	status,0
	goto	u5551
	goto	u5550
u5551:
	goto	l4795
u5550:
	line	703
	
l4787:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 703:   e++;
	movlb	0	; () banked
	infsnz	((efgtoa@e))&0ffh
	incf	((efgtoa@e+1))&0ffh
	line	704
	
l4789:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 704:   ou.f *= 10.0;
	movff	(efgtoa@ou),(c:___flmul@b)
	movff	(efgtoa@ou+1),(c:___flmul@b+1)
	movff	(efgtoa@ou+2),(c:___flmul@b+2)
	movff	(efgtoa@ou+3),(c:___flmul@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___flmul@a+3))^00h,c
	call	___flmul	;wreg free
	movff	0+?___flmul,(efgtoa@ou)
	movff	1+?___flmul,(efgtoa@ou+1)
	movff	2+?___flmul,(efgtoa@ou+2)
	movff	3+?___flmul,(efgtoa@ou+3)
	
	line	706
	
l4791:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 706:   if (nmode == 'f') {
		movlw	102
	movlb	0	; () banked
	xorwf	((efgtoa@nmode))&0ffh,w
	btfss	status,2
	goto	u5561
	goto	u5560

u5561:
	goto	l4795
u5560:
	line	708
	
l4793:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 708:    m++;
	infsnz	((efgtoa@m))&0ffh
	incf	((efgtoa@m+1))&0ffh
	line	714
	
l4795:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 714:     u = ou;
	movff	(efgtoa@ou),(efgtoa@u)
	movff	(efgtoa@ou+1),(efgtoa@u+1)
	movff	(efgtoa@ou+2),(efgtoa@u+2)
	movff	(efgtoa@ou+3),(efgtoa@u+3)
	line	718
	
l4797:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 718:  ne = e;
	movff	(efgtoa@e),(efgtoa@ne)
	movff	(efgtoa@e+1),(efgtoa@ne+1)
	line	720
	
l4799:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 720:     pp = 0;
	movlw	low(0)
	movlb	0	; () banked
	movwf	((efgtoa@pp))&0ffh
	line	721
	
l4801:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 721:     t = 0;
	movlw	high(0)
	movwf	((efgtoa@t+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@t))&0ffh
	line	722
	
l4803:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 722:     i = 0;
	movlw	high(0)
	movwf	((efgtoa@i+1))&0ffh
	movlw	low(0)
	movwf	((efgtoa@i))&0ffh
	line	723
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 723:     while ((i < m) && (n < (80 - 5))) {
	goto	l4845
	line	724
	
l4805:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 724:         l = floorf(h/u.f);
	movff	(efgtoa@h),(c:___fldiv@b)
	movff	(efgtoa@h+1),(c:___fldiv@b+1)
	movff	(efgtoa@h+2),(c:___fldiv@b+2)
	movff	(efgtoa@h+3),(c:___fldiv@b+3)
	movff	(efgtoa@u),(c:___fldiv@a)
	movff	(efgtoa@u+1),(c:___fldiv@a+1)
	movff	(efgtoa@u+2),(c:___fldiv@a+2)
	movff	(efgtoa@u+3),(c:___fldiv@a+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:floorf@x)
	movff	1+?___fldiv,(c:floorf@x+1)
	movff	2+?___fldiv,(c:floorf@x+2)
	movff	3+?___fldiv,(c:floorf@x+3)
	
	call	_floorf	;wreg free
	movff	0+?_floorf,(efgtoa@l)
	movff	1+?_floorf,(efgtoa@l+1)
	movff	2+?_floorf,(efgtoa@l+2)
	movff	3+?_floorf,(efgtoa@l+3)
	
	line	725
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 725:         d = (int)l > 9 ? 9 : (int)l;
	movff	(efgtoa@l),(c:___fltol@f1)
	movff	(efgtoa@l+1),(c:___fltol@f1+1)
	movff	(efgtoa@l+2),(c:___fltol@f1+2)
	movff	(efgtoa@l+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	btfsc	(1+?___fltol)^00h,c,7
	goto	u5570
	movf	(1+?___fltol)^00h,c,w
	bnz	u5571
	movlw	10
	subwf	 (0+?___fltol)^00h,c,w
	btfsc	status,0
	goto	u5571
	goto	u5570

u5571:
	goto	l4809
u5570:
	
l4807:
	movff	(efgtoa@l),(c:___fltol@f1)
	movff	(efgtoa@l+1),(c:___fltol@f1+1)
	movff	(efgtoa@l+2),(c:___fltol@f1+2)
	movff	(efgtoa@l+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movff	0+?___fltol,(efgtoa@d)
	movff	1+?___fltol,(efgtoa@d+1)
	goto	l1032
	
l4809:
	movlw	high(09h)
	movlb	0	; () banked
	movwf	((efgtoa@d+1))&0ffh
	movlw	low(09h)
	movwf	((efgtoa@d))&0ffh
	
l1032:
	line	737
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 736:   {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 737:             if (!pp && (ne < 0)) {
	movlb	0	; () banked
	movf	((efgtoa@pp))&0ffh,w
	btfss	status,2
	goto	u5581
	goto	u5580
u5581:
	goto	l4829
u5580:
	
l4811:; BSR set to: 0

	btfsc	((efgtoa@ne+1))&0ffh,7
	goto	u5590
	goto	u5591

u5591:
	goto	l4829
u5590:
	line	738
	
l4813:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 738:                 dbuf[n++] = '.';
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(02Eh)
	movwf	indf2
	
l4815:; BSR set to: 0

	infsnz	((efgtoa@n))&0ffh
	incf	((efgtoa@n+1))&0ffh
	line	739
	
l4817:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 739:                 --w;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	740
	
l4819:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 740:                 pp = 1;
	movlw	low(01h)
	movwf	((efgtoa@pp))&0ffh
	goto	l4829
	line	743
	
l4821:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 743:                 dbuf[n++] = '0';
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+c:fsr2l
	movlw	low(030h)
	movwf	indf2
	
l4823:; BSR set to: 0

	infsnz	((efgtoa@n))&0ffh
	incf	((efgtoa@n+1))&0ffh
	line	744
	
l4825:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 744:                 --w;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	745
	
l4827:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 745:                 --t;
	decf	((efgtoa@t))&0ffh
	btfss	status,0
	decf	((efgtoa@t+1))&0ffh
	line	742
	
l4829:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 742:             while (t) {
	movf	((efgtoa@t))&0ffh,w
iorwf	((efgtoa@t+1))&0ffh,w
	btfss	status,2
	goto	u5601
	goto	u5600

u5601:
	goto	l4821
u5600:
	line	747
	
l4831:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 747:             dbuf[n++] = (char)((int)'0' + d);
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+c:fsr2l
	movf	((efgtoa@d))&0ffh,w
	addlw	low(030h)
	movwf	indf2,c

	
l4833:; BSR set to: 0

	infsnz	((efgtoa@n))&0ffh
	incf	((efgtoa@n+1))&0ffh
	line	748
	
l4835:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 748:             --w;
	decf	((efgtoa@w))&0ffh
	btfss	status,0
	decf	((efgtoa@w+1))&0ffh
	line	750
	
l4837:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 749:         };C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 750:         h -= l*u.f;
	movff	(efgtoa@h),(c:___flsub@b)
	movff	(efgtoa@h+1),(c:___flsub@b+1)
	movff	(efgtoa@h+2),(c:___flsub@b+2)
	movff	(efgtoa@h+3),(c:___flsub@b+3)
	movff	(efgtoa@l),(c:___flmul@a)
	movff	(efgtoa@l+1),(c:___flmul@a+1)
	movff	(efgtoa@l+2),(c:___flmul@a+2)
	movff	(efgtoa@l+3),(c:___flmul@a+3)
	movff	(efgtoa@u),(c:___flmul@b)
	movff	(efgtoa@u+1),(c:___flmul@b+1)
	movff	(efgtoa@u+2),(c:___flmul@b+2)
	movff	(efgtoa@u+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___flsub@a)
	movff	1+?___flmul,(c:___flsub@a+1)
	movff	2+?___flmul,(c:___flsub@a+2)
	movff	3+?___flmul,(c:___flsub@a+3)
	
	call	___flsub	;wreg free
	movff	0+?___flsub,(efgtoa@h)
	movff	1+?___flsub,(efgtoa@h+1)
	movff	2+?___flsub,(efgtoa@h+2)
	movff	3+?___flsub,(efgtoa@h+3)
	
	line	751
	
l4839:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 751:         u.f = u.f/10.0;
	movff	(efgtoa@u),(c:___fldiv@b)
	movff	(efgtoa@u+1),(c:___fldiv@b+1)
	movff	(efgtoa@u+2),(c:___fldiv@b+2)
	movff	(efgtoa@u+3),(c:___fldiv@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___fldiv@a+3))^00h,c
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(efgtoa@u)
	movff	1+?___fldiv,(efgtoa@u+1)
	movff	2+?___fldiv,(efgtoa@u+2)
	movff	3+?___fldiv,(efgtoa@u+3)
	
	line	752
	
l4841:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 752:         --ne;
	movlb	0	; () banked
	decf	((efgtoa@ne))&0ffh
	btfss	status,0
	decf	((efgtoa@ne+1))&0ffh
	line	753
	
l4843:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 753:         ++i;
	infsnz	((efgtoa@i))&0ffh
	incf	((efgtoa@i+1))&0ffh
	line	723
	
l4845:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 723:     while ((i < m) && (n < (80 - 5))) {
		movf	((efgtoa@m))&0ffh,w
	subwf	((efgtoa@i))&0ffh,w
	movf	((efgtoa@i+1))&0ffh,w
	xorlw	80h
	movwf	(??_efgtoa+0+0)^00h,c
	movf	((efgtoa@m+1))&0ffh,w
	xorlw	80h
	subwfb	(??_efgtoa+0+0)^00h,c,w
	btfsc	status,0
	goto	u5611
	goto	u5610

u5611:
	goto	l4849
u5610:
	
l4847:; BSR set to: 0

	btfsc	((efgtoa@n+1))&0ffh,7
	goto	u5621
	movf	((efgtoa@n+1))&0ffh,w
	bnz	u5620
	movlw	75
	subwf	 ((efgtoa@n))&0ffh,w
	btfss	status,0
	goto	u5621
	goto	u5620

u5621:
	goto	l4805
u5620:
	line	760
	
l4849:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 760:  i = sizeof(dbuf) - 1;
	movlw	high(04Fh)
	movwf	((efgtoa@i+1))&0ffh
	movlw	low(04Fh)
	movwf	((efgtoa@i))&0ffh
	line	761
	
l4851:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 761:     dbuf[i] = '\0';
	movlw	low(_dbuf)
	addwf	((efgtoa@i))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@i+1))&0ffh,w
	movwf	1+c:fsr2l
	clrf	indf2
	line	792
	
l4853:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 792:  memcpy(&dbuf[i-n], &dbuf[0], (size_t)n);
	movlw	low((_dbuf))
	movwf	(??_efgtoa+0+0)^00h,c
	movlw	high((_dbuf))
	movwf	1+(??_efgtoa+0+0)^00h,c
	movf	((efgtoa@n))&0ffh,w
	subwf	(??_efgtoa+0+0)^00h,c
	movf	((efgtoa@n+1))&0ffh,w
	subwfb	(??_efgtoa+0+1)^00h,c
	movf	((efgtoa@i))&0ffh,w
	addwf	(??_efgtoa+0+0)^00h,c,w
	movwf	((c:memcpy@d1))^00h,c
	movf	((efgtoa@i+1))&0ffh,w
	addwfc	(??_efgtoa+0+1)^00h,c,w
	movwf	1+((c:memcpy@d1))^00h,c
		movlw	low(_dbuf)
	movwf	((c:memcpy@s1))^00h,c
	movlw	high(_dbuf)
	movwf	((c:memcpy@s1+1))^00h,c

	movff	(efgtoa@n),(c:memcpy@n)
	movff	(efgtoa@n+1),(c:memcpy@n+1)
	call	_memcpy	;wreg free
	line	793
	
l4855:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 793:  n = i-n;
	movlb	0	; () banked
	movf	((efgtoa@n))&0ffh,w
	subwf	((efgtoa@i))&0ffh,w
	movwf	((efgtoa@n))&0ffh
	movf	((efgtoa@n+1))&0ffh,w
	subwfb	((efgtoa@i+1))&0ffh,w
	movwf	1+((efgtoa@n))&0ffh
	line	794
	
l4857:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 794:  i = sign == 0 ? 0 : 1;
	movf	((efgtoa@sign))&0ffh,w
	btfss	status,2
	goto	u5631
	goto	u5630
u5631:
	movlw	1
	goto	u5640
u5630:
	movlw	0
u5640:
	movwf	((efgtoa@i))&0ffh
	clrf	((efgtoa@i+1))&0ffh
	line	805
	
l4859:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 805:  if (sign) {
	movf	((efgtoa@sign))&0ffh,w
	btfsc	status,2
	goto	u5651
	goto	u5650
u5651:
	goto	l4863
u5650:
	line	806
	
l4861:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 806:   dbuf[--n] = sign;
	decf	((efgtoa@n))&0ffh
	btfss	status,0
	decf	((efgtoa@n+1))&0ffh
	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	c:fsr2l
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+c:fsr2l
	movff	(efgtoa@sign),indf2

	line	808
	
l4863:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 808:  w -= i;
	movf	((efgtoa@i))&0ffh,w
	subwf	((efgtoa@w))&0ffh
	movf	((efgtoa@i+1))&0ffh,w
	subwfb	((efgtoa@w+1))&0ffh

	line	811
	
l4865:; BSR set to: 0

;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 811:     return (int) pad(fp, &dbuf[n], w);
		movff	(efgtoa@fp),(c:pad@fp)
	movff	(efgtoa@fp+1),(c:pad@fp+1)

	movlw	low(_dbuf)
	addwf	((efgtoa@n))&0ffh,w
	movwf	((c:pad@buf))^00h,c
	movlw	high(_dbuf)
	addwfc	((efgtoa@n+1))&0ffh,w
	movwf	1+((c:pad@buf))^00h,c
	movff	(efgtoa@w),(c:pad@p)
	movff	(efgtoa@w+1),(c:pad@p+1)
	call	_pad	;wreg free
	movff	0+?_pad,(?_efgtoa)
	movff	1+?_pad,(?_efgtoa+1)
	line	812
	
l999:
	return	;funcret
	callstack 0
GLOBAL	__end_of_efgtoa
	__end_of_efgtoa:
	signat	_efgtoa,12410
	global	_strcpy

;; *************** function _strcpy *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\strcpy.c"
;; Parameters:    Size  Location     Type
;;  dest            2    3[COMRAM] PTR unsigned char 
;;		 -> dbuf(80), 
;;  src             2    5[COMRAM] PTR const unsigned char 
;;		 -> STR_6(4), STR_3(4), 
;; Auto vars:     Size  Location     Type
;;  d               2    9[COMRAM] PTR unsigned char 
;;		 -> dbuf(80), 
;;  s               2    7[COMRAM] PTR const unsigned char 
;;		 -> STR_6(4), STR_3(4), 
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] PTR unsigned char 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\strcpy.c"
	line	3
global __ptext12
__ptext12:
psect	text12
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\strcpy.c"
	line	3
	
_strcpy:
;incstack = 0
	callstack 24
	line	5
	
l4599:
		movff	(c:strcpy@src),(c:strcpy@s)
	movff	(c:strcpy@src+1),(c:strcpy@s+1)

	line	6
		movff	(c:strcpy@dest),(c:strcpy@d)
	movff	(c:strcpy@dest+1),(c:strcpy@d+1)

	line	7
	
l4601:
	movff	(c:strcpy@s),tblptrl
	movff	(c:strcpy@s+1),tblptrh
	infsnz	((c:strcpy@s))^00h,c
	incf	((c:strcpy@s+1))^00h,c
	if	0	;tblptru may be non-zero
	clrf	tblptru
	endif
	if	0	;tblptru may be non-zero
	global __mediumconst
movlw	low highword(__mediumconst)
	movwf	tblptru
	endif
	movff	(c:strcpy@d),fsr2l
	movff	(c:strcpy@d+1),fsr2h
	infsnz	((c:strcpy@d))^00h,c
	incf	((c:strcpy@d+1))^00h,c
	tblrd	*
	
	movff	tablat,indf2
	movf	indf2,w
	btfss	status,2
	goto	u5211
	goto	u5210
u5211:
	goto	l4601
u5210:
	line	9
	
l1143:
	return	;funcret
	callstack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
	signat	_strcpy,8314
	global	_pad

;; *************** function _pad *****************
;; Defined at:
;;		line 152 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  fp              2   19[COMRAM] PTR struct _IO_FILE
;;		 -> vsprintf@f(12), snprintf@f(12), 
;;  buf             2   21[COMRAM] PTR unsigned char 
;;		 -> dbuf(80), 
;;  p               2   23[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;  w               2   28[COMRAM] int 
;;  i               2   26[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2   19[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_fputc
;;		_fputs
;;		_strlen
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
	line	152
global __ptext13
__ptext13:
psect	text13
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c"
	line	152
	
_pad:
;incstack = 0
	callstack 21
	line	164
	
l4559:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 152: static int pad(FILE *fp, char *buf, int p);C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 153: {;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 154:     int i, w;;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 164:     w = (p < 0) ? 0 : p;
	btfsc	((c:pad@p+1))^00h,c,7
	goto	u5121
	goto	u5120

u5121:
	goto	l4563
u5120:
	
l4561:
	movff	(c:pad@p),(c:pad@w)
	movff	(c:pad@p+1),(c:pad@w+1)
	goto	l984
	
l4563:
	movlw	high(0)
	movwf	((c:pad@w+1))^00h,c
	movlw	low(0)
	movwf	((c:pad@w))^00h,c
	
l984:
	line	165
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 165:     i = 0;
	movlw	high(0)
	movwf	((c:pad@i+1))^00h,c
	movlw	low(0)
	movwf	((c:pad@i))^00h,c
	line	166
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 166:     while (i < w) {
	goto	l4569
	line	167
	
l4565:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 167:         fputc(' ', fp);
	movlw	high(020h)
	movwf	((c:fputc@c+1))^00h,c
	movlw	low(020h)
	movwf	((c:fputc@c))^00h,c
		movff	(c:pad@fp),(c:fputc@fp)
	movff	(c:pad@fp+1),(c:fputc@fp+1)

	call	_fputc	;wreg free
	line	168
	
l4567:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 168:         ++i;
	infsnz	((c:pad@i))^00h,c
	incf	((c:pad@i+1))^00h,c
	line	166
	
l4569:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 166:     while (i < w) {
		movf	((c:pad@w))^00h,c,w
	subwf	((c:pad@i))^00h,c,w
	movf	((c:pad@i+1))^00h,c,w
	xorlw	80h
	movwf	(??_pad+0+0)^00h,c
	movf	((c:pad@w+1))^00h,c,w
	xorlw	80h
	subwfb	(??_pad+0+0)^00h,c,w
	btfss	status,0
	goto	u5131
	goto	u5130

u5131:
	goto	l4565
u5130:
	line	175
	
l4571:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 175:         fputs((const char *)buf, fp);
		movff	(c:pad@buf),(c:fputs@s)
	movff	(c:pad@buf+1),(c:fputs@s+1)

		movff	(c:pad@fp),(c:fputs@fp)
	movff	(c:pad@fp+1),(c:fputs@fp+1)

	call	_fputs	;wreg free
	line	181
	
l4573:
;C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\doprnt.c: 181:     return (int)(strlen(buf) + (size_t)w);
		movff	(c:pad@buf),(c:strlen@s)
	movff	(c:pad@buf+1),(c:strlen@s+1)

	call	_strlen	;wreg free
	movf	((c:pad@w))^00h,c,w
	addwf	(0+?_strlen)^00h,c,w
	movwf	((c:?_pad))^00h,c
	movf	((c:pad@w+1))^00h,c,w
	addwfc	(1+?_strlen)^00h,c,w
	movwf	1+((c:?_pad))^00h,c
	line	183
	
l988:
	return	;funcret
	callstack 0
GLOBAL	__end_of_pad
	__end_of_pad:
	signat	_pad,12410
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               2    3[COMRAM] PTR const unsigned char 
;;		 -> dbuf(80), 
;; Auto vars:     Size  Location     Type
;;  a               2    5[COMRAM] PTR const unsigned char 
;;		 -> dbuf(80), 
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         2       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pad
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\strlen.c"
	line	5
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\strlen.c"
	line	5
	
_strlen:
;incstack = 0
	callstack 23
	line	7
	
l4179:
		movff	(c:strlen@s),(c:strlen@a)
	movff	(c:strlen@s+1),(c:strlen@a+1)

	line	8
	goto	l4183
	line	9
	
l4181:
	infsnz	((c:strlen@s))^00h,c
	incf	((c:strlen@s+1))^00h,c
	line	8
	
l4183:
	movff	(c:strlen@s),fsr2l
	movff	(c:strlen@s+1),fsr2h
	movf	indf2,w
	btfss	status,2
	goto	u4531
	goto	u4530
u4531:
	goto	l4181
u4530:
	line	11
	
l4185:
	movf	((c:strlen@a))^00h,c,w
	subwf	((c:strlen@s))^00h,c,w
	movwf	((c:?_strlen))^00h,c
	movf	((c:strlen@a+1))^00h,c,w
	subwfb	((c:strlen@s+1))^00h,c,w
	movwf	1+((c:?_strlen))^00h,c
	line	12
	
l1149:
	return	;funcret
	callstack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_fputs

;; *************** function _fputs *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_fputs.c"
;; Parameters:    Size  Location     Type
;;  s               2   12[COMRAM] PTR const unsigned char 
;;		 -> dbuf(80), 
;;  fp              2   14[COMRAM] PTR struct _IO_FILE
;;		 -> vsprintf@f(12), snprintf@f(12), 
;; Auto vars:     Size  Location     Type
;;  i               2   17[COMRAM] int 
;;  c               1   16[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   12[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_fputc
;; This function is called by:
;;		_pad
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_fputs.c"
	line	8
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_fputs.c"
	line	8
	
_fputs:
;incstack = 0
	callstack 21
	line	13
	
l4171:
	movlw	high(0)
	movwf	((c:fputs@i+1))^00h,c
	movlw	low(0)
	movwf	((c:fputs@i))^00h,c
	line	14
	goto	l4177
	line	15
	
l4173:
	movff	(c:fputs@c),(c:fputc@c)
	clrf	((c:fputc@c+1))^00h,c
		movff	(c:fputs@fp),(c:fputc@fp)
	movff	(c:fputs@fp+1),(c:fputc@fp+1)

	call	_fputc	;wreg free
	line	16
	
l4175:
	infsnz	((c:fputs@i))^00h,c
	incf	((c:fputs@i+1))^00h,c
	line	14
	
l4177:
	movf	((c:fputs@i))^00h,c,w
	addwf	((c:fputs@s))^00h,c,w
	movwf	c:fsr2l
	movf	((c:fputs@i+1))^00h,c,w
	addwfc	((c:fputs@s+1))^00h,c,w
	movwf	1+c:fsr2l
	movf	indf2,w
	movwf	((c:fputs@c))^00h,c
	movf	((c:fputs@c))^00h,c,w
	btfss	status,2
	goto	u4521
	goto	u4520
u4521:
	goto	l4173
u4520:
	line	19
	
l1134:
	return	;funcret
	callstack 0
GLOBAL	__end_of_fputs
	__end_of_fputs:
	signat	_fputs,8314
	global	_fputc

;; *************** function _fputc *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_fputc.c"
;; Parameters:    Size  Location     Type
;;  c               2    3[COMRAM] int 
;;  fp              2    5[COMRAM] PTR struct _IO_FILE
;;		 -> vsprintf@f(12), snprintf@f(12), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] int 
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_putch
;; This function is called by:
;;		_pad
;;		_vfpfcnvrt
;;		_fputs
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_fputc.c"
	line	8
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\nf_fputc.c"
	line	8
	
_fputc:
;incstack = 0
	callstack 24
	line	12
	
l3955:
	movf	((c:fputc@fp))^00h,c,w
iorwf	((c:fputc@fp+1))^00h,c,w
	btfsc	status,2
	goto	u4091
	goto	u4090

u4091:
	goto	l3959
u4090:
	
l3957:
	movf	((c:fputc@fp))^00h,c,w
iorwf	((c:fputc@fp+1))^00h,c,w
	btfss	status,2
	goto	u4101
	goto	u4100

u4101:
	goto	l3961
u4100:
	line	13
	
l3959:
	movf	((c:fputc@c))^00h,c,w
	
	call	_putch
	line	14
	goto	l1126
	line	15
	
l3961:
	lfsr	2,0Ah
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr2l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr2h
	movf	postinc2,w
iorwf	postinc2,w
	btfsc	status,2
	goto	u4111
	goto	u4110

u4111:
	goto	l3965
u4110:
	
l3963:
	lfsr	2,0Ah
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr2l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr2h
	lfsr	1,03h
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr1l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr1h
		movf	postinc2,w
	subwf	postinc1,w
	movf	postinc1,w
	xorlw	80h
	movwf	(??_fputc+4+0)^00h,c
	movf	postinc2,w
	xorlw	80h
	subwfb	(??_fputc+4+0)^00h,c,w
	btfsc	status,0
	goto	u4121
	goto	u4120

u4121:
	goto	l1126
u4120:
	line	18
	
l3965:
	lfsr	2,03h
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr2l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr2h
	movff	postinc2,??_fputc+0+0
	movff	postdec2,??_fputc+0+0+1
	movff	(c:fputc@fp),fsr2l
	movff	(c:fputc@fp+1),fsr2h
	movff	postinc2,??_fputc+2+0
	movff	postdec2,??_fputc+2+0+1
	movf	(??_fputc+0+0)^00h,c,w
	addwf	(??_fputc+2+0)^00h,c,w
	movwf	c:fsr2l
	movf	(??_fputc+0+1)^00h,c,w
	addwfc	(??_fputc+2+1)^00h,c,w
	movwf	1+c:fsr2l
	movff	(c:fputc@c),indf2

	line	20
	lfsr	2,03h
	movf	((c:fputc@fp))^00h,c,w
	addwf	fsr2l
	movf	((c:fputc@fp+1))^00h,c,w
	addwfc	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	24
	
l1126:
	return	;funcret
	callstack 0
GLOBAL	__end_of_fputc
	__end_of_fputc:
	signat	_fputc,8314
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\putch.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  c               1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fputc
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\putch.c"
	line	7
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\putch.c"
	line	7
	
_putch:
;incstack = 0
	callstack 24
	line	9
	
l1137:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_memcpy

;; *************** function _memcpy *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\memcpy.c"
;; Parameters:    Size  Location     Type
;;  d1              2    3[COMRAM] PTR void 
;;		 -> dbuf(80), 
;;  s1              2    5[COMRAM] PTR const void 
;;		 -> dbuf(80), 
;;  n               2    7[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  s               2   12[COMRAM] PTR const unsigned char 
;;		 -> dbuf(80), 
;;  d               2   10[COMRAM] PTR unsigned char 
;;		 -> dbuf(80), 
;;  tmp             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] PTR void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         6       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:        11       0       0       0       0       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\memcpy.c"
	line	4
global __ptext18
__ptext18:
psect	text18
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\memcpy.c"
	line	4
	
_memcpy:
;incstack = 0
	callstack 24
	line	11
	
l4635:
		movff	(c:memcpy@s1),(c:memcpy@s)
	movff	(c:memcpy@s1+1),(c:memcpy@s+1)

	line	12
		movff	(c:memcpy@d1),(c:memcpy@d)
	movff	(c:memcpy@d1+1),(c:memcpy@d+1)

	line	13
	goto	l4645
	line	14
	
l4637:
	movff	(c:memcpy@s),fsr2l
	movff	(c:memcpy@s+1),fsr2h
	movf	indf2,w
	movwf	((c:memcpy@tmp))^00h,c
	
l4639:
	infsnz	((c:memcpy@s))^00h,c
	incf	((c:memcpy@s+1))^00h,c
	line	15
	
l4641:
	movff	(c:memcpy@d),fsr2l
	movff	(c:memcpy@d+1),fsr2h
	movff	(c:memcpy@tmp),indf2

	
l4643:
	infsnz	((c:memcpy@d))^00h,c
	incf	((c:memcpy@d+1))^00h,c
	line	13
	
l4645:
	decf	((c:memcpy@n))^00h,c
	btfss	status,0
	decf	((c:memcpy@n+1))^00h,c
		incf	((c:memcpy@n))^00h,c,w
	bnz	u5331
	incf	((c:memcpy@n+1))^00h,c,w
	btfss	status,2
	goto	u5331
	goto	u5330

u5331:
	goto	l4637
u5330:
	line	18
	
l1114:
	return	;funcret
	callstack 0
GLOBAL	__end_of_memcpy
	__end_of_memcpy:
	signat	_memcpy,12410
	global	_labs

;; *************** function _labs *****************
;; Defined at:
;;		line 1 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\labs.c"
;; Parameters:    Size  Location     Type
;;  a               4    3[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\labs.c"
	line	1
global __ptext19
__ptext19:
psect	text19
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\labs.c"
	line	1
	
_labs:
;incstack = 0
	callstack 24
	line	3
	
l4603:
	btfsc	((c:labs@a+3))^00h,c,7
	goto	u5220
	movf	((c:labs@a+3))^00h,c,w
	iorwf	((c:labs@a+2))^00h,c,w
	iorwf	((c:labs@a+1))^00h,c,w
	bnz	u5221
	decf	((c:labs@a))^00h,c,w
	btfsc	status,0
	goto	u5221
	goto	u5220

u5221:
	goto	l1105
u5220:
	
l4605:
	movff	(c:labs@a),??_labs+0+0
	movff	(c:labs@a+1),??_labs+0+0+1
	movff	(c:labs@a+2),??_labs+0+0+2
	movff	(c:labs@a+3),??_labs+0+0+3
	comf	(??_labs+0+0)^00h,c
	comf	(??_labs+0+1)^00h,c
	comf	(??_labs+0+2)^00h,c
	comf	(??_labs+0+3)^00h,c
	incf	(??_labs+0+0)^00h,c
	movlw	0
	addwfc	(??_labs+0+1)^00h,c
	addwfc	(??_labs+0+2)^00h,c
	addwfc	(??_labs+0+3)^00h,c
	movff	??_labs+0+0,(c:?_labs)
	movff	??_labs+0+1,(c:?_labs+1)
	movff	??_labs+0+2,(c:?_labs+2)
	movff	??_labs+0+3,(c:?_labs+3)
	goto	l1108
	
l1105:
	movff	(c:labs@a),(c:?_labs)
	movff	(c:labs@a+1),(c:?_labs+1)
	movff	(c:labs@a+2),(c:?_labs+2)
	movff	(c:labs@a+3),(c:?_labs+3)
	line	4
	
l1108:
	return	;funcret
	callstack 0
GLOBAL	__end_of_labs
	__end_of_labs:
	signat	_labs,4220
	global	_floorf

;; *************** function _floorf *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\floorf.c"
;; Parameters:    Size  Location     Type
;;  x               4   28[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  u               4   44[COMRAM] struct .
;;  m               4   38[COMRAM] unsigned long 
;;  e               2   42[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  4   28[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:        10       0       0       0       0       0       0       0       0
;;      Temps:          6       0       0       0       0       0       0       0       0
;;      Totals:        20       0       0       0       0       0       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\floorf.c"
	line	3
global __ptext20
__ptext20:
psect	text20
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\floorf.c"
	line	3
	
_floorf:
;incstack = 0
	callstack 24
	line	5
	
l4607:
	movff	(floorf@F526),(c:floorf@u)
	movff	(floorf@F526+1),(c:floorf@u+1)
	movff	(floorf@F526+2),(c:floorf@u+2)
	movff	(floorf@F526+3),(c:floorf@u+3)
	movff	(c:floorf@x),(c:floorf@u)
	movff	(c:floorf@x+1),(c:floorf@u+1)
	movff	(c:floorf@x+2),(c:floorf@u+2)
	movff	(c:floorf@x+3),(c:floorf@u+3)
	line	6
	
l4609:
	movlw	low(-127)
	movwf	(??_floorf+0+0)^00h,c
	movlw	high(-127)
	movwf	1+(??_floorf+0+0)^00h,c
	movff	(c:floorf@u),??_floorf+2+0
	movff	(c:floorf@u+1),??_floorf+2+0+1
	movff	(c:floorf@u+2),??_floorf+2+0+2
	movff	(c:floorf@u+3),??_floorf+2+0+3
	movlw	017h+1
	goto	u5230
u5235:
	bcf	status,0
	rrcf	(??_floorf+2+3)^00h,c
	rrcf	(??_floorf+2+2)^00h,c
	rrcf	(??_floorf+2+1)^00h,c
	rrcf	(??_floorf+2+0)^00h,c
u5230:
	decfsz	wreg
	goto	u5235
	movf	(??_floorf+2+0)^00h,c,w
	addwf	(??_floorf+0+0)^00h,c,w
	movwf	((c:floorf@e))^00h,c
	movlw	0
	addwfc	(??_floorf+0+1)^00h,c,w
	movwf	1+((c:floorf@e))^00h,c
	line	9
	btfsc	((c:floorf@e+1))^00h,c,7
	goto	u5241
	movf	((c:floorf@e+1))^00h,c,w
	bnz	u5240
	movlw	23
	subwf	 ((c:floorf@e))^00h,c,w
	btfss	status,0
	goto	u5241
	goto	u5240

u5241:
	goto	l4613
u5240:
	line	10
	
l4611:
	movff	(c:floorf@x),(c:?_floorf)
	movff	(c:floorf@x+1),(c:?_floorf+1)
	movff	(c:floorf@x+2),(c:?_floorf+2)
	movff	(c:floorf@x+3),(c:?_floorf+3)
	goto	l1094
	line	11
	
l4613:
	btfsc	((c:floorf@e+1))^00h,c,7
	goto	u5251
	goto	u5250

u5251:
	goto	l4623
u5250:
	line	12
	
l4615:
	movff	(c:floorf@e),??_floorf+0+0
	movlw	0FFh
	movwf	(??_floorf+1+0)^00h,c
	movlw	0FFh
	movwf	(??_floorf+1+0+1)^00h,c
	movlw	07Fh
	movwf	(??_floorf+1+0+2)^00h,c
	movlw	0
	movwf	(??_floorf+1+0+3)^00h,c
u5265:
	tstfsz	(??_floorf+0+0)^00h,c
	goto	u5266
	goto	u5267
	u5266:
	rlcf	(??_floorf+1+3)^00h,c,w
	rrcf	(??_floorf+1+3)^00h,c
	rrcf	(??_floorf+1+2)^00h,c
	rrcf	(??_floorf+1+1)^00h,c
	rrcf	(??_floorf+1+0)^00h,c
	decfsz	(??_floorf+0+0)^00h,c
	goto	u5265
	u5267:
	
	movff	??_floorf+1+0,(c:floorf@m)
	movff	??_floorf+1+1,(c:floorf@m+1)
	movff	??_floorf+1+2,(c:floorf@m+2)
	movff	??_floorf+1+3,(c:floorf@m+3)
	line	13
	movf	((c:floorf@m))^00h,c,w
	andwf	((c:floorf@u))^00h,c,w
	movwf	(??_floorf+0+0)^00h,c
	movf	((c:floorf@m+1))^00h,c,w
	andwf	((c:floorf@u+1))^00h,c,w
	movwf	1+(??_floorf+0+0)^00h,c
	
	movf	((c:floorf@m+2))^00h,c,w
	andwf	((c:floorf@u+2))^00h,c,w
	movwf	2+(??_floorf+0+0)^00h,c
	
	movf	((c:floorf@m+3))^00h,c,w
	andwf	((c:floorf@u+3))^00h,c,w
	movwf	3+(??_floorf+0+0)^00h,c
	movf	(??_floorf+0+0)^00h,c,w
iorwf	(??_floorf+0+1)^00h,c,w
iorwf	(??_floorf+0+2)^00h,c,w
iorwf	(??_floorf+0+3)^00h,c,w
	btfss	status,2
	goto	u5271
	goto	u5270

u5271:
	goto	l4619
u5270:
	goto	l4611
	line	16
	
l4619:
	movff	(c:floorf@u),??_floorf+0+0
	movff	(c:floorf@u+1),??_floorf+0+0+1
	movff	(c:floorf@u+2),??_floorf+0+0+2
	movff	(c:floorf@u+3),??_floorf+0+0+3
	movlw	01Fh+1
	goto	u5280
u5285:
	bcf	status,0
	rrcf	(??_floorf+0+3)^00h,c
	rrcf	(??_floorf+0+2)^00h,c
	rrcf	(??_floorf+0+1)^00h,c
	rrcf	(??_floorf+0+0)^00h,c
u5280:
	decfsz	wreg
	goto	u5285
	movf	(??_floorf+0+0)^00h,c,w
iorwf	(??_floorf+0+1)^00h,c,w
iorwf	(??_floorf+0+2)^00h,c,w
iorwf	(??_floorf+0+3)^00h,c,w
	btfsc	status,2
	goto	u5291
	goto	u5290

u5291:
	goto	l1097
u5290:
	line	17
	
l4621:
	movf	((c:floorf@m))^00h,c,w
	addwf	((c:floorf@u))^00h,c
	movf	((c:floorf@m+1))^00h,c,w
	addwfc	((c:floorf@u+1))^00h,c
	movf	((c:floorf@m+2))^00h,c,w
	addwfc	((c:floorf@u+2))^00h,c
	movf	((c:floorf@m+3))^00h,c,w
	addwfc	((c:floorf@u+3))^00h,c
	
l1097:
	line	18
	comf	((c:floorf@m))^00h,c,w

	movwf	(??_floorf+0+0)^00h,c
	comf	((c:floorf@m+1))^00h,c,w
	movwf	1+(??_floorf+0+0)^00h,c
	
	comf	((c:floorf@m+2))^00h,c,w
	movwf	2+(??_floorf+0+0)^00h,c
	
	comf	((c:floorf@m+3))^00h,c,w
	movwf	3+(??_floorf+0+0)^00h,c
	
	movf	(??_floorf+0+0)^00h,c,w
	andwf	((c:floorf@u))^00h,c
	movf	(??_floorf+0+1)^00h,c,w
	andwf	((c:floorf@u+1))^00h,c
	movf	(??_floorf+0+2)^00h,c,w
	andwf	((c:floorf@u+2))^00h,c
	movf	(??_floorf+0+3)^00h,c,w
	andwf	((c:floorf@u+3))^00h,c

	line	19
	goto	l4631
	line	21
	
l4623:
	movff	(c:floorf@u),??_floorf+0+0
	movff	(c:floorf@u+1),??_floorf+0+0+1
	movff	(c:floorf@u+2),??_floorf+0+0+2
	movff	(c:floorf@u+3),??_floorf+0+0+3
	movlw	01Fh+1
	goto	u5300
u5305:
	bcf	status,0
	rrcf	(??_floorf+0+3)^00h,c
	rrcf	(??_floorf+0+2)^00h,c
	rrcf	(??_floorf+0+1)^00h,c
	rrcf	(??_floorf+0+0)^00h,c
u5300:
	decfsz	wreg
	goto	u5305
	movf	(??_floorf+0+0)^00h,c,w
iorwf	(??_floorf+0+1)^00h,c,w
iorwf	(??_floorf+0+2)^00h,c,w
iorwf	(??_floorf+0+3)^00h,c,w
	btfss	status,2
	goto	u5311
	goto	u5310

u5311:
	goto	l4627
u5310:
	line	22
	
l4625:
	movlw	low(0)
	movwf	((c:floorf@u))^00h,c
	movlw	high(0)
	movwf	((c:floorf@u+1))^00h,c
	movlw	low highword(0)
	movwf	((c:floorf@u+2))^00h,c
	movlw	high highword(0)
	movwf	((c:floorf@u+3))^00h,c
	goto	l4631
	line	23
	
l4627:
	bcf	status,0
	rlcf	((c:floorf@u))^00h,c,w
	movwf	(??_floorf+0+0)^00h,c
	rlcf	((c:floorf@u+1))^00h,c,w
	movwf	1+(??_floorf+0+0)^00h,c
	
	rlcf	((c:floorf@u+2))^00h,c,w
	movwf	2+(??_floorf+0+0)^00h,c
	
	rlcf	((c:floorf@u+3))^00h,c,w
	movwf	3+(??_floorf+0+0)^00h,c
	movf	(??_floorf+0+0)^00h,c,w
iorwf	(??_floorf+0+1)^00h,c,w
iorwf	(??_floorf+0+2)^00h,c,w
iorwf	(??_floorf+0+3)^00h,c,w
	btfsc	status,2
	goto	u5321
	goto	u5320

u5321:
	goto	l4631
u5320:
	line	24
	
l4629:
	movlw	low(normalize32(0xbf800000))
	movwf	((c:floorf@u))^00h,c
	movlw	high(normalize32(0xbf800000))
	movwf	((c:floorf@u+1))^00h,c
	movlw	low highword(normalize32(0xbf800000))
	movwf	((c:floorf@u+2))^00h,c
	movlw	high highword(normalize32(0xbf800000))
	movwf	((c:floorf@u+3))^00h,c
	line	26
	
l4631:
	movff	(c:floorf@u),(c:?_floorf)
	movff	(c:floorf@u+1),(c:?_floorf+1)
	movff	(c:floorf@u+2),(c:?_floorf+2)
	movff	(c:floorf@u+3),(c:?_floorf+3)
	line	27
	
l1094:
	return	;funcret
	callstack 0
GLOBAL	__end_of_floorf
	__end_of_floorf:
	signat	_floorf,4220
	global	___fpclassifyf

;; *************** function ___fpclassifyf *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\__fpclassifyf.c"
;; Parameters:    Size  Location     Type
;;  x               4    3[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  u               4   13[COMRAM] struct .
;;  e               2   11[COMRAM] int 
;; Return value:  Size  Location     Type
;;                  2    3[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=3
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\__fpclassifyf.c"
	line	4
global __ptext21
__ptext21:
psect	text21
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\__fpclassifyf.c"
	line	4
	
___fpclassifyf:
;incstack = 0
	callstack 24
	line	6
	
l4577:
	movff	(___fpclassifyf@F465),(c:___fpclassifyf@u)
	movff	(___fpclassifyf@F465+1),(c:___fpclassifyf@u+1)
	movff	(___fpclassifyf@F465+2),(c:___fpclassifyf@u+2)
	movff	(___fpclassifyf@F465+3),(c:___fpclassifyf@u+3)
	movff	(c:___fpclassifyf@x),(c:___fpclassifyf@u)
	movff	(c:___fpclassifyf@x+1),(c:___fpclassifyf@u+1)
	movff	(c:___fpclassifyf@x+2),(c:___fpclassifyf@u+2)
	movff	(c:___fpclassifyf@x+3),(c:___fpclassifyf@u+3)
	line	7
	
l4579:
	movff	(c:___fpclassifyf@u),??___fpclassifyf+0+0
	movff	(c:___fpclassifyf@u+1),??___fpclassifyf+0+0+1
	movff	(c:___fpclassifyf@u+2),??___fpclassifyf+0+0+2
	movff	(c:___fpclassifyf@u+3),??___fpclassifyf+0+0+3
	movlw	017h+1
	goto	u5140
u5145:
	bcf	status,0
	rrcf	(??___fpclassifyf+0+3)^00h,c
	rrcf	(??___fpclassifyf+0+2)^00h,c
	rrcf	(??___fpclassifyf+0+1)^00h,c
	rrcf	(??___fpclassifyf+0+0)^00h,c
u5140:
	decfsz	wreg
	goto	u5145
	movf	(??___fpclassifyf+0+0)^00h,c,w
	movwf	((c:___fpclassifyf@e))^00h,c
	clrf	((c:___fpclassifyf@e+1))^00h,c
	line	8
	movf	((c:___fpclassifyf@e))^00h,c,w
iorwf	((c:___fpclassifyf@e+1))^00h,c,w
	btfss	status,2
	goto	u5151
	goto	u5150

u5151:
	goto	l4589
u5150:
	
l4581:
	bcf	status,0
	rlcf	((c:___fpclassifyf@u))^00h,c,w
	movwf	(??___fpclassifyf+0+0)^00h,c
	rlcf	((c:___fpclassifyf@u+1))^00h,c,w
	movwf	1+(??___fpclassifyf+0+0)^00h,c
	
	rlcf	((c:___fpclassifyf@u+2))^00h,c,w
	movwf	2+(??___fpclassifyf+0+0)^00h,c
	
	rlcf	((c:___fpclassifyf@u+3))^00h,c,w
	movwf	3+(??___fpclassifyf+0+0)^00h,c
	movf	(??___fpclassifyf+0+0)^00h,c,w
iorwf	(??___fpclassifyf+0+1)^00h,c,w
iorwf	(??___fpclassifyf+0+2)^00h,c,w
iorwf	(??___fpclassifyf+0+3)^00h,c,w
	btfss	status,2
	goto	u5161
	goto	u5160

u5161:
	goto	l4585
u5160:
	
l4583:
	movlw	high(02h)
	movwf	((c:?___fpclassifyf+1))^00h,c
	movlw	low(02h)
	movwf	((c:?___fpclassifyf))^00h,c
	goto	l1085
	
l4585:
	movlw	high(03h)
	movwf	((c:?___fpclassifyf+1))^00h,c
	movlw	low(03h)
	movwf	((c:?___fpclassifyf))^00h,c
	goto	l1085
	line	9
	
l4589:
		incf	((c:___fpclassifyf@e))^00h,c,w
iorwf	((c:___fpclassifyf@e+1))^00h,c,w
	btfss	status,2
	goto	u5171
	goto	u5170

u5171:
	goto	l4595
u5170:
	
l4591:
	movff	(c:___fpclassifyf@u),??___fpclassifyf+0+0
	movff	(c:___fpclassifyf@u+1),??___fpclassifyf+0+0+1
	movff	(c:___fpclassifyf@u+2),??___fpclassifyf+0+0+2
	movff	(c:___fpclassifyf@u+3),??___fpclassifyf+0+0+3
	movlw	09h
u5185:
	bcf	status,0
	rlcf	(??___fpclassifyf+0+0)^00h,c
	rlcf	(??___fpclassifyf+0+1)^00h,c
	rlcf	(??___fpclassifyf+0+2)^00h,c
	rlcf	(??___fpclassifyf+0+3)^00h,c
	decfsz	wreg
	goto	u5185
	movf	(??___fpclassifyf+0+0)^00h,c,w
iorwf	(??___fpclassifyf+0+1)^00h,c,w
iorwf	(??___fpclassifyf+0+2)^00h,c,w
iorwf	(??___fpclassifyf+0+3)^00h,c,w
	btfsc	status,2
	goto	u5191
	goto	u5190

u5191:
	movlw	1
	goto	u5200
u5190:
	movlw	0
u5200:
	movwf	((c:?___fpclassifyf))^00h,c
	clrf	((c:?___fpclassifyf+1))^00h,c
	goto	l1085
	line	10
	
l4595:
	movlw	high(04h)
	movwf	((c:?___fpclassifyf+1))^00h,c
	movlw	low(04h)
	movwf	((c:?___fpclassifyf))^00h,c
	line	11
	
l1085:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fpclassifyf
	__end_of___fpclassifyf:
	signat	___fpclassifyf,4218
	global	___flneg

;; *************** function ___flneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\flneg.c"
;; Parameters:    Size  Location     Type
;;  f1              4    3[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\flneg.c"
	line	15
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\flneg.c"
	line	15
	
___flneg:
;incstack = 0
	callstack 24
	line	17
	
l4507:
	movf	((c:___flneg@f1))^00h,c,w
iorwf	((c:___flneg@f1+1))^00h,c,w
iorwf	((c:___flneg@f1+2))^00h,c,w
iorwf	((c:___flneg@f1+3))^00h,c,w
	btfsc	status,2
	goto	u5041
	goto	u5040

u5041:
	goto	l4511
u5040:
	line	18
	
l4509:
	movlw	0
	xorwf	((c:___flneg@f1))^00h,c
	movlw	0
	xorwf	((c:___flneg@f1+1))^00h,c
	movlw	0
	xorwf	((c:___flneg@f1+2))^00h,c
	movlw	080h
	xorwf	((c:___flneg@f1+3))^00h,c
	line	19
	
l4511:
	movff	(c:___flneg@f1),(c:?___flneg)
	movff	(c:___flneg@f1+1),(c:?___flneg+1)
	movff	(c:___flneg@f1+2),(c:?___flneg+2)
	movff	(c:___flneg@f1+3),(c:?___flneg+3)
	line	20
	
l536:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flneg
	__end_of___flneg:
	signat	___flneg,4220
	global	___fleq

;; *************** function ___fleq *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\fleq.c"
;; Parameters:    Size  Location     Type
;;  ff1             4    3[COMRAM] int 
;;  ff2             4    7[COMRAM] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\fleq.c"
	line	4
global __ptext23
__ptext23:
psect	text23
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\fleq.c"
	line	4
	
___fleq:
;incstack = 0
	callstack 24
	line	7
	
l4469:
	movlw	0
	andwf	((c:___fleq@ff1))^00h,c,w
	movwf	(??___fleq+0+0)^00h,c
	movlw	0
	andwf	((c:___fleq@ff1+1))^00h,c,w
	movwf	1+(??___fleq+0+0)^00h,c
	
	movlw	080h
	andwf	((c:___fleq@ff1+2))^00h,c,w
	movwf	2+(??___fleq+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___fleq@ff1+3))^00h,c,w
	movwf	3+(??___fleq+0+0)^00h,c
	movf	(??___fleq+0+0)^00h,c,w
iorwf	(??___fleq+0+1)^00h,c,w
iorwf	(??___fleq+0+2)^00h,c,w
iorwf	(??___fleq+0+3)^00h,c,w
	btfss	status,2
	goto	u4961
	goto	u4960

u4961:
	goto	l4473
u4960:
	line	8
	
l4471:
	movlw	low(0)
	movwf	((c:___fleq@ff1))^00h,c
	movlw	high(0)
	movwf	((c:___fleq@ff1+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fleq@ff1+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fleq@ff1+3))^00h,c
	line	9
	
l4473:
	movlw	0
	andwf	((c:___fleq@ff2))^00h,c,w
	movwf	(??___fleq+0+0)^00h,c
	movlw	0
	andwf	((c:___fleq@ff2+1))^00h,c,w
	movwf	1+(??___fleq+0+0)^00h,c
	
	movlw	080h
	andwf	((c:___fleq@ff2+2))^00h,c,w
	movwf	2+(??___fleq+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___fleq@ff2+3))^00h,c,w
	movwf	3+(??___fleq+0+0)^00h,c
	movf	(??___fleq+0+0)^00h,c,w
iorwf	(??___fleq+0+1)^00h,c,w
iorwf	(??___fleq+0+2)^00h,c,w
iorwf	(??___fleq+0+3)^00h,c,w
	btfss	status,2
	goto	u4971
	goto	u4970

u4971:
	goto	l4477
u4970:
	line	10
	
l4475:
	movlw	low(0)
	movwf	((c:___fleq@ff2))^00h,c
	movlw	high(0)
	movwf	((c:___fleq@ff2+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fleq@ff2+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fleq@ff2+3))^00h,c
	line	11
	
l4477:
	movf	((c:___fleq@ff2))^00h,c,w
xorwf	((c:___fleq@ff1))^00h,c,w
	bnz	u4980
movf	((c:___fleq@ff2+1))^00h,c,w
xorwf	((c:___fleq@ff1+1))^00h,c,w
	bnz	u4980
movf	((c:___fleq@ff2+2))^00h,c,w
xorwf	((c:___fleq@ff1+2))^00h,c,w
	bnz	u4980
movf	((c:___fleq@ff2+3))^00h,c,w
xorwf	((c:___fleq@ff1+3))^00h,c,w
	btfsc	status,2
	goto	u4981
	goto	u4980

u4981:
	goto	l4481
u4980:
	
l4479:
	bcf	status,0
	goto	l521
	
l4481:
	bsf	status,0
	line	12
	
l521:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fleq
	__end_of___fleq:
	signat	___fleq,8312
	global	_screen_set_temperature_setpoint

;; *************** function _screen_set_temperature_setpoint *****************
;; Defined at:
;;		line 32 in file "screen.c"
;; Parameters:    Size  Location     Type
;;  f               4    7[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"screen.c"
	line	32
global __ptext24
__ptext24:
psect	text24
	file	"screen.c"
	line	32
	
_screen_set_temperature_setpoint:
;incstack = 0
	callstack 28
	line	33
	
l3725:
;screen.c: 33:     temperature_setpoint = f;
	movff	(c:screen_set_temperature_setpoint@f),(_temperature_setpoint)
	movff	(c:screen_set_temperature_setpoint@f+1),(_temperature_setpoint+1)
	movff	(c:screen_set_temperature_setpoint@f+2),(_temperature_setpoint+2)
	movff	(c:screen_set_temperature_setpoint@f+3),(_temperature_setpoint+3)
	line	34
	
l79:
	return	;funcret
	callstack 0
GLOBAL	__end_of_screen_set_temperature_setpoint
	__end_of_screen_set_temperature_setpoint:
	signat	_screen_set_temperature_setpoint,4217
	global	_screen_set_temperature_cautin

;; *************** function _screen_set_temperature_cautin *****************
;; Defined at:
;;		line 36 in file "screen.c"
;; Parameters:    Size  Location     Type
;;  f               4   73[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	line	36
global __ptext25
__ptext25:
psect	text25
	file	"screen.c"
	line	36
	
_screen_set_temperature_cautin:
;incstack = 0
	callstack 28
	line	37
	
l3733:
;screen.c: 37:     temperature_cautin = f;
	movff	(c:screen_set_temperature_cautin@f),(_temperature_cautin)
	movff	(c:screen_set_temperature_cautin@f+1),(_temperature_cautin+1)
	movff	(c:screen_set_temperature_cautin@f+2),(_temperature_cautin+2)
	movff	(c:screen_set_temperature_cautin@f+3),(_temperature_cautin+3)
	line	38
	
l82:
	return	;funcret
	callstack 0
GLOBAL	__end_of_screen_set_temperature_cautin
	__end_of_screen_set_temperature_cautin:
	signat	_screen_set_temperature_cautin,4217
	global	_screen_set_battery_status

;; *************** function _screen_set_battery_status *****************
;; Defined at:
;;		line 20 in file "screen.c"
;; Parameters:    Size  Location     Type
;;  status          1    wreg     enum E2
;; Auto vars:     Size  Location     Type
;;  status          1    3[COMRAM] enum E2
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	line	20
global __ptext26
__ptext26:
psect	text26
	file	"screen.c"
	line	20
	
_screen_set_battery_status:
;incstack = 0
	callstack 28
;screen_set_battery_status@status stored from wreg
	movwf	((c:screen_set_battery_status@status))^00h,c
	line	21
	
l3723:
;screen.c: 21:     battery_status = status;
	movff	(c:screen_set_battery_status@status),(c:_battery_status)
	line	22
	
l70:
	return	;funcret
	callstack 0
GLOBAL	__end_of_screen_set_battery_status
	__end_of_screen_set_battery_status:
	signat	_screen_set_battery_status,4217
	global	_screen_init

;; *************** function _screen_init *****************
;; Defined at:
;;		line 11 in file "screen.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	line	11
global __ptext27
__ptext27:
psect	text27
	file	"screen.c"
	line	11
	
_screen_init:
;incstack = 0
	callstack 28
	line	12
	
l64:
	return	;funcret
	callstack 0
GLOBAL	__end_of_screen_init
	__end_of_screen_init:
	signat	_screen_init,89
	global	_pid_set_setpoint

;; *************** function _pid_set_setpoint *****************
;; Defined at:
;;		line 18 in file "pid.c"
;; Parameters:    Size  Location     Type
;;  s               4    7[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"pid.c"
	line	18
global __ptext28
__ptext28:
psect	text28
	file	"pid.c"
	line	18
	
_pid_set_setpoint:
;incstack = 0
	callstack 28
	line	19
	
l3715:
;pid.c: 19:     setpoint = s;
	movff	(c:pid_set_setpoint@s),(_setpoint@pid$F1083)
	movff	(c:pid_set_setpoint@s+1),(_setpoint@pid$F1083+1)
	movff	(c:pid_set_setpoint@s+2),(_setpoint@pid$F1083+2)
	movff	(c:pid_set_setpoint@s+3),(_setpoint@pid$F1083+3)
	line	20
	
l242:
	return	;funcret
	callstack 0
GLOBAL	__end_of_pid_set_setpoint
	__end_of_pid_set_setpoint:
	signat	_pid_set_setpoint,4217
	global	_pid_init

;; *************** function _pid_init *****************
;; Defined at:
;;		line 14 in file "pid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=0
	line	14
global __ptext29
__ptext29:
psect	text29
	file	"pid.c"
	line	14
	
_pid_init:
;incstack = 0
	callstack 28
	line	16
	
l239:
	return	;funcret
	callstack 0
GLOBAL	__end_of_pid_init
	__end_of_pid_init:
	signat	_pid_init,89
	global	_pid_get_setpoint

;; *************** function _pid_get_setpoint *****************
;; Defined at:
;;		line 22 in file "pid.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] float 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	line	22
global __ptext30
__ptext30:
psect	text30
	file	"pid.c"
	line	22
	
_pid_get_setpoint:
;incstack = 0
	callstack 28
	line	23
	
l3767:
;pid.c: 23:     return setpoint;
	movff	(_setpoint@pid$F1083),(c:?_pid_get_setpoint)
	movff	(_setpoint@pid$F1083+1),(c:?_pid_get_setpoint+1)
	movff	(_setpoint@pid$F1083+2),(c:?_pid_get_setpoint+2)
	movff	(_setpoint@pid$F1083+3),(c:?_pid_get_setpoint+3)
	line	24
	
l245:
	return	;funcret
	callstack 0
GLOBAL	__end_of_pid_get_setpoint
	__end_of_pid_get_setpoint:
	signat	_pid_get_setpoint,92
	global	_pid_execute

;; *************** function _pid_execute *****************
;; Defined at:
;;		line 26 in file "pid.c"
;; Parameters:    Size  Location     Type
;;  sensor          4   81[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  uk              4   28[BANK0 ] float 
;;  ek              4   24[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0      32       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4      32       0       0       0       0       0       0       0
;;Total ram usage:       36 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___fladd
;;		___fldiv
;;		___flge
;;		___flmul
;;		___flsub
;;		___fltol
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	line	26
global __ptext31
__ptext31:
psect	text31
	file	"pid.c"
	line	26
	
_pid_execute:
;incstack = 0
	callstack 26
	line	27
	
l5003:
;pid.c: 27:     float ek = setpoint - sensor;
	movff	(_setpoint@pid$F1083),(c:___flsub@b)
	movff	(_setpoint@pid$F1083+1),(c:___flsub@b+1)
	movff	(_setpoint@pid$F1083+2),(c:___flsub@b+2)
	movff	(_setpoint@pid$F1083+3),(c:___flsub@b+3)
	movff	(c:pid_execute@sensor),(c:___flsub@a)
	movff	(c:pid_execute@sensor+1),(c:___flsub@a+1)
	movff	(c:pid_execute@sensor+2),(c:___flsub@a+2)
	movff	(c:pid_execute@sensor+3),(c:___flsub@a+3)
	call	___flsub	;wreg free
	movff	0+?___flsub,(pid_execute@ek)
	movff	1+?___flsub,(pid_execute@ek+1)
	movff	2+?___flsub,(pid_execute@ek+2)
	movff	3+?___flsub,(pid_execute@ek+3)
	
	line	28
	
l5005:
;pid.c: 28:     float uk = uk1 + kp * (ek - ek1) + ki * (ek / 2.0f + ek1 / 2.0f) + kd * (ek + 2 * ek1 + ek2);
	movlw	low(normalize32(0x3f800000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x3f800000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x3f800000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x3f800000))
	movwf	((c:___flmul@a+3))^00h,c
	movff	(_ek1),(c:___flsub@a)
	movff	(_ek1+1),(c:___flsub@a+1)
	movff	(_ek1+2),(c:___flsub@a+2)
	movff	(_ek1+3),(c:___flsub@a+3)
	movff	(pid_execute@ek),(c:___flsub@b)
	movff	(pid_execute@ek+1),(c:___flsub@b+1)
	movff	(pid_execute@ek+2),(c:___flsub@b+2)
	movff	(pid_execute@ek+3),(c:___flsub@b+3)
	call	___flsub	;wreg free
	movff	0+?___flsub,(c:___flmul@b)
	movff	1+?___flsub,(c:___flmul@b+1)
	movff	2+?___flsub,(c:___flmul@b+2)
	movff	3+?___flsub,(c:___flmul@b+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(_pid_execute$2022)
	movff	1+?___flmul,(_pid_execute$2022+1)
	movff	2+?___flmul,(_pid_execute$2022+2)
	movff	3+?___flmul,(_pid_execute$2022+3)
	
	
l5007:
;pid.c: 28:     float uk = uk1 + kp * (ek - ek1) + ki * (ek / 2.0f + ek1 / 2.0f) + kd * (ek + 2 * ek1 + ek2);
	movlw	low(normalize32(0x3c23d70a))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x3c23d70a))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x3c23d70a))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x3c23d70a))
	movwf	((c:___flmul@a+3))^00h,c
	movlw	low(normalize32(0x40000000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x40000000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x40000000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x40000000))
	movwf	((c:___fldiv@a+3))^00h,c
	movff	(_ek1),(c:___fldiv@b)
	movff	(_ek1+1),(c:___fldiv@b+1)
	movff	(_ek1+2),(c:___fldiv@b+2)
	movff	(_ek1+3),(c:___fldiv@b+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:___fladd@a)
	movff	1+?___fldiv,(c:___fladd@a+1)
	movff	2+?___fldiv,(c:___fladd@a+2)
	movff	3+?___fldiv,(c:___fladd@a+3)
	
	movlw	low(normalize32(0x40000000))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x40000000))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x40000000))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x40000000))
	movwf	((c:___fldiv@a+3))^00h,c
	movff	(pid_execute@ek),(c:___fldiv@b)
	movff	(pid_execute@ek+1),(c:___fldiv@b+1)
	movff	(pid_execute@ek+2),(c:___fldiv@b+2)
	movff	(pid_execute@ek+3),(c:___fldiv@b+3)
	call	___fldiv	;wreg free
	movff	0+?___fldiv,(c:___fladd@b)
	movff	1+?___fldiv,(c:___fladd@b+1)
	movff	2+?___fldiv,(c:___fladd@b+2)
	movff	3+?___fldiv,(c:___fladd@b+3)
	
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:___flmul@b)
	movff	1+?___fladd,(c:___flmul@b+1)
	movff	2+?___fladd,(c:___flmul@b+2)
	movff	3+?___fladd,(c:___flmul@b+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(_pid_execute$2023)
	movff	1+?___flmul,(_pid_execute$2023+1)
	movff	2+?___flmul,(_pid_execute$2023+2)
	movff	3+?___flmul,(_pid_execute$2023+3)
	
;pid.c: 28:     float uk = uk1 + kp * (ek - ek1) + ki * (ek / 2.0f + ek1 / 2.0f) + kd * (ek + 2 * ek1 + ek2);
	movff	(_uk1),(c:___fladd@a)
	movff	(_uk1+1),(c:___fladd@a+1)
	movff	(_uk1+2),(c:___fladd@a+2)
	movff	(_uk1+3),(c:___fladd@a+3)
	movff	(_pid_execute$2022),(c:___fladd@b)
	movff	(_pid_execute$2022+1),(c:___fladd@b+1)
	movff	(_pid_execute$2022+2),(c:___fladd@b+2)
	movff	(_pid_execute$2022+3),(c:___fladd@b+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(_pid_execute$2024)
	movff	1+?___fladd,(_pid_execute$2024+1)
	movff	2+?___fladd,(_pid_execute$2024+2)
	movff	3+?___fladd,(_pid_execute$2024+3)
	
	
l5009:
;pid.c: 28:     float uk = uk1 + kp * (ek - ek1) + ki * (ek / 2.0f + ek1 / 2.0f) + kd * (ek + 2 * ek1 + ek2);
	movff	(pid_execute@ek),(c:___fladd@a)
	movff	(pid_execute@ek+1),(c:___fladd@a+1)
	movff	(pid_execute@ek+2),(c:___fladd@a+2)
	movff	(pid_execute@ek+3),(c:___fladd@a+3)
	movlw	low(normalize32(0x40000000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x40000000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x40000000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x40000000))
	movwf	((c:___flmul@a+3))^00h,c
	movff	(_ek1),(c:___flmul@b)
	movff	(_ek1+1),(c:___flmul@b+1)
	movff	(_ek1+2),(c:___flmul@b+2)
	movff	(_ek1+3),(c:___flmul@b+3)
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:___fladd@b)
	movff	1+?___flmul,(c:___fladd@b+1)
	movff	2+?___flmul,(c:___fladd@b+2)
	movff	3+?___flmul,(c:___fladd@b+3)
	
	call	___fladd	;wreg free
	movff	0+?___fladd,(_pid_execute$2025)
	movff	1+?___fladd,(_pid_execute$2025+1)
	movff	2+?___fladd,(_pid_execute$2025+2)
	movff	3+?___fladd,(_pid_execute$2025+3)
	
	
l5011:
;pid.c: 28:     float uk = uk1 + kp * (ek - ek1) + ki * (ek / 2.0f + ek1 / 2.0f) + kd * (ek + 2 * ek1 + ek2);
	movff	(_pid_execute$2023),(c:___fladd@a)
	movff	(_pid_execute$2023+1),(c:___fladd@a+1)
	movff	(_pid_execute$2023+2),(c:___fladd@a+2)
	movff	(_pid_execute$2023+3),(c:___fladd@a+3)
	movff	(_pid_execute$2024),(c:___fladd@b)
	movff	(_pid_execute$2024+1),(c:___fladd@b+1)
	movff	(_pid_execute$2024+2),(c:___fladd@b+2)
	movff	(_pid_execute$2024+3),(c:___fladd@b+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(_pid_execute$2026)
	movff	1+?___fladd,(_pid_execute$2026+1)
	movff	2+?___fladd,(_pid_execute$2026+2)
	movff	3+?___fladd,(_pid_execute$2026+3)
	
;pid.c: 28:     float uk = uk1 + kp * (ek - ek1) + ki * (ek / 2.0f + ek1 / 2.0f) + kd * (ek + 2 * ek1 + ek2);
	movlw	low(0)
	movwf	((c:___flmul@a))^00h,c
	movlw	high(0)
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___flmul@a+3))^00h,c
	movff	(_ek2),(c:___fladd@a)
	movff	(_ek2+1),(c:___fladd@a+1)
	movff	(_ek2+2),(c:___fladd@a+2)
	movff	(_ek2+3),(c:___fladd@a+3)
	movff	(_pid_execute$2025),(c:___fladd@b)
	movff	(_pid_execute$2025+1),(c:___fladd@b+1)
	movff	(_pid_execute$2025+2),(c:___fladd@b+2)
	movff	(_pid_execute$2025+3),(c:___fladd@b+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:___flmul@b)
	movff	1+?___fladd,(c:___flmul@b+1)
	movff	2+?___fladd,(c:___flmul@b+2)
	movff	3+?___fladd,(c:___flmul@b+3)
	
	call	___flmul	;wreg free
	movff	0+?___flmul,(_pid_execute$2027)
	movff	1+?___flmul,(_pid_execute$2027+1)
	movff	2+?___flmul,(_pid_execute$2027+2)
	movff	3+?___flmul,(_pid_execute$2027+3)
	
	
l5013:
;pid.c: 28:     float uk = uk1 + kp * (ek - ek1) + ki * (ek / 2.0f + ek1 / 2.0f) + kd * (ek + 2 * ek1 + ek2);
	movff	(_pid_execute$2026),(c:___fladd@b)
	movff	(_pid_execute$2026+1),(c:___fladd@b+1)
	movff	(_pid_execute$2026+2),(c:___fladd@b+2)
	movff	(_pid_execute$2026+3),(c:___fladd@b+3)
	movff	(_pid_execute$2027),(c:___fladd@a)
	movff	(_pid_execute$2027+1),(c:___fladd@a+1)
	movff	(_pid_execute$2027+2),(c:___fladd@a+2)
	movff	(_pid_execute$2027+3),(c:___fladd@a+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(pid_execute@uk)
	movff	1+?___fladd,(pid_execute@uk+1)
	movff	2+?___fladd,(pid_execute@uk+2)
	movff	3+?___fladd,(pid_execute@uk+3)
	
	line	29
	
l5015:
;pid.c: 29:     if (uk > 100.0)
	movlw	low(normalize32(0x42c80000))
	movwf	((c:___flge@ff1))^00h,c
	movlw	high(normalize32(0x42c80000))
	movwf	((c:___flge@ff1+1))^00h,c
	movlw	low highword(normalize32(0x42c80000))
	movwf	((c:___flge@ff1+2))^00h,c
	movlw	high highword(normalize32(0x42c80000))
	movwf	((c:___flge@ff1+3))^00h,c
	movff	(pid_execute@uk),(c:___flge@ff2)
	movff	(pid_execute@uk+1),(c:___flge@ff2+1)
	movff	(pid_execute@uk+2),(c:___flge@ff2+2)
	movff	(pid_execute@uk+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5851
	goto	u5850
u5851:
	goto	l5019
u5850:
	line	30
	
l5017:
;pid.c: 30:         uk = 100.0;
	movlw	low(normalize32(0x42c80000))
	movlb	0	; () banked
	movwf	((pid_execute@uk))&0ffh
	movlw	high(normalize32(0x42c80000))
	movwf	((pid_execute@uk+1))&0ffh
	movlw	low highword(normalize32(0x42c80000))
	movwf	((pid_execute@uk+2))&0ffh
	movlw	high highword(normalize32(0x42c80000))
	movwf	((pid_execute@uk+3))&0ffh
	line	31
	
l5019:
;pid.c: 31:     if (uk < 0.0)
	movlb	0	; () banked
	btfsc	((pid_execute@uk+3))&0ffh,7
	goto	u5860
	goto	u5861

u5861:
	goto	l5023
u5860:
	line	32
	
l5021:; BSR set to: 0

;pid.c: 32:         uk = 0.0;
	movlw	low(normalize32(0x0))
	movwf	((pid_execute@uk))&0ffh
	movlw	high(normalize32(0x0))
	movwf	((pid_execute@uk+1))&0ffh
	movlw	low highword(normalize32(0x0))
	movwf	((pid_execute@uk+2))&0ffh
	movlw	high highword(normalize32(0x0))
	movwf	((pid_execute@uk+3))&0ffh
	line	34
	
l5023:; BSR set to: 0

;pid.c: 34:     ek2 = ek1;
	movff	(_ek1),(_ek2)
	movff	(_ek1+1),(_ek2+1)
	movff	(_ek1+2),(_ek2+2)
	movff	(_ek1+3),(_ek2+3)
	line	35
	
l5025:; BSR set to: 0

;pid.c: 35:     ek1 = ek;
	movff	(pid_execute@ek),(_ek1)
	movff	(pid_execute@ek+1),(_ek1+1)
	movff	(pid_execute@ek+2),(_ek1+2)
	movff	(pid_execute@ek+3),(_ek1+3)
	line	36
	
l5027:; BSR set to: 0

;pid.c: 36:     uk1 = uk;
	movff	(pid_execute@uk),(_uk1)
	movff	(pid_execute@uk+1),(_uk1+1)
	movff	(pid_execute@uk+2),(_uk1+2)
	movff	(pid_execute@uk+3),(_uk1+3)
	line	38
	
l5029:; BSR set to: 0

;pid.c: 38:     return (uint8_t) uk;
	movff	(pid_execute@uk),(c:___fltol@f1)
	movff	(pid_execute@uk+1),(c:___fltol@f1+1)
	movff	(pid_execute@uk+2),(c:___fltol@f1+2)
	movff	(pid_execute@uk+3),(c:___fltol@f1+3)
	call	___fltol	;wreg free
	movf	(0+?___fltol)^00h,c,w
	line	42
	
l250:
	return	;funcret
	callstack 0
GLOBAL	__end_of_pid_execute
	__end_of_pid_execute:
	signat	_pid_execute,4217
	global	___fltol

;; *************** function ___fltol *****************
;; Defined at:
;;		line 43 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\fltol.c"
;; Parameters:    Size  Location     Type
;;  f1              4    3[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  exp1            1   12[COMRAM] unsigned char 
;;  sign1           1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pid_execute
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\fltol.c"
	line	43
global __ptext32
__ptext32:
psect	text32
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\fltol.c"
	line	43
	
___fltol:
;incstack = 0
	callstack 24
	line	47
	
l4515:
	rlcf	((c:___fltol@f1+2))^00h,c,w
	rlcf	((c:___fltol@f1+3))^00h,c,w
	movwf	((c:___fltol@exp1))^00h,c
	movf	((c:___fltol@exp1))^00h,c,w
	btfss	status,2
	goto	u5051
	goto	u5050
u5051:
	goto	l4521
u5050:
	line	48
	
l4517:
	movlw	low(0)
	movwf	((c:?___fltol))^00h,c
	movlw	high(0)
	movwf	((c:?___fltol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fltol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fltol+3))^00h,c
	goto	l559
	line	49
	
l4521:
	movff	(c:___fltol@f1),??___fltol+0+0
	movff	(c:___fltol@f1+1),??___fltol+0+0+1
	movff	(c:___fltol@f1+2),??___fltol+0+0+2
	movff	(c:___fltol@f1+3),??___fltol+0+0+3
	movlw	01Fh+1
	goto	u5060
u5065:
	bcf	status,0
	rrcf	(??___fltol+0+3)^00h,c
	rrcf	(??___fltol+0+2)^00h,c
	rrcf	(??___fltol+0+1)^00h,c
	rrcf	(??___fltol+0+0)^00h,c
u5060:
	decfsz	wreg
	goto	u5065
	movf	(??___fltol+0+0)^00h,c,w
	movwf	((c:___fltol@sign1))^00h,c
	line	50
	
l4523:
	bsf	(0+(23/8)+(c:___fltol@f1))^00h,c,(23)&7
	line	51
	
l4525:
	movlw	0FFh
	andwf	((c:___fltol@f1))^00h,c
	movlw	0FFh
	andwf	((c:___fltol@f1+1))^00h,c
	movlw	0FFh
	andwf	((c:___fltol@f1+2))^00h,c
	movlw	0
	andwf	((c:___fltol@f1+3))^00h,c
	line	52
	
l4527:
	movlw	(096h)&0ffh
	subwf	((c:___fltol@exp1))^00h,c
	line	53
	
l4529:
	btfsc	((c:___fltol@exp1))^00h,c,7
	goto	u5070
	goto	u5071

u5071:
	goto	l4541
u5070:
	line	54
	
l4531:
		movf	((c:___fltol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-23)
	btfsc	status,0
	goto	u5081
	goto	u5080

u5081:
	goto	l4537
u5080:
	goto	l4517
	line	57
	
l4537:
	bcf	status,0
	rrcf	((c:___fltol@f1+3))^00h,c
	rrcf	((c:___fltol@f1+2))^00h,c
	rrcf	((c:___fltol@f1+1))^00h,c
	rrcf	((c:___fltol@f1))^00h,c
	
l4539:
	incfsz	((c:___fltol@exp1))^00h,c
	
	goto	l4537
	goto	l4551
	line	60
	
l4541:
		movlw	020h-1
	cpfsgt	((c:___fltol@exp1))^00h,c
	goto	u5091
	goto	u5090

u5091:
	goto	l4549
u5090:
	goto	l4517
	line	63
	
l4547:
	bcf	status,0
	rlcf	((c:___fltol@f1))^00h,c
	rlcf	((c:___fltol@f1+1))^00h,c
	rlcf	((c:___fltol@f1+2))^00h,c
	rlcf	((c:___fltol@f1+3))^00h,c
	line	64
	decf	((c:___fltol@exp1))^00h,c
	line	62
	
l4549:
	movf	((c:___fltol@exp1))^00h,c,w
	btfss	status,2
	goto	u5101
	goto	u5100
u5101:
	goto	l4547
u5100:
	line	67
	
l4551:
	movf	((c:___fltol@sign1))^00h,c,w
	btfsc	status,2
	goto	u5111
	goto	u5110
u5111:
	goto	l4555
u5110:
	line	68
	
l4553:
	comf	((c:___fltol@f1+3))^00h,c
	comf	((c:___fltol@f1+2))^00h,c
	comf	((c:___fltol@f1+1))^00h,c
	negf	((c:___fltol@f1))^00h,c
	movlw	0
	addwfc	((c:___fltol@f1+1))^00h,c
	addwfc	((c:___fltol@f1+2))^00h,c
	addwfc	((c:___fltol@f1+3))^00h,c
	line	69
	
l4555:
	movff	(c:___fltol@f1),(c:?___fltol)
	movff	(c:___fltol@f1+1),(c:?___fltol+1)
	movff	(c:___fltol@f1+2),(c:?___fltol+2)
	movff	(c:___fltol@f1+3),(c:?___fltol+3)
	line	70
	
l559:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fltol
	__end_of___fltol:
	signat	___fltol,4220
	global	___fldiv

;; *************** function ___fldiv *****************
;; Defined at:
;;		line 11 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcdiv.c"
;; Parameters:    Size  Location     Type
;;  b               4    3[COMRAM] long 
;;  a               4    7[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  grs             4   22[COMRAM] unsigned long 
;;  rem             4   15[COMRAM] unsigned long 
;;  new_exp         2   20[COMRAM] short 
;;  aexp            1   27[COMRAM] unsigned char 
;;  bexp            1   26[COMRAM] unsigned char 
;;  sign            1   19[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pid_execute
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcdiv.c"
	line	11
global __ptext33
__ptext33:
psect	text33
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcdiv.c"
	line	11
	
___fldiv:
;incstack = 0
	callstack 24
	line	26
	
l4195:
	movf	(0+((c:___fldiv@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fldiv@sign))^00h,c
	line	27
	movf	(0+((c:___fldiv@b)+03h))^00h,c,w
	addwf	(0+((c:___fldiv@b)+03h))^00h,c,w
	movwf	((c:___fldiv@bexp))^00h,c
	line	28
	
l4197:
	
	btfss	(0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	goto	u4541
	goto	u4540
u4541:
	goto	l4201
u4540:
	line	29
	
l4199:
	bsf	(0+(0/8)+(c:___fldiv@bexp))^00h,c,(0)&7
	line	33
	
l4201:
	movf	((c:___fldiv@bexp))^00h,c,w
	btfsc	status,2
	goto	u4551
	goto	u4550
u4551:
	goto	l4211
u4550:
	line	35
	
l4203:
		incf	((c:___fldiv@bexp))^00h,c,w
	btfss	status,2
	goto	u4561
	goto	u4560

u4561:
	goto	l4207
u4560:
	line	37
	
l4205:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@b+3))^00h,c
	line	40
	
l4207:
	bsf	(0+(23/8)+(c:___fldiv@b))^00h,c,(23)&7
	line	42
	
l4209:
	movlw	low(0)
	movwf	(0+((c:___fldiv@b)+03h))^00h,c
	line	43
	goto	l4213
	line	46
	
l4211:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@b+3))^00h,c
	line	49
	
l4213:
	movf	(0+((c:___fldiv@a)+03h))^00h,c,w
	andlw	low(080h)
	xorwf	((c:___fldiv@sign))^00h,c
	line	50
	
l4215:
	movf	(0+((c:___fldiv@a)+03h))^00h,c,w
	addwf	(0+((c:___fldiv@a)+03h))^00h,c,w
	movwf	((c:___fldiv@aexp))^00h,c
	line	51
	
l4217:
	
	btfss	(0+((c:___fldiv@a)+02h))^00h,c,(7)&7
	goto	u4571
	goto	u4570
u4571:
	goto	l4221
u4570:
	line	52
	
l4219:
	bsf	(0+(0/8)+(c:___fldiv@aexp))^00h,c,(0)&7
	line	56
	
l4221:
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u4581
	goto	u4580
u4581:
	goto	l4231
u4580:
	line	58
	
l4223:
		incf	((c:___fldiv@aexp))^00h,c,w
	btfss	status,2
	goto	u4591
	goto	u4590

u4591:
	goto	l4227
u4590:
	line	60
	
l4225:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@a+3))^00h,c
	line	63
	
l4227:
	bsf	(0+(23/8)+(c:___fldiv@a))^00h,c,(23)&7
	line	65
	
l4229:
	movlw	low(0)
	movwf	(0+((c:___fldiv@a)+03h))^00h,c
	line	66
	goto	l4233
	line	69
	
l4231:
	movlw	low(normalize32(0x0))
	movwf	((c:___fldiv@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fldiv@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fldiv@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fldiv@a+3))^00h,c
	line	75
	
l4233:
	movf	((c:___fldiv@a))^00h,c,w
iorwf	((c:___fldiv@a+1))^00h,c,w
iorwf	((c:___fldiv@a+2))^00h,c,w
iorwf	((c:___fldiv@a+3))^00h,c,w
	btfss	status,2
	goto	u4601
	goto	u4600

u4601:
	goto	l4245
u4600:
	line	76
	
l4235:
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	77
	
l4237:
	movlw	low(07F80h)
	iorwf	(0+((c:___fldiv@b)+02h))^00h,c
	movlw	high(07F80h)
	iorwf	(1+((c:___fldiv@b)+02h))^00h,c
	line	78
	
l4239:
	movf	((c:___fldiv@sign))^00h,c,w
	iorwf	(0+((c:___fldiv@b)+03h))^00h,c
	line	79
	
l4241:
	movff	(c:___fldiv@b),(c:?___fldiv)
	movff	(c:___fldiv@b+1),(c:?___fldiv+1)
	movff	(c:___fldiv@b+2),(c:?___fldiv+2)
	movff	(c:___fldiv@b+3),(c:?___fldiv+3)
	goto	l844
	line	83
	
l4245:
	movf	((c:___fldiv@bexp))^00h,c,w
	btfss	status,2
	goto	u4611
	goto	u4610
u4611:
	goto	l4253
u4610:
	line	84
	
l4247:
	line	85
	
l4249:
	movlw	low(0)
	movwf	((c:?___fldiv))^00h,c
	movlw	high(0)
	movwf	((c:?___fldiv+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fldiv+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fldiv+3))^00h,c
	goto	l844
	line	89
	
l4253:
	movf	((c:___fldiv@aexp))^00h,c,w
	movff	(c:___fldiv@bexp),??___fldiv+0+0
	clrf	(??___fldiv+0+0+1)^00h,c
	subwf	(??___fldiv+0+0)^00h,c
	movlw	0
	subwfb	(??___fldiv+0+1)^00h,c
	movlw	low(07Fh)
	addwf	(??___fldiv+0+0)^00h,c,w
	movwf	((c:___fldiv@new_exp))^00h,c
	movlw	high(07Fh)
	addwfc	(??___fldiv+0+1)^00h,c,w
	movwf	1+((c:___fldiv@new_exp))^00h,c
	line	92
	
l4255:
	movff	(c:___fldiv@b),(c:___fldiv@rem)
	movff	(c:___fldiv@b+1),(c:___fldiv@rem+1)
	movff	(c:___fldiv@b+2),(c:___fldiv@rem+2)
	movff	(c:___fldiv@b+3),(c:___fldiv@rem+3)
	line	93
	
l4257:
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	94
	
l4259:
	movlw	low(0)
	movwf	((c:___fldiv@grs))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@grs+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@grs+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@grs+3))^00h,c
	line	96
	
l4261:
	movlw	low(0)
	movwf	((c:___fldiv@aexp))^00h,c
	line	97
	goto	l846
	line	100
	
l4263:
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l4271
u4620:
	line	101
	
l4265:
	bcf	status,0
	rlcf	((c:___fldiv@rem))^00h,c
	rlcf	((c:___fldiv@rem+1))^00h,c
	rlcf	((c:___fldiv@rem+2))^00h,c
	rlcf	((c:___fldiv@rem+3))^00h,c
	line	102
	bcf	status,0
	rlcf	((c:___fldiv@b))^00h,c
	rlcf	((c:___fldiv@b+1))^00h,c
	rlcf	((c:___fldiv@b+2))^00h,c
	rlcf	((c:___fldiv@b+3))^00h,c
	line	103
	
l4267:
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u4631
	goto	u4630
u4631:
	goto	l849
u4630:
	line	104
	
l4269:
	bsf	(0+(0/8)+(c:___fldiv@b))^00h,c,(0)&7
	line	105
	
l849:
	line	106
	bcf	status,0
	rlcf	((c:___fldiv@grs))^00h,c
	rlcf	((c:___fldiv@grs+1))^00h,c
	rlcf	((c:___fldiv@grs+2))^00h,c
	rlcf	((c:___fldiv@grs+3))^00h,c
	line	112
	
l4271:
		movf	((c:___fldiv@a))^00h,c,w
	subwf	((c:___fldiv@rem))^00h,c,w
	movf	((c:___fldiv@a+1))^00h,c,w
	subwfb	((c:___fldiv@rem+1))^00h,c,w
	movf	((c:___fldiv@a+2))^00h,c,w
	subwfb	((c:___fldiv@rem+2))^00h,c,w
	movf	((c:___fldiv@a+3))^00h,c,w
	subwfb	((c:___fldiv@rem+3))^00h,c,w
	btfss	status,0
	goto	u4641
	goto	u4640

u4641:
	goto	l4277
u4640:
	line	115
	
l4273:
	bsf	(0+(30/8)+(c:___fldiv@grs))^00h,c,(30)&7
	line	116
	
l4275:
	movf	((c:___fldiv@a))^00h,c,w
	subwf	((c:___fldiv@rem))^00h,c
	movf	((c:___fldiv@a+1))^00h,c,w
	subwfb	((c:___fldiv@rem+1))^00h,c
	movf	((c:___fldiv@a+2))^00h,c,w
	subwfb	((c:___fldiv@rem+2))^00h,c
	movf	((c:___fldiv@a+3))^00h,c,w
	subwfb	((c:___fldiv@rem+3))^00h,c
	line	118
	
l4277:
	incf	((c:___fldiv@aexp))^00h,c
	line	119
	
l846:
	line	97
		movlw	01Ah-1
	cpfsgt	((c:___fldiv@aexp))^00h,c
	goto	u4651
	goto	u4650

u4651:
	goto	l4263
u4650:
	line	122
	
l4279:
	movf	((c:___fldiv@rem))^00h,c,w
iorwf	((c:___fldiv@rem+1))^00h,c,w
iorwf	((c:___fldiv@rem+2))^00h,c,w
iorwf	((c:___fldiv@rem+3))^00h,c,w
	btfsc	status,2
	goto	u4661
	goto	u4660

u4661:
	goto	l4289
u4660:
	line	123
	
l4281:
	bsf	(0+(0/8)+(c:___fldiv@grs))^00h,c,(0)&7
	goto	l4289
	line	128
	
l4283:
	bcf	status,0
	rlcf	((c:___fldiv@b))^00h,c
	rlcf	((c:___fldiv@b+1))^00h,c
	rlcf	((c:___fldiv@b+2))^00h,c
	rlcf	((c:___fldiv@b+3))^00h,c
	line	129
	
l4285:
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l855
u4670:
	line	130
	
l4287:
	bsf	(0+(0/8)+(c:___fldiv@b))^00h,c,(0)&7
	line	131
	
l855:
	line	132
	bcf	status,0
	rlcf	((c:___fldiv@grs))^00h,c
	rlcf	((c:___fldiv@grs+1))^00h,c
	rlcf	((c:___fldiv@grs+2))^00h,c
	rlcf	((c:___fldiv@grs+3))^00h,c
	line	133
	decf	((c:___fldiv@new_exp))^00h,c
	btfss	status,0
	decf	((c:___fldiv@new_exp+1))^00h,c
	line	127
	
l4289:
	
	btfss	((c:___fldiv@b+2))^00h,c,(23)&7
	goto	u4681
	goto	u4680
u4681:
	goto	l4283
u4680:
	line	139
	
l4291:
	movlw	low(0)
	movwf	((c:___fldiv@aexp))^00h,c
	line	140
	
l4293:
	
	btfss	((c:___fldiv@grs+3))^00h,c,(31)&7
	goto	u4691
	goto	u4690
u4691:
	goto	l857
u4690:
	line	141
	
l4295:
	movlw	0FFh
	andwf	((c:___fldiv@grs))^00h,c,w
	movwf	(??___fldiv+0+0)^00h,c
	movlw	0FFh
	andwf	((c:___fldiv@grs+1))^00h,c,w
	movwf	1+(??___fldiv+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___fldiv@grs+2))^00h,c,w
	movwf	2+(??___fldiv+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___fldiv@grs+3))^00h,c,w
	movwf	3+(??___fldiv+0+0)^00h,c
	movf	(??___fldiv+0+0)^00h,c,w
iorwf	(??___fldiv+0+1)^00h,c,w
iorwf	(??___fldiv+0+2)^00h,c,w
iorwf	(??___fldiv+0+3)^00h,c,w
	btfsc	status,2
	goto	u4701
	goto	u4700

u4701:
	goto	l858
u4700:
	line	142
	
l4297:
	movlw	low(01h)
	movwf	((c:___fldiv@aexp))^00h,c
	line	143
	goto	l857
	line	144
	
l858:
	line	145
	
	btfss	((c:___fldiv@b))^00h,c,(0)&7
	goto	u4711
	goto	u4710
u4711:
	goto	l857
u4710:
	goto	l4297
	line	149
	
l857:
	line	150
	movf	((c:___fldiv@aexp))^00h,c,w
	btfsc	status,2
	goto	u4721
	goto	u4720
u4721:
	goto	l4309
u4720:
	line	151
	
l4301:
	movlw	low(01h)
	addwf	((c:___fldiv@b))^00h,c
	movlw	0
	addwfc	((c:___fldiv@b+1))^00h,c
	addwfc	((c:___fldiv@b+2))^00h,c
	addwfc	((c:___fldiv@b+3))^00h,c
	line	152
	
l4303:
	
	btfss	((c:___fldiv@b+3))^00h,c,(24)&7
	goto	u4731
	goto	u4730
u4731:
	goto	l4309
u4730:
	line	153
	
l4305:
	movff	(c:___fldiv@b),??___fldiv+0+0
	movff	(c:___fldiv@b+1),??___fldiv+0+0+1
	movff	(c:___fldiv@b+2),??___fldiv+0+0+2
	movff	(c:___fldiv@b+3),??___fldiv+0+0+3
	rlcf	(??___fldiv+0+3)^00h,c,w
	rrcf	(??___fldiv+0+3)^00h,c
	rrcf	(??___fldiv+0+2)^00h,c
	rrcf	(??___fldiv+0+1)^00h,c
	rrcf	(??___fldiv+0+0)^00h,c
	movff	??___fldiv+0+0,(c:___fldiv@b)
	movff	??___fldiv+0+1,(c:___fldiv@b+1)
	movff	??___fldiv+0+2,(c:___fldiv@b+2)
	movff	??___fldiv+0+3,(c:___fldiv@b+3)
	line	154
	
l4307:
	infsnz	((c:___fldiv@new_exp))^00h,c
	incf	((c:___fldiv@new_exp+1))^00h,c
	line	159
	
l4309:
	btfsc	((c:___fldiv@new_exp+1))^00h,c,7
	goto	u4741
	movf	((c:___fldiv@new_exp+1))^00h,c,w
	bnz	u4740
	incf	((c:___fldiv@new_exp))^00h,c,w
	btfss	status,0
	goto	u4741
	goto	u4740

u4741:
	goto	l4313
u4740:
	line	160
	
l4311:
	movlw	high(0FFh)
	movwf	((c:___fldiv@new_exp+1))^00h,c
	setf	((c:___fldiv@new_exp))^00h,c
	line	161
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	165
	
l4313:
	btfsc	((c:___fldiv@new_exp+1))^00h,c,7
	goto	u4750
	movf	((c:___fldiv@new_exp+1))^00h,c,w
	bnz	u4751
	decf	((c:___fldiv@new_exp))^00h,c,w
	btfsc	status,0
	goto	u4751
	goto	u4750

u4751:
	goto	l4317
u4750:
	line	166
	
l4315:
	movlw	high(0)
	movwf	((c:___fldiv@new_exp+1))^00h,c
	movlw	low(0)
	movwf	((c:___fldiv@new_exp))^00h,c
	line	167
	movlw	low(0)
	movwf	((c:___fldiv@b))^00h,c
	movlw	high(0)
	movwf	((c:___fldiv@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fldiv@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fldiv@b+3))^00h,c
	line	169
	movlw	low(0)
	movwf	((c:___fldiv@sign))^00h,c
	line	173
	
l4317:
	movff	(c:___fldiv@new_exp),(c:___fldiv@bexp)
	line	175
	
l4319:
	
	btfss	((c:___fldiv@bexp))^00h,c,(0)&7
	goto	u4761
	goto	u4760
u4761:
	goto	l4323
u4760:
	line	176
	
l4321:
	bsf	(0+(7/8)+0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	line	177
	goto	l4325
	line	180
	
l4323:
	bcf	(0+(7/8)+0+((c:___fldiv@b)+02h))^00h,c,(7)&7
	line	182
	
l4325:
	bcf	status,0
	rrcf	((c:___fldiv@bexp))^00h,c,w
	movwf	(0+((c:___fldiv@b)+03h))^00h,c
	goto	l4239
	line	185
	
l844:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fldiv
	__end_of___fldiv:
	signat	___fldiv,8316
	global	_io_set_cautin_duty_cycle_PWM

;; *************** function _io_set_cautin_duty_cycle_PWM *****************
;; Defined at:
;;		line 53 in file "input_output.c"
;; Parameters:    Size  Location     Type
;;  d               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  d               1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	file	"input_output.c"
	line	53
global __ptext34
__ptext34:
psect	text34
	file	"input_output.c"
	line	53
	
_io_set_cautin_duty_cycle_PWM:
;incstack = 0
	callstack 28
;io_set_cautin_duty_cycle_PWM@d stored from wreg
	movwf	((c:io_set_cautin_duty_cycle_PWM@d))^00h,c
	line	54
	
l3765:
;input_output.c: 54:     duty = d;
	movff	(c:io_set_cautin_duty_cycle_PWM@d),(c:_duty)	;volatile
	line	55
	
l191:
	return	;funcret
	callstack 0
GLOBAL	__end_of_io_set_cautin_duty_cycle_PWM
	__end_of_io_set_cautin_duty_cycle_PWM:
	signat	_io_set_cautin_duty_cycle_PWM,4217
	global	_io_init

;; *************** function _io_init *****************
;; Defined at:
;;		line 5 in file "input_output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	line	5
global __ptext35
__ptext35:
psect	text35
	file	"input_output.c"
	line	5
	
_io_init:
;incstack = 0
	callstack 28
	line	7
	
l3631:
;input_output.c: 7:     ADCON1bits.PCFG = 0b1110;
	movf	((c:4033))^0f00h,c,w	;volatile
	andlw	not (((1<<4)-1)<<0)
	iorlw	(0Eh & ((1<<4)-1))<<0
	movwf	((c:4033))^0f00h,c	;volatile
	line	8
	
l3633:
;input_output.c: 8:     TRISAbits.TRISA1 = 1;
	bsf	((c:3986))^0f00h,c,1	;volatile
	line	11
	
l3635:
;input_output.c: 11:     TRISBbits.RB2 = 1;
	bsf	((c:3987))^0f00h,c,2	;volatile
	line	12
	
l3637:
;input_output.c: 12:     TRISBbits.RB3 = 1;
	bsf	((c:3987))^0f00h,c,3	;volatile
	line	13
	
l3639:
;input_output.c: 13:     TRISBbits.RB4 = 1;
	bsf	((c:3987))^0f00h,c,4	;volatile
	line	16
;input_output.c: 16:     ADCON2bits.ACQT = 3;
	movf	((c:4032))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<3)
	iorlw	(03h & ((1<<3)-1))<<3
	movwf	((c:4032))^0f00h,c	;volatile
	line	17
;input_output.c: 17:     ADCON2bits.ADCS = 5;
	movf	((c:4032))^0f00h,c,w	;volatile
	andlw	not (((1<<3)-1)<<0)
	iorlw	(05h & ((1<<3)-1))<<0
	movwf	((c:4032))^0f00h,c	;volatile
	line	18
	
l3641:
;input_output.c: 18:     ADCON2bits.ADFM = 1;
	bsf	((c:4032))^0f00h,c,7	;volatile
	line	19
;input_output.c: 19:     ADCON0 = 0;
	movlw	low(0)
	movwf	((c:4034))^0f00h,c	;volatile
	line	20
	
l3643:
;input_output.c: 20:     ADCON0bits.ADON = 1;
	bsf	((c:4034))^0f00h,c,0	;volatile
	line	23
	
l3645:
;input_output.c: 23:     INTCONbits.GIE = 0;
	bcf	((c:4082))^0f00h,c,7	;volatile
	line	24
	
l3647:
;input_output.c: 24:     INTCONbits.PEIE = 0;
	bcf	((c:4082))^0f00h,c,6	;volatile
	line	25
	
l3649:
;input_output.c: 25:     T1CONbits.RD16 = 1;
	bsf	((c:4045))^0f00h,c,7	;volatile
	line	26
;input_output.c: 26:     TMR1 = 53536;
	movlw	high(0D120h)
	movwf	((c:4046+1))^0f00h,c	;volatile
	movlw	low(0D120h)
	movwf	((c:4046))^0f00h,c	;volatile
	line	28
	
l3651:
;input_output.c: 28:     PIR1bits.TMR1IF = 0;
	bcf	((c:3998))^0f00h,c,0	;volatile
	line	29
	
l3653:
;input_output.c: 29:     PIE1bits.TMR1IE = 1;
	bsf	((c:3997))^0f00h,c,0	;volatile
	line	30
	
l3655:
;input_output.c: 30:     INTCONbits.PEIE = 1;
	bsf	((c:4082))^0f00h,c,6	;volatile
	line	31
	
l3657:
;input_output.c: 31:     INTCONbits.GIE = 1;
	bsf	((c:4082))^0f00h,c,7	;volatile
	line	32
	
l3659:
;input_output.c: 32:     T1CONbits.TMR1ON = 1;
	bsf	((c:4045))^0f00h,c,0	;volatile
	line	34
	
l3661:
;input_output.c: 34:     TRISDbits.RD0 = 0;
	bcf	((c:3989))^0f00h,c,0	;volatile
	line	36
	
l175:
	return	;funcret
	callstack 0
GLOBAL	__end_of_io_init
	__end_of_io_init:
	signat	_io_init,89
	global	_io_get_setpoint_from_ENCODER

;; *************** function _io_get_setpoint_from_ENCODER *****************
;; Defined at:
;;		line 78 in file "input_output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] float 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	line	78
global __ptext36
__ptext36:
psect	text36
	file	"input_output.c"
	line	78
	
_io_get_setpoint_from_ENCODER:
;incstack = 0
	callstack 28
	line	79
	
l3713:
;input_output.c: 79:     return setpoint;
	movff	(_setpoint),(c:?_io_get_setpoint_from_ENCODER)
	movff	(_setpoint+1),(c:?_io_get_setpoint_from_ENCODER+1)
	movff	(_setpoint+2),(c:?_io_get_setpoint_from_ENCODER+2)
	movff	(_setpoint+3),(c:?_io_get_setpoint_from_ENCODER+3)
	line	80
	
l211:
	return	;funcret
	callstack 0
GLOBAL	__end_of_io_get_setpoint_from_ENCODER
	__end_of_io_get_setpoint_from_ENCODER:
	signat	_io_get_setpoint_from_ENCODER,92
	global	_io_get_cautin_temperature_from_ADC

;; *************** function _io_get_cautin_temperature_from_ADC *****************
;; Defined at:
;;		line 42 in file "input_output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   69[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___flmul
;;		___xxtofl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	line	42
global __ptext37
__ptext37:
psect	text37
	file	"input_output.c"
	line	42
	
_io_get_cautin_temperature_from_ADC:
;incstack = 0
	callstack 27
	line	44
	
l4997:
;input_output.c: 44:     ADCON0bits.GO_DONE = 1;
	bsf	((c:4034))^0f00h,c,1	;volatile
	line	45
;input_output.c: 45:     while (ADCON0bits.GO_DONE == 1);
	
l181:
	btfsc	((c:4034))^0f00h,c,1	;volatile
	goto	u5841
	goto	u5840
u5841:
	goto	l181
u5840:
	line	47
	
l4999:
;input_output.c: 47:     return ADRES * (400.0f / 1024.0f);
	movff	(c:4035),(c:___xxtofl@val)	;volatile
	movff	(c:4035+1),(c:___xxtofl@val+1)	;volatile
	clrf	((c:___xxtofl@val+2))^00h,c
	clrf	((c:___xxtofl@val+3))^00h,c
	movlw	(0)&0ffh
	
	call	___xxtofl
	movff	0+?___xxtofl,(c:___flmul@b)
	movff	1+?___xxtofl,(c:___flmul@b+1)
	movff	2+?___xxtofl,(c:___flmul@b+2)
	movff	3+?___xxtofl,(c:___flmul@b+3)
	
	movlw	low(normalize32(0x3ec80000))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x3ec80000))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x3ec80000))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x3ec80000))
	movwf	((c:___flmul@a+3))^00h,c
	call	___flmul	;wreg free
	movff	0+?___flmul,(c:?_io_get_cautin_temperature_from_ADC)
	movff	1+?___flmul,(c:?_io_get_cautin_temperature_from_ADC+1)
	movff	2+?___flmul,(c:?_io_get_cautin_temperature_from_ADC+2)
	movff	3+?___flmul,(c:?_io_get_cautin_temperature_from_ADC+3)
	
	line	48
	
l184:
	return	;funcret
	callstack 0
GLOBAL	__end_of_io_get_cautin_temperature_from_ADC
	__end_of_io_get_cautin_temperature_from_ADC:
	signat	_io_get_cautin_temperature_from_ADC,92
	global	___xxtofl

;; *************** function ___xxtofl *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\xxtofl.c"
;; Parameters:    Size  Location     Type
;;  sign            1    wreg     unsigned char 
;;  val             4    3[COMRAM] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   11[COMRAM] unsigned char 
;;  arg             4   13[COMRAM] unsigned long 
;;  exp             1   12[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    3[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         4       0       0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        14       0       0       0       0       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_io_get_cautin_temperature_from_ADC
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\xxtofl.c"
	line	10
global __ptext38
__ptext38:
psect	text38
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\xxtofl.c"
	line	10
	
___xxtofl:
;incstack = 0
	callstack 27
;___xxtofl@sign stored from wreg
	movwf	((c:___xxtofl@sign))^00h,c
	line	15
	
l3577:
	movf	((c:___xxtofl@sign))^00h,c,w
	btfsc	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l917
u3700:
	
l3579:
	btfsc	((c:___xxtofl@val+3))^00h,c,7
	goto	u3710
	goto	u3711

u3711:
	goto	l917
u3710:
	line	16
	
l3581:
	movff	(c:___xxtofl@val),??___xxtofl+0+0
	movff	(c:___xxtofl@val+1),??___xxtofl+0+0+1
	movff	(c:___xxtofl@val+2),??___xxtofl+0+0+2
	movff	(c:___xxtofl@val+3),??___xxtofl+0+0+3
	comf	(??___xxtofl+0+0)^00h,c
	comf	(??___xxtofl+0+1)^00h,c
	comf	(??___xxtofl+0+2)^00h,c
	comf	(??___xxtofl+0+3)^00h,c
	incf	(??___xxtofl+0+0)^00h,c
	movlw	0
	addwfc	(??___xxtofl+0+1)^00h,c
	addwfc	(??___xxtofl+0+2)^00h,c
	addwfc	(??___xxtofl+0+3)^00h,c
	movff	??___xxtofl+0+0,(c:___xxtofl@arg)
	movff	??___xxtofl+0+1,(c:___xxtofl@arg+1)
	movff	??___xxtofl+0+2,(c:___xxtofl@arg+2)
	movff	??___xxtofl+0+3,(c:___xxtofl@arg+3)
	line	17
	goto	l3583
	line	18
	
l917:
	line	19
	movff	(c:___xxtofl@val),(c:___xxtofl@arg)
	movff	(c:___xxtofl@val+1),(c:___xxtofl@arg+1)
	movff	(c:___xxtofl@val+2),(c:___xxtofl@arg+2)
	movff	(c:___xxtofl@val+3),(c:___xxtofl@arg+3)
	line	21
	
l3583:
	movf	((c:___xxtofl@val))^00h,c,w
iorwf	((c:___xxtofl@val+1))^00h,c,w
iorwf	((c:___xxtofl@val+2))^00h,c,w
iorwf	((c:___xxtofl@val+3))^00h,c,w
	btfss	status,2
	goto	u3721
	goto	u3720

u3721:
	goto	l3589
u3720:
	line	22
	
l3585:
	movlw	low(normalize32(0x0))
	movwf	((c:?___xxtofl))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___xxtofl+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___xxtofl+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___xxtofl+3))^00h,c
	goto	l920
	line	23
	
l3589:
	movlw	low(096h)
	movwf	((c:___xxtofl@exp))^00h,c
	line	24
	goto	l3593
	line	25
	
l3591:
	incf	((c:___xxtofl@exp))^00h,c
	line	26
	bcf	status,0
	rrcf	((c:___xxtofl@arg+3))^00h,c
	rrcf	((c:___xxtofl@arg+2))^00h,c
	rrcf	((c:___xxtofl@arg+1))^00h,c
	rrcf	((c:___xxtofl@arg))^00h,c
	line	24
	
l3593:
	movlw	0
	andwf	((c:___xxtofl@arg))^00h,c,w
	movwf	(??___xxtofl+0+0)^00h,c
	movlw	0
	andwf	((c:___xxtofl@arg+1))^00h,c,w
	movwf	1+(??___xxtofl+0+0)^00h,c
	
	movlw	0
	andwf	((c:___xxtofl@arg+2))^00h,c,w
	movwf	2+(??___xxtofl+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___xxtofl@arg+3))^00h,c,w
	movwf	3+(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
iorwf	(??___xxtofl+0+1)^00h,c,w
iorwf	(??___xxtofl+0+2)^00h,c,w
iorwf	(??___xxtofl+0+3)^00h,c,w
	btfss	status,2
	goto	u3731
	goto	u3730

u3731:
	goto	l3591
u3730:
	goto	l924
	line	29
	
l3595:
	incf	((c:___xxtofl@exp))^00h,c
	line	30
	
l3597:
	movlw	low(01h)
	addwf	((c:___xxtofl@arg))^00h,c
	movlw	0
	addwfc	((c:___xxtofl@arg+1))^00h,c
	addwfc	((c:___xxtofl@arg+2))^00h,c
	addwfc	((c:___xxtofl@arg+3))^00h,c
	line	31
	
l3599:
	bcf	status,0
	rrcf	((c:___xxtofl@arg+3))^00h,c
	rrcf	((c:___xxtofl@arg+2))^00h,c
	rrcf	((c:___xxtofl@arg+1))^00h,c
	rrcf	((c:___xxtofl@arg))^00h,c
	line	32
	
l924:
	line	28
	movlw	0
	andwf	((c:___xxtofl@arg))^00h,c,w
	movwf	(??___xxtofl+0+0)^00h,c
	movlw	0
	andwf	((c:___xxtofl@arg+1))^00h,c,w
	movwf	1+(??___xxtofl+0+0)^00h,c
	
	movlw	0
	andwf	((c:___xxtofl@arg+2))^00h,c,w
	movwf	2+(??___xxtofl+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___xxtofl@arg+3))^00h,c,w
	movwf	3+(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
iorwf	(??___xxtofl+0+1)^00h,c,w
iorwf	(??___xxtofl+0+2)^00h,c,w
iorwf	(??___xxtofl+0+3)^00h,c,w
	btfss	status,2
	goto	u3741
	goto	u3740

u3741:
	goto	l3595
u3740:
	goto	l3603
	line	34
	
l3601:
	decf	((c:___xxtofl@exp))^00h,c
	line	35
	bcf	status,0
	rlcf	((c:___xxtofl@arg))^00h,c
	rlcf	((c:___xxtofl@arg+1))^00h,c
	rlcf	((c:___xxtofl@arg+2))^00h,c
	rlcf	((c:___xxtofl@arg+3))^00h,c
	line	33
	
l3603:
	
	btfsc	((c:___xxtofl@arg+2))^00h,c,(23)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l931
u3750:
	
l3605:
		movlw	02h-0
	cpfslt	((c:___xxtofl@exp))^00h,c
	goto	u3761
	goto	u3760

u3761:
	goto	l3601
u3760:
	
l931:
	line	37
	
	btfsc	((c:___xxtofl@exp))^00h,c,(0)&7
	goto	u3771
	goto	u3770
u3771:
	goto	l3609
u3770:
	line	38
	
l3607:
	bcf	(0+(23/8)+(c:___xxtofl@arg))^00h,c,(23)&7
	line	39
	
l3609:
	bcf status,0
	rrcf	((c:___xxtofl@exp))^00h,c

	line	40
	
l3611:
	movff	(c:___xxtofl@exp),??___xxtofl+0+0
	clrf	(??___xxtofl+0+0+1)^00h,c
	clrf	(??___xxtofl+0+0+2)^00h,c
	clrf	(??___xxtofl+0+0+3)^00h,c
	movff	??___xxtofl+0+0,??___xxtofl+0+3
	clrf	(??___xxtofl+0+2)^00h,c
	clrf	(??___xxtofl+0+1)^00h,c
	clrf	(??___xxtofl+0+0)^00h,c
	movf	(??___xxtofl+0+0)^00h,c,w
	iorwf	((c:___xxtofl@arg))^00h,c
	movf	(??___xxtofl+0+1)^00h,c,w
	iorwf	((c:___xxtofl@arg+1))^00h,c
	movf	(??___xxtofl+0+2)^00h,c,w
	iorwf	((c:___xxtofl@arg+2))^00h,c
	movf	(??___xxtofl+0+3)^00h,c,w
	iorwf	((c:___xxtofl@arg+3))^00h,c

	line	41
	
l3613:
	movf	((c:___xxtofl@sign))^00h,c,w
	btfsc	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3619
u3780:
	
l3615:
	btfsc	((c:___xxtofl@val+3))^00h,c,7
	goto	u3790
	goto	u3791

u3791:
	goto	l3619
u3790:
	line	42
	
l3617:
	bsf	(0+(31/8)+(c:___xxtofl@arg))^00h,c,(31)&7
	line	43
	
l3619:
	movff	(c:___xxtofl@arg),(c:?___xxtofl)
	movff	(c:___xxtofl@arg+1),(c:?___xxtofl+1)
	movff	(c:___xxtofl@arg+2),(c:?___xxtofl+2)
	movff	(c:___xxtofl@arg+3),(c:?___xxtofl+3)
	line	44
	
l920:
	return	;funcret
	callstack 0
GLOBAL	__end_of___xxtofl
	__end_of___xxtofl:
	signat	___xxtofl,8316
	global	___flmul

;; *************** function ___flmul *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcmul.c"
;; Parameters:    Size  Location     Type
;;  b               4   44[COMRAM] unsigned char 
;;  a               4   48[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  prod            4   63[COMRAM] struct .
;;  grs             4   58[COMRAM] unsigned long 
;;  temp            2   67[COMRAM] struct .
;;  bexp            1   62[COMRAM] unsigned char 
;;  aexp            1   57[COMRAM] unsigned char 
;;  sign            1   56[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   44[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:        13       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        25       0       0       0       0       0       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_io_get_cautin_temperature_from_ADC
;;		_pid_execute
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcmul.c"
	line	8
global __ptext39
__ptext39:
psect	text39
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcmul.c"
	line	8
	
___flmul:
;incstack = 0
	callstack 24
	line	17
	
l4333:
	movf	(0+((c:___flmul@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___flmul@sign))^00h,c
	line	18
	movf	(0+((c:___flmul@b)+03h))^00h,c,w
	addwf	(0+((c:___flmul@b)+03h))^00h,c,w
	movwf	((c:___flmul@bexp))^00h,c
	line	19
	
l4335:
	
	btfss	(0+((c:___flmul@b)+02h))^00h,c,(7)&7
	goto	u4771
	goto	u4770
u4771:
	goto	l4339
u4770:
	line	20
	
l4337:
	bsf	(0+(0/8)+(c:___flmul@bexp))^00h,c,(0)&7
	line	24
	
l4339:
	movf	((c:___flmul@bexp))^00h,c,w
	btfsc	status,2
	goto	u4781
	goto	u4780
u4781:
	goto	l4347
u4780:
	line	26
	
l4341:
		incf	((c:___flmul@bexp))^00h,c,w
	btfss	status,2
	goto	u4791
	goto	u4790

u4791:
	goto	l4345
u4790:
	line	28
	
l4343:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@b+3))^00h,c
	line	31
	
l4345:
	bsf	(0+(23/8)+(c:___flmul@b))^00h,c,(23)&7
	line	33
	goto	l4349
	line	36
	
l4347:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@b+3))^00h,c
	line	39
	
l4349:
	movf	(0+((c:___flmul@a)+03h))^00h,c,w
	andlw	low(080h)
	xorwf	((c:___flmul@sign))^00h,c
	line	40
	
l4351:
	movf	(0+((c:___flmul@a)+03h))^00h,c,w
	addwf	(0+((c:___flmul@a)+03h))^00h,c,w
	movwf	((c:___flmul@aexp))^00h,c
	line	41
	
l4353:
	
	btfss	(0+((c:___flmul@a)+02h))^00h,c,(7)&7
	goto	u4801
	goto	u4800
u4801:
	goto	l4357
u4800:
	line	42
	
l4355:
	bsf	(0+(0/8)+(c:___flmul@aexp))^00h,c,(0)&7
	line	45
	
l4357:
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u4811
	goto	u4810
u4811:
	goto	l4365
u4810:
	line	48
	
l4359:
		incf	((c:___flmul@aexp))^00h,c,w
	btfss	status,2
	goto	u4821
	goto	u4820

u4821:
	goto	l4363
u4820:
	line	50
	
l4361:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@a+3))^00h,c
	line	53
	
l4363:
	bsf	(0+(23/8)+(c:___flmul@a))^00h,c,(23)&7
	line	54
	goto	l876
	line	57
	
l4365:
	movlw	low(normalize32(0x0))
	movwf	((c:___flmul@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___flmul@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___flmul@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___flmul@a+3))^00h,c
	line	58
	
l876:
	line	65
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u4831
	goto	u4830
u4831:
	goto	l4369
u4830:
	
l4367:
	movf	((c:___flmul@bexp))^00h,c,w
	btfss	status,2
	goto	u4841
	goto	u4840
u4841:
	goto	l4373
u4840:
	line	66
	
l4369:
	movlw	low(normalize32(0x0))
	movwf	((c:?___flmul))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___flmul+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___flmul+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___flmul+3))^00h,c
	goto	l880
	line	95
	
l4373:
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	96
	
l4375:
	movf	((c:___flmul@temp))^00h,c,w
	movwf	((c:___flmul@grs))^00h,c
	clrf	((c:___flmul@grs+1))^00h,c
	clrf	((c:___flmul@grs+2))^00h,c
	clrf	((c:___flmul@grs+3))^00h,c

	line	97
	
l4377:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	movwf	((c:___flmul@prod))^00h,c
	clrf	((c:___flmul@prod+1))^00h,c
	clrf	((c:___flmul@prod+2))^00h,c
	clrf	((c:___flmul@prod+3))^00h,c

	line	98
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	99
	
l4379:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+1))^00h,c
	addwfc	((c:___flmul@grs+2))^00h,c
	addwfc	((c:___flmul@grs+3))^00h,c
	line	100
	
l4381:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	101
	movf	((c:___flmul@a))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	102
	
l4383:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+1))^00h,c
	addwfc	((c:___flmul@grs+2))^00h,c
	addwfc	((c:___flmul@grs+3))^00h,c
	line	103
	
l4385:
	movf	(0+((c:___flmul@temp)+01h))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	104
	
l4387:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	105
	
l4389:
	movf	((c:___flmul@a))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	106
	
l4391:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	107
	
l4393:
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	108
	
l4395:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	109
	
l4397:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	110
	movf	((c:___flmul@a))^00h,c,w
	mulwf	((c:___flmul@b))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	111
	
l4399:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@grs))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@grs+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@grs+3))^00h,c

	line	112
	
l4401:
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+01h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	113
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+3))^00h,c

	line	114
	
l4403:
	movf	(0+((c:___flmul@a)+01h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	115
	
l4405:
	movf	((c:___flmul@temp))^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+2))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+3))^00h,c

	line	116
	movf	(0+((c:___flmul@a)+02h))^00h,c,w
	mulwf	(0+((c:___flmul@b)+02h))^00h,c
	movff	prodl,(c:___flmul@temp)
	movff	prodh,(c:___flmul@temp+1)
	line	117
	
l4407:
	movf	((c:___flmul@temp))^00h,c,w
	movwf	(??___flmul+0+0)^00h,c
	movf	((c:___flmul@temp+1))^00h,c,w
	movwf	1+(??___flmul+0+0)^00h,c
	
	clrf	2+(??___flmul+0+0)^00h,c
	
	clrf	3+(??___flmul+0+0)^00h,c
	movff	??___flmul+0+2,??___flmul+0+3
	movff	??___flmul+0+1,??___flmul+0+2
	movff	??___flmul+0+0,??___flmul+0+1
	clrf	(??___flmul+0+0)^00h,c
	movf	(??___flmul+0+0)^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	(??___flmul+0+1)^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movf	(??___flmul+0+2)^00h,c,w
	addwfc	((c:___flmul@prod+2))^00h,c
	movf	(??___flmul+0+3)^00h,c,w
	addwfc	((c:___flmul@prod+3))^00h,c

	line	145
	
l4409:
	movff	(c:___flmul@grs),??___flmul+0+0
	movff	(c:___flmul@grs+1),??___flmul+0+0+1
	movff	(c:___flmul@grs+2),??___flmul+0+0+2
	movff	(c:___flmul@grs+3),??___flmul+0+0+3
	movlw	018h+1
	goto	u4850
u4855:
	bcf	status,0
	rrcf	(??___flmul+0+3)^00h,c
	rrcf	(??___flmul+0+2)^00h,c
	rrcf	(??___flmul+0+1)^00h,c
	rrcf	(??___flmul+0+0)^00h,c
u4850:
	decfsz	wreg
	goto	u4855
	movf	(??___flmul+0+0)^00h,c,w
	addwf	((c:___flmul@prod))^00h,c
	movf	(??___flmul+0+1)^00h,c,w
	addwfc	((c:___flmul@prod+1))^00h,c
	movf	(??___flmul+0+2)^00h,c,w
	addwfc	((c:___flmul@prod+2))^00h,c
	movf	(??___flmul+0+3)^00h,c,w
	addwfc	((c:___flmul@prod+3))^00h,c

	line	146
	
l4411:
	movff	(c:___flmul@grs+2),(c:___flmul@grs+3)
	movff	(c:___flmul@grs+1),(c:___flmul@grs+2)
	movff	(c:___flmul@grs),(c:___flmul@grs+1)
	clrf	((c:___flmul@grs))^00h,c
	line	149
	
l4413:
	movf	((c:___flmul@aexp))^00h,c,w
	movff	(c:___flmul@bexp),??___flmul+0+0
	clrf	(??___flmul+0+0+1)^00h,c
	addwf	(??___flmul+0+0)^00h,c
	movlw	0
	addwfc	(??___flmul+0+1)^00h,c
	movlw	low(-126)
	addwf	(??___flmul+0+0)^00h,c,w
	movwf	((c:___flmul@temp))^00h,c
	movlw	high(-126)
	addwfc	(??___flmul+0+1)^00h,c,w
	movwf	1+((c:___flmul@temp))^00h,c
	line	152
	goto	l4421
	line	153
	
l4415:
	bcf	status,0
	rlcf	((c:___flmul@prod))^00h,c
	rlcf	((c:___flmul@prod+1))^00h,c
	rlcf	((c:___flmul@prod+2))^00h,c
	rlcf	((c:___flmul@prod+3))^00h,c
	line	154
	
l4417:
	
	btfss	((c:___flmul@grs+3))^00h,c,(31)&7
	goto	u4861
	goto	u4860
u4861:
	goto	l883
u4860:
	line	155
	
l4419:
	bsf	(0+(0/8)+(c:___flmul@prod))^00h,c,(0)&7
	line	156
	
l883:
	line	157
	bcf	status,0
	rlcf	((c:___flmul@grs))^00h,c
	rlcf	((c:___flmul@grs+1))^00h,c
	rlcf	((c:___flmul@grs+2))^00h,c
	rlcf	((c:___flmul@grs+3))^00h,c
	line	158
	decf	((c:___flmul@temp))^00h,c
	btfss	status,0
	decf	((c:___flmul@temp+1))^00h,c
	line	152
	
l4421:
	
	btfss	((c:___flmul@prod+2))^00h,c,(23)&7
	goto	u4871
	goto	u4870
u4871:
	goto	l4415
u4870:
	line	163
	
l4423:
	movlw	low(0)
	movwf	((c:___flmul@aexp))^00h,c
	line	164
	
l4425:
	
	btfss	((c:___flmul@grs+3))^00h,c,(31)&7
	goto	u4881
	goto	u4880
u4881:
	goto	l885
u4880:
	line	165
	
l4427:
	movlw	0FFh
	andwf	((c:___flmul@grs))^00h,c,w
	movwf	(??___flmul+0+0)^00h,c
	movlw	0FFh
	andwf	((c:___flmul@grs+1))^00h,c,w
	movwf	1+(??___flmul+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___flmul@grs+2))^00h,c,w
	movwf	2+(??___flmul+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___flmul@grs+3))^00h,c,w
	movwf	3+(??___flmul+0+0)^00h,c
	movf	(??___flmul+0+0)^00h,c,w
iorwf	(??___flmul+0+1)^00h,c,w
iorwf	(??___flmul+0+2)^00h,c,w
iorwf	(??___flmul+0+3)^00h,c,w
	btfsc	status,2
	goto	u4891
	goto	u4890

u4891:
	goto	l886
u4890:
	line	166
	
l4429:
	movlw	low(01h)
	movwf	((c:___flmul@aexp))^00h,c
	line	167
	goto	l885
	line	168
	
l886:
	line	169
	
	btfss	((c:___flmul@prod))^00h,c,(0)&7
	goto	u4901
	goto	u4900
u4901:
	goto	l885
u4900:
	goto	l4429
	line	173
	
l885:
	line	174
	movf	((c:___flmul@aexp))^00h,c,w
	btfsc	status,2
	goto	u4911
	goto	u4910
u4911:
	goto	l4441
u4910:
	line	175
	
l4433:
	movlw	low(01h)
	addwf	((c:___flmul@prod))^00h,c
	movlw	0
	addwfc	((c:___flmul@prod+1))^00h,c
	addwfc	((c:___flmul@prod+2))^00h,c
	addwfc	((c:___flmul@prod+3))^00h,c
	line	176
	
l4435:
	
	btfss	((c:___flmul@prod+3))^00h,c,(24)&7
	goto	u4921
	goto	u4920
u4921:
	goto	l4441
u4920:
	line	177
	
l4437:
	movff	(c:___flmul@prod),??___flmul+0+0
	movff	(c:___flmul@prod+1),??___flmul+0+0+1
	movff	(c:___flmul@prod+2),??___flmul+0+0+2
	movff	(c:___flmul@prod+3),??___flmul+0+0+3
	rlcf	(??___flmul+0+3)^00h,c,w
	rrcf	(??___flmul+0+3)^00h,c
	rrcf	(??___flmul+0+2)^00h,c
	rrcf	(??___flmul+0+1)^00h,c
	rrcf	(??___flmul+0+0)^00h,c
	movff	??___flmul+0+0,(c:___flmul@prod)
	movff	??___flmul+0+1,(c:___flmul@prod+1)
	movff	??___flmul+0+2,(c:___flmul@prod+2)
	movff	??___flmul+0+3,(c:___flmul@prod+3)
	line	178
	
l4439:
	infsnz	((c:___flmul@temp))^00h,c
	incf	((c:___flmul@temp+1))^00h,c
	line	183
	
l4441:
	btfsc	((c:___flmul@temp+1))^00h,c,7
	goto	u4931
	movf	((c:___flmul@temp+1))^00h,c,w
	bnz	u4930
	incf	((c:___flmul@temp))^00h,c,w
	btfss	status,0
	goto	u4931
	goto	u4930

u4931:
	goto	l4445
u4930:
	line	184
	
l4443:
	movlw	low(07F800000h)
	movwf	((c:___flmul@prod))^00h,c
	movlw	high(07F800000h)
	movwf	((c:___flmul@prod+1))^00h,c
	movlw	low highword(07F800000h)
	movwf	((c:___flmul@prod+2))^00h,c
	movlw	high highword(07F800000h)
	movwf	((c:___flmul@prod+3))^00h,c
	line	185
	goto	l4457
	line	187
	
l4445:
	btfsc	((c:___flmul@temp+1))^00h,c,7
	goto	u4940
	movf	((c:___flmul@temp+1))^00h,c,w
	bnz	u4941
	decf	((c:___flmul@temp))^00h,c,w
	btfsc	status,0
	goto	u4941
	goto	u4940

u4941:
	goto	l893
u4940:
	line	188
	
l4447:
	movlw	low(0)
	movwf	((c:___flmul@prod))^00h,c
	movlw	high(0)
	movwf	((c:___flmul@prod+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___flmul@prod+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___flmul@prod+3))^00h,c
	line	190
	movlw	low(0)
	movwf	((c:___flmul@sign))^00h,c
	line	191
	goto	l4457
	line	192
	
l893:
	line	194
	movff	(c:___flmul@temp),(c:___flmul@bexp)
	line	195
	
l4449:
	movlw	0FFh
	andwf	((c:___flmul@prod))^00h,c
	movlw	0FFh
	andwf	((c:___flmul@prod+1))^00h,c
	movlw	07Fh
	andwf	((c:___flmul@prod+2))^00h,c
	movlw	0
	andwf	((c:___flmul@prod+3))^00h,c
	line	196
	
l4451:
	
	btfss	((c:___flmul@bexp))^00h,c,(0)&7
	goto	u4951
	goto	u4950
u4951:
	goto	l4455
u4950:
	line	197
	
l4453:
	bsf	(0+(7/8)+0+((c:___flmul@prod)+02h))^00h,c,(7)&7
	line	199
	
l4455:
	bcf	status,0
	rrcf	((c:___flmul@bexp))^00h,c,w
	movwf	(0+((c:___flmul@prod)+03h))^00h,c
	line	201
	
l4457:
	movf	((c:___flmul@sign))^00h,c,w
	iorwf	(0+((c:___flmul@prod)+03h))^00h,c
	line	203
	
l4459:
	movff	(c:___flmul@prod),(c:?___flmul)
	movff	(c:___flmul@prod+1),(c:?___flmul+1)
	movff	(c:___flmul@prod+2),(c:?___flmul+2)
	movff	(c:___flmul@prod+3),(c:?___flmul+3)
	line	205
	
l880:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flmul
	__end_of___flmul:
	signat	___flmul,8316
	global	_io_get_battery_status_from_GPIO

;; *************** function _io_get_battery_status_from_GPIO *****************
;; Defined at:
;;		line 38 in file "input_output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      enum E3201
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	file	"input_output.c"
	line	38
global __ptext40
__ptext40:
psect	text40
	file	"input_output.c"
	line	38
	
_io_get_battery_status_from_GPIO:
;incstack = 0
	callstack 28
	line	39
	
l3719:
;input_output.c: 39:     return (PORTAbits.RA1 == 0) ? BATTERY_OK : BATTERY_LOW;
	btfsc	((c:3968))^0f00h,c,1	;volatile
	goto	u3951
	goto	u3950
u3951:
	movlw	1
	goto	u3956
u3950:
	movlw	0
u3956:
	line	40
	
l178:
	return	;funcret
	callstack 0
GLOBAL	__end_of_io_get_battery_status_from_GPIO
	__end_of_io_get_battery_status_from_GPIO:
	signat	_io_get_battery_status_from_GPIO,89
	global	_io_encoder_loop

;; *************** function _io_encoder_loop *****************
;; Defined at:
;;		line 60 in file "input_output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  BA              1   85[COMRAM] unsigned char 
;;  PosEdge_A       1   82[COMRAM] _Bool 
;;  NegEdge_A       1   81[COMRAM] _Bool 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___fladd
;;		___flge
;;		___flsub
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	60
global __ptext41
__ptext41:
psect	text41
	file	"input_output.c"
	line	60
	
_io_encoder_loop:
;incstack = 0
	callstack 26
	line	61
	
l4969:
;input_output.c: 61:     uint8_t BA = ((PORTB & 0b00001100) >> 2);
	rrncf	((c:3969))^0f00h,c,w	;volatile
	rrncf	wreg
	andlw	(0ffh shr 2) & 0ffh
	andlw	low(03h)
	movwf	((c:io_encoder_loop@BA))^00h,c
	line	62
	
l4971:
;input_output.c: 62:     _Bool NegEdge_A = (prevBA == 0b01 && BA == 0b00);
	movlw	low(0)
	movwf	((c:_io_encoder_loop$1061))^00h,c
	
l4973:
		decf	((c:_prevBA))^00h,c,w
	btfss	status,2
	goto	u5721
	goto	u5720

u5721:
	goto	l199
u5720:
	
l4975:
	movf	((c:io_encoder_loop@BA))^00h,c,w
	btfss	status,2
	goto	u5731
	goto	u5730
u5731:
	goto	l199
u5730:
	
l4977:
	movlw	low(01h)
	movwf	((c:_io_encoder_loop$1061))^00h,c
	
l199:
	movf	((c:_io_encoder_loop$1061))^00h,c,w
	btfss	status,2
	goto	u5741
	goto	u5740
u5741:
	movlw	1
	goto	u5750
u5740:
	movlw	0
u5750:
	movwf	((c:io_encoder_loop@NegEdge_A))^00h,c
	line	63
;input_output.c: 63:     _Bool PosEdge_A = (prevBA == 0b00 && BA == 0b01);
	movlw	low(0)
	movwf	((c:_io_encoder_loop$1063))^00h,c
	movf	((c:_prevBA))^00h,c,w
	btfss	status,2
	goto	u5761
	goto	u5760
u5761:
	goto	l201
u5760:
	
l4979:
		decf	((c:io_encoder_loop@BA))^00h,c,w
	btfss	status,2
	goto	u5771
	goto	u5770

u5771:
	goto	l201
u5770:
	
l4981:
	movlw	low(01h)
	movwf	((c:_io_encoder_loop$1063))^00h,c
	
l201:
	movf	((c:_io_encoder_loop$1063))^00h,c,w
	btfss	status,2
	goto	u5781
	goto	u5780
u5781:
	movlw	1
	goto	u5790
u5780:
	movlw	0
u5790:
	movwf	((c:io_encoder_loop@PosEdge_A))^00h,c
	line	65
;input_output.c: 65:     if (NegEdge_A)
	movf	((c:io_encoder_loop@NegEdge_A))^00h,c,w
	btfsc	status,2
	goto	u5801
	goto	u5800
u5801:
	goto	l4985
u5800:
	line	66
	
l4983:
;input_output.c: 66:         setpoint += (10.0f);
	movff	(_setpoint),(c:___fladd@b)
	movff	(_setpoint+1),(c:___fladd@b+1)
	movff	(_setpoint+2),(c:___fladd@b+2)
	movff	(_setpoint+3),(c:___fladd@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___fladd@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___fladd@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___fladd@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___fladd@a+3))^00h,c
	call	___fladd	;wreg free
	movff	0+?___fladd,(_setpoint)
	movff	1+?___fladd,(_setpoint+1)
	movff	2+?___fladd,(_setpoint+2)
	movff	3+?___fladd,(_setpoint+3)
	
	goto	l203
	line	67
	
l4985:
	movf	((c:io_encoder_loop@PosEdge_A))^00h,c,w
	btfsc	status,2
	goto	u5811
	goto	u5810
u5811:
	goto	l203
u5810:
	line	68
	
l4987:
;input_output.c: 68:         setpoint -= (10.0f);
	movff	(_setpoint),(c:___flsub@b)
	movff	(_setpoint+1),(c:___flsub@b+1)
	movff	(_setpoint+2),(c:___flsub@b+2)
	movff	(_setpoint+3),(c:___flsub@b+3)
	movlw	low(normalize32(0x41200000))
	movwf	((c:___flsub@a))^00h,c
	movlw	high(normalize32(0x41200000))
	movwf	((c:___flsub@a+1))^00h,c
	movlw	low highword(normalize32(0x41200000))
	movwf	((c:___flsub@a+2))^00h,c
	movlw	high highword(normalize32(0x41200000))
	movwf	((c:___flsub@a+3))^00h,c
	call	___flsub	;wreg free
	movff	0+?___flsub,(_setpoint)
	movff	1+?___flsub,(_setpoint+1)
	movff	2+?___flsub,(_setpoint+2)
	movff	3+?___flsub,(_setpoint+3)
	
	
l203:
	line	70
;input_output.c: 70:     if (setpoint < (200.0f))
	movff	(_setpoint),(c:___flge@ff1)
	movff	(_setpoint+1),(c:___flge@ff1+1)
	movff	(_setpoint+2),(c:___flge@ff1+2)
	movff	(_setpoint+3),(c:___flge@ff1+3)
	movlw	low(normalize32(0x43480000))
	movwf	((c:___flge@ff2))^00h,c
	movlw	high(normalize32(0x43480000))
	movwf	((c:___flge@ff2+1))^00h,c
	movlw	low highword(normalize32(0x43480000))
	movwf	((c:___flge@ff2+2))^00h,c
	movlw	high highword(normalize32(0x43480000))
	movwf	((c:___flge@ff2+3))^00h,c
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5821
	goto	u5820
u5821:
	goto	l4991
u5820:
	line	71
	
l4989:
;input_output.c: 71:         setpoint = (200.0f);
	movlw	low(normalize32(0x43480000))
	movlb	0	; () banked
	movwf	((_setpoint))&0ffh
	movlw	high(normalize32(0x43480000))
	movwf	((_setpoint+1))&0ffh
	movlw	low highword(normalize32(0x43480000))
	movwf	((_setpoint+2))&0ffh
	movlw	high highword(normalize32(0x43480000))
	movwf	((_setpoint+3))&0ffh
	goto	l4995
	line	72
	
l4991:
	movlw	low(normalize32(0x43c80000))
	movwf	((c:___flge@ff1))^00h,c
	movlw	high(normalize32(0x43c80000))
	movwf	((c:___flge@ff1+1))^00h,c
	movlw	low highword(normalize32(0x43c80000))
	movwf	((c:___flge@ff1+2))^00h,c
	movlw	high highword(normalize32(0x43c80000))
	movwf	((c:___flge@ff1+3))^00h,c
	movff	(_setpoint),(c:___flge@ff2)
	movff	(_setpoint+1),(c:___flge@ff2+1)
	movff	(_setpoint+2),(c:___flge@ff2+2)
	movff	(_setpoint+3),(c:___flge@ff2+3)
	call	___flge	;wreg free
	btfsc	status,0
	goto	u5831
	goto	u5830
u5831:
	goto	l4995
u5830:
	line	73
	
l4993:
;input_output.c: 73:         setpoint = (400.0f);
	movlw	low(normalize32(0x43c80000))
	movlb	0	; () banked
	movwf	((_setpoint))&0ffh
	movlw	high(normalize32(0x43c80000))
	movwf	((_setpoint+1))&0ffh
	movlw	low highword(normalize32(0x43c80000))
	movwf	((_setpoint+2))&0ffh
	movlw	high highword(normalize32(0x43c80000))
	movwf	((_setpoint+3))&0ffh
	line	75
	
l4995:
;input_output.c: 75:     prevBA = BA;
	movff	(c:io_encoder_loop@BA),(c:_prevBA)
	line	76
	
l208:
	return	;funcret
	callstack 0
GLOBAL	__end_of_io_encoder_loop
	__end_of_io_encoder_loop:
	signat	_io_encoder_loop,89
	global	___flsub

;; *************** function ___flsub *****************
;; Defined at:
;;		line 245 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   69[COMRAM] void 
;;  a               4   73[COMRAM] void 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  4   69[COMRAM] void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___fladd
;; This function is called by:
;;		_io_encoder_loop
;;		_pid_execute
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcadd.c"
	line	245
global __ptext42
__ptext42:
psect	text42
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcadd.c"
	line	245
	
___flsub:
;incstack = 0
	callstack 23
	line	248
	
l4463:
	movlw	0
	xorwf	((c:___flsub@a))^00h,c
	movlw	0
	xorwf	((c:___flsub@a+1))^00h,c
	movlw	0
	xorwf	((c:___flsub@a+2))^00h,c
	movlw	080h
	xorwf	((c:___flsub@a+3))^00h,c
	line	249
	
l4465:
	movff	(c:___flsub@b),(c:___fladd@b)
	movff	(c:___flsub@b+1),(c:___fladd@b+1)
	movff	(c:___flsub@b+2),(c:___fladd@b+2)
	movff	(c:___flsub@b+3),(c:___fladd@b+3)
	movff	(c:___flsub@a),(c:___fladd@a)
	movff	(c:___flsub@a+1),(c:___fladd@a+1)
	movff	(c:___flsub@a+2),(c:___fladd@a+2)
	movff	(c:___flsub@a+3),(c:___fladd@a+3)
	call	___fladd	;wreg free
	movff	0+?___fladd,(c:?___flsub)
	movff	1+?___fladd,(c:?___flsub+1)
	movff	2+?___fladd,(c:?___flsub+2)
	movff	3+?___fladd,(c:?___flsub+3)
	
	line	250
	
l832:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flsub
	__end_of___flsub:
	signat	___flsub,8316
	global	___fladd

;; *************** function ___fladd *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcadd.c"
;; Parameters:    Size  Location     Type
;;  b               4   28[COMRAM] void 
;;  a               4   32[COMRAM] void 
;; Auto vars:     Size  Location     Type
;;  grs             1   43[COMRAM] unsigned char 
;;  bexp            1   42[COMRAM] unsigned char 
;;  aexp            1   41[COMRAM] unsigned char 
;;  signs           1   40[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   28[COMRAM] unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        16       0       0       0       0       0       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_io_encoder_loop
;;		_pid_execute
;;		___flsub
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=2
	line	10
global __ptext43
__ptext43:
psect	text43
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\sprcadd.c"
	line	10
	
___fladd:
;incstack = 0
	callstack 23
	line	21
	
l3969:
	movf	(0+((c:___fladd@b)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fladd@signs))^00h,c
	line	22
	movf	(0+((c:___fladd@b)+03h))^00h,c,w
	addwf	(0+((c:___fladd@b)+03h))^00h,c,w
	movwf	((c:___fladd@bexp))^00h,c
	line	23
	
l3971:
	
	btfss	(0+((c:___fladd@b)+02h))^00h,c,(7)&7
	goto	u4131
	goto	u4130
u4131:
	goto	l3975
u4130:
	line	24
	
l3973:
	bsf	(0+(0/8)+(c:___fladd@bexp))^00h,c,(0)&7
	line	28
	
l3975:
	movf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u4141
	goto	u4140
u4141:
	goto	l3985
u4140:
	line	30
	
l3977:
		incf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u4151
	goto	u4150

u4151:
	goto	l3981
u4150:
	line	32
	
l3979:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@b+3))^00h,c
	line	35
	
l3981:
	bsf	(0+(23/8)+(c:___fladd@b))^00h,c,(23)&7
	line	37
	
l3983:
	movlw	low(0)
	movwf	(0+((c:___fladd@b)+03h))^00h,c
	line	38
	goto	l3987
	line	41
	
l3985:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@b))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@b+3))^00h,c
	line	44
	
l3987:
	movf	(0+((c:___fladd@a)+03h))^00h,c,w
	andlw	low(080h)
	movwf	((c:___fladd@aexp))^00h,c
	line	46
	
l3989:
	movf	((c:___fladd@signs))^00h,c,w
xorwf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u4161
	goto	u4160

u4161:
	goto	l3993
u4160:
	line	47
	
l3991:
	bsf	(0+(6/8)+(c:___fladd@signs))^00h,c,(6)&7
	line	49
	
l3993:
	movf	(0+((c:___fladd@a)+03h))^00h,c,w
	addwf	(0+((c:___fladd@a)+03h))^00h,c,w
	movwf	((c:___fladd@aexp))^00h,c
	line	50
	
l3995:
	
	btfss	(0+((c:___fladd@a)+02h))^00h,c,(7)&7
	goto	u4171
	goto	u4170
u4171:
	goto	l3999
u4170:
	line	51
	
l3997:
	bsf	(0+(0/8)+(c:___fladd@aexp))^00h,c,(0)&7
	line	55
	
l3999:
	movf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u4181
	goto	u4180
u4181:
	goto	l4009
u4180:
	line	57
	
l4001:
		incf	((c:___fladd@aexp))^00h,c,w
	btfss	status,2
	goto	u4191
	goto	u4190

u4191:
	goto	l4005
u4190:
	line	59
	
l4003:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@a+3))^00h,c
	line	62
	
l4005:
	bsf	(0+(23/8)+(c:___fladd@a))^00h,c,(23)&7
	line	64
	
l4007:
	movlw	low(0)
	movwf	(0+((c:___fladd@a)+03h))^00h,c
	line	65
	goto	l4011
	line	68
	
l4009:
	movlw	low(normalize32(0x0))
	movwf	((c:___fladd@a))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:___fladd@a+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:___fladd@a+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:___fladd@a+3))^00h,c
	line	75
	
l4011:
		movf	((c:___fladd@bexp))^00h,c,w
	subwf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,0
	goto	u4201
	goto	u4200

u4201:
	goto	l4047
u4200:
	line	77
	
l4013:
	
	btfss	((c:___fladd@signs))^00h,c,(6)&7
	goto	u4211
	goto	u4210
u4211:
	goto	l4017
u4210:
	line	78
	
l4015:
	movlw	(080h)&0ffh
	xorwf	((c:___fladd@signs))^00h,c
	line	81
	
l4017:
	movff	(c:___fladd@bexp),(c:___fladd@grs)
	line	82
	
l4019:
	movff	(c:___fladd@aexp),(c:___fladd@bexp)
	line	83
	
l4021:
	movff	(c:___fladd@grs),(c:___fladd@aexp)
	line	84
	
l4023:
	movff	(c:___fladd@b),(c:___fladd@grs)
	line	85
	
l4025:
	movff	(c:___fladd@a),(c:___fladd@b)
	line	86
	
l4027:
	movff	(c:___fladd@grs),(c:___fladd@a)
	line	87
	
l4029:
	movff	0+((c:___fladd@b)+01h),(c:___fladd@grs)
	line	88
	
l4031:
	movff	0+((c:___fladd@a)+01h),0+((c:___fladd@b)+01h)
	line	89
	
l4033:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+01h)
	line	90
	
l4035:
	movff	0+((c:___fladd@b)+02h),(c:___fladd@grs)
	line	91
	
l4037:
	movff	0+((c:___fladd@a)+02h),0+((c:___fladd@b)+02h)
	line	92
	
l4039:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+02h)
	line	93
	
l4041:
	movff	0+((c:___fladd@b)+03h),(c:___fladd@grs)
	line	94
	
l4043:
	movff	0+((c:___fladd@a)+03h),0+((c:___fladd@b)+03h)
	line	95
	
l4045:
	movff	(c:___fladd@grs),0+((c:___fladd@a)+03h)
	line	98
	
l4047:
	movlw	low(0)
	movwf	((c:___fladd@grs))^00h,c
	line	100
	
l4049:
	movf	((c:___fladd@bexp))^00h,c,w
	movff	(c:___fladd@aexp),??___fladd+0+0
	clrf	(??___fladd+0+0+1)^00h,c
	subwf	(??___fladd+0+0)^00h,c
	movlw	0
	subwfb	(??___fladd+0+1)^00h,c
	btfsc	(??___fladd+0+1)^00h,c,7
	goto	u4221
	movf	(??___fladd+0+1)^00h,c,w
	bnz	u4220
	movlw	26
	subwf	 (??___fladd+0+0)^00h,c,w
	btfss	status,0
	goto	u4221
	goto	u4220

u4221:
	goto	l791
u4220:
	line	101
	
l4051:
	movf	((c:___fladd@b))^00h,c,w
iorwf	((c:___fladd@b+1))^00h,c,w
iorwf	((c:___fladd@b+2))^00h,c,w
iorwf	((c:___fladd@b+3))^00h,c,w
	btfss	status,2
	goto	u4231
	goto	u4230

u4231:
	movlw	1
	goto	u4240
u4230:
	movlw	0
u4240:
	movwf	((c:___fladd@grs))^00h,c
	line	102
	
l4053:
	movlw	low(0)
	movwf	((c:___fladd@b))^00h,c
	movlw	high(0)
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fladd@b+3))^00h,c
	line	103
	
l4055:
	movff	(c:___fladd@aexp),(c:___fladd@bexp)
	line	104
	goto	l790
	line	106
	
l792:
	line	109
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u4251
	goto	u4250
u4251:
	goto	l4059
u4250:
	line	110
	
l4057:
	bcf	status,0
	rrcf	((c:___fladd@grs))^00h,c,w
	iorlw	low(01h)
	movwf	((c:___fladd@grs))^00h,c
	line	111
	goto	l4061
	line	113
	
l4059:
	bcf status,0
	rrcf	((c:___fladd@grs))^00h,c

	line	115
	
l4061:
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u4261
	goto	u4260
u4261:
	goto	l4065
u4260:
	line	116
	
l4063:
	bsf	(0+(7/8)+(c:___fladd@grs))^00h,c,(7)&7
	line	118
	
l4065:
	rlcf	((c:___fladd@b+3))^00h,c,w
	rrcf	((c:___fladd@b+3))^00h,c
	rrcf	((c:___fladd@b+2))^00h,c
	rrcf	((c:___fladd@b+1))^00h,c
	rrcf	((c:___fladd@b))^00h,c
	line	119
	
l4067:
	incf	((c:___fladd@bexp))^00h,c
	line	120
	
l791:
	line	106
		movf	((c:___fladd@aexp))^00h,c,w
	subwf	((c:___fladd@bexp))^00h,c,w
	btfss	status,0
	goto	u4271
	goto	u4270

u4271:
	goto	l792
u4270:
	line	121
	
l790:
	line	124
	
	btfsc	((c:___fladd@signs))^00h,c,(6)&7
	goto	u4281
	goto	u4280
u4281:
	goto	l4093
u4280:
	line	127
	
l4069:
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u4291
	goto	u4290
u4291:
	goto	l4075
u4290:
	line	128
	
l4071:
	movlw	low(normalize32(0x0))
	movwf	((c:?___fladd))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___fladd+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___fladd+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___fladd+3))^00h,c
	goto	l799
	line	132
	
l4075:
	movf	((c:___fladd@a))^00h,c,w
	addwf	((c:___fladd@b))^00h,c
	movf	((c:___fladd@a+1))^00h,c,w
	addwfc	((c:___fladd@b+1))^00h,c
	movf	((c:___fladd@a+2))^00h,c,w
	addwfc	((c:___fladd@b+2))^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	addwfc	((c:___fladd@b+3))^00h,c
	line	134
	
l4077:
	
	btfss	((c:___fladd@b+3))^00h,c,(24)&7
	goto	u4301
	goto	u4300
u4301:
	goto	l4129
u4300:
	line	135
	
l4079:
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u4311
	goto	u4310
u4311:
	goto	l4083
u4310:
	line	136
	
l4081:
	bcf	status,0
	rrcf	((c:___fladd@grs))^00h,c,w
	iorlw	low(01h)
	movwf	((c:___fladd@grs))^00h,c
	line	137
	goto	l4085
	line	139
	
l4083:
	bcf status,0
	rrcf	((c:___fladd@grs))^00h,c

	line	141
	
l4085:
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u4321
	goto	u4320
u4321:
	goto	l4089
u4320:
	line	142
	
l4087:
	bsf	(0+(7/8)+(c:___fladd@grs))^00h,c,(7)&7
	line	144
	
l4089:
	rlcf	((c:___fladd@b+3))^00h,c,w
	rrcf	((c:___fladd@b+3))^00h,c
	rrcf	((c:___fladd@b+2))^00h,c
	rrcf	((c:___fladd@b+1))^00h,c
	rrcf	((c:___fladd@b))^00h,c
	line	145
	
l4091:
	incf	((c:___fladd@bexp))^00h,c
	goto	l4129
	line	153
	
l4093:
		movf	((c:___fladd@a))^00h,c,w
	subwf	((c:___fladd@b))^00h,c,w
	movf	((c:___fladd@a+1))^00h,c,w
	subwfb	((c:___fladd@b+1))^00h,c,w
	movf	((c:___fladd@a+2))^00h,c,w
	subwfb	((c:___fladd@b+2))^00h,c,w
	movf	((c:___fladd@b+3))^00h,c,w
	xorlw	80h
	movwf	(??___fladd+0+0)^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	xorlw	80h
	subwfb	(??___fladd+0+0)^00h,c,w
	btfsc	status,0
	goto	u4331
	goto	u4330

u4331:
	goto	l4103
u4330:
	line	154
	
l4095:
	movf	((c:___fladd@b))^00h,c,w
	subwf	((c:___fladd@a))^00h,c,w
	movwf	(??___fladd+0+0)^00h,c
	movf	((c:___fladd@b+1))^00h,c,w
	subwfb	((c:___fladd@a+1))^00h,c,w
	movwf	1+(??___fladd+0+0)^00h,c
	
	movf	((c:___fladd@b+2))^00h,c,w
	subwfb	((c:___fladd@a+2))^00h,c,w
	movwf	2+(??___fladd+0+0)^00h,c
	
	movf	((c:___fladd@b+3))^00h,c,w
	subwfb	((c:___fladd@a+3))^00h,c,w
	movwf	3+(??___fladd+0+0)^00h,c
	movlw	0FFh
	addwf	(??___fladd+0+0)^00h,c,w
	movwf	((c:___fladd@b))^00h,c
	movlw	0FFh
	addwfc	(??___fladd+0+1)^00h,c,w
	movwf	1+((c:___fladd@b))^00h,c
	
	movlw	0FFh
	addwfc	(??___fladd+0+2)^00h,c,w
	movwf	2+((c:___fladd@b))^00h,c
	
	movlw	0FFh
	addwfc	(??___fladd+0+3)^00h,c,w
	movwf	3+((c:___fladd@b))^00h,c
	line	155
	movlw	(080h)&0ffh
	xorwf	((c:___fladd@signs))^00h,c
	line	156
	
l4097:
	negf	((c:___fladd@grs))^00h,c
	line	157
	
l4099:
	movf	((c:___fladd@grs))^00h,c,w
	btfss	status,2
	goto	u4341
	goto	u4340
u4341:
	goto	l807
u4340:
	line	158
	
l4101:
	movlw	low(01h)
	addwf	((c:___fladd@b))^00h,c
	movlw	0
	addwfc	((c:___fladd@b+1))^00h,c
	addwfc	((c:___fladd@b+2))^00h,c
	addwfc	((c:___fladd@b+3))^00h,c
	goto	l807
	line	162
	
l4103:
	movf	((c:___fladd@a))^00h,c,w
	subwf	((c:___fladd@b))^00h,c
	movf	((c:___fladd@a+1))^00h,c,w
	subwfb	((c:___fladd@b+1))^00h,c
	movf	((c:___fladd@a+2))^00h,c,w
	subwfb	((c:___fladd@b+2))^00h,c
	movf	((c:___fladd@a+3))^00h,c,w
	subwfb	((c:___fladd@b+3))^00h,c
	line	163
	
l807:
	line	166
	movf	((c:___fladd@b))^00h,c,w
iorwf	((c:___fladd@b+1))^00h,c,w
iorwf	((c:___fladd@b+2))^00h,c,w
iorwf	((c:___fladd@b+3))^00h,c,w
	btfss	status,2
	goto	u4351
	goto	u4350

u4351:
	goto	l4127
u4350:
	
l4105:
	movf	((c:___fladd@grs))^00h,c,w
	btfss	status,2
	goto	u4361
	goto	u4360
u4361:
	goto	l4127
u4360:
	line	167
	
l4107:
	movlw	low(normalize32(0x0))
	movwf	((c:?___fladd))^00h,c
	movlw	high(normalize32(0x0))
	movwf	((c:?___fladd+1))^00h,c
	movlw	low highword(normalize32(0x0))
	movwf	((c:?___fladd+2))^00h,c
	movlw	high highword(normalize32(0x0))
	movwf	((c:?___fladd+3))^00h,c
	goto	l799
	line	172
	
l4111:
	bcf	status,0
	rlcf	((c:___fladd@b))^00h,c
	rlcf	((c:___fladd@b+1))^00h,c
	rlcf	((c:___fladd@b+2))^00h,c
	rlcf	((c:___fladd@b+3))^00h,c
	line	173
	
l4113:
	
	btfss	((c:___fladd@grs))^00h,c,(7)&7
	goto	u4371
	goto	u4370
u4371:
	goto	l4117
u4370:
	line	174
	
l4115:
	bsf	(0+(0/8)+(c:___fladd@b))^00h,c,(0)&7
	line	176
	
l4117:
	
	btfss	((c:___fladd@grs))^00h,c,(0)&7
	goto	u4381
	goto	u4380
u4381:
	goto	l4121
u4380:
	line	177
	
l4119:
	bsf	status,0
	
	rlcf	((c:___fladd@grs))^00h,c
	line	178
	goto	l4123
	line	180
	
l4121:
	bcf status,0
	rlcf	((c:___fladd@grs))^00h,c

	line	182
	
l4123:
	movf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u4391
	goto	u4390
u4391:
	goto	l4127
u4390:
	line	183
	
l4125:
	decf	((c:___fladd@bexp))^00h,c
	line	171
	
l4127:
	
	btfss	((c:___fladd@b+2))^00h,c,(23)&7
	goto	u4401
	goto	u4400
u4401:
	goto	l4111
u4400:
	line	192
	
l4129:
	movlw	low(0)
	movwf	((c:___fladd@aexp))^00h,c
	line	193
	
l4131:
	
	btfss	((c:___fladd@grs))^00h,c,(7)&7
	goto	u4411
	goto	u4410
u4411:
	goto	l816
u4410:
	line	194
	
l4133:
	movff	(c:___fladd@grs),??___fladd+0+0
	movlw	07Fh
	andwf	(??___fladd+0+0)^00h,c
	btfsc	status,2
	goto	u4421
	goto	u4420
u4421:
	goto	l817
u4420:
	line	195
	
l4135:
	movlw	low(01h)
	movwf	((c:___fladd@aexp))^00h,c
	line	196
	goto	l816
	line	197
	
l817:
	line	198
	
	btfss	((c:___fladd@b))^00h,c,(0)&7
	goto	u4431
	goto	u4430
u4431:
	goto	l816
u4430:
	goto	l4135
	line	202
	
l816:
	line	203
	movf	((c:___fladd@aexp))^00h,c,w
	btfsc	status,2
	goto	u4441
	goto	u4440
u4441:
	goto	l4147
u4440:
	line	204
	
l4139:
	movlw	low(01h)
	addwf	((c:___fladd@b))^00h,c
	movlw	0
	addwfc	((c:___fladd@b+1))^00h,c
	addwfc	((c:___fladd@b+2))^00h,c
	addwfc	((c:___fladd@b+3))^00h,c
	line	205
	
l4141:
	
	btfss	((c:___fladd@b+3))^00h,c,(24)&7
	goto	u4451
	goto	u4450
u4451:
	goto	l4147
u4450:
	line	206
	
l4143:
	movff	(c:___fladd@b),??___fladd+0+0
	movff	(c:___fladd@b+1),??___fladd+0+0+1
	movff	(c:___fladd@b+2),??___fladd+0+0+2
	movff	(c:___fladd@b+3),??___fladd+0+0+3
	rlcf	(??___fladd+0+3)^00h,c,w
	rrcf	(??___fladd+0+3)^00h,c
	rrcf	(??___fladd+0+2)^00h,c
	rrcf	(??___fladd+0+1)^00h,c
	rrcf	(??___fladd+0+0)^00h,c
	movff	??___fladd+0+0,(c:___fladd@b)
	movff	??___fladd+0+1,(c:___fladd@b+1)
	movff	??___fladd+0+2,(c:___fladd@b+2)
	movff	??___fladd+0+3,(c:___fladd@b+3)
	line	207
		incf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u4461
	goto	u4460

u4461:
	goto	l4147
u4460:
	line	208
	
l4145:
	incf	((c:___fladd@bexp))^00h,c
	line	215
	
l4147:
		incf	((c:___fladd@bexp))^00h,c,w
	btfsc	status,2
	goto	u4471
	goto	u4470

u4471:
	goto	l4151
u4470:
	
l4149:
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u4481
	goto	u4480
u4481:
	goto	l4155
u4480:
	line	216
	
l4151:
	movlw	low(0)
	movwf	((c:___fladd@b))^00h,c
	movlw	high(0)
	movwf	((c:___fladd@b+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___fladd@b+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___fladd@b+3))^00h,c
	line	218
	movf	((c:___fladd@bexp))^00h,c,w
	btfss	status,2
	goto	u4491
	goto	u4490
u4491:
	goto	l4155
u4490:
	line	219
	
l4153:
	movlw	low(0)
	movwf	((c:___fladd@signs))^00h,c
	line	225
	
l4155:
	
	btfss	((c:___fladd@bexp))^00h,c,(0)&7
	goto	u4501
	goto	u4500
u4501:
	goto	l4159
u4500:
	line	226
	
l4157:
	bsf	(0+(7/8)+0+((c:___fladd@b)+02h))^00h,c,(7)&7
	line	227
	goto	l4161
	line	230
	
l4159:
	bcf	(0+(7/8)+0+((c:___fladd@b)+02h))^00h,c,(7)&7
	line	232
	
l4161:
	bcf	status,0
	rrcf	((c:___fladd@bexp))^00h,c,w
	movwf	(0+((c:___fladd@b)+03h))^00h,c
	line	233
	
l4163:
	
	btfss	((c:___fladd@signs))^00h,c,(7)&7
	goto	u4511
	goto	u4510
u4511:
	goto	l4167
u4510:
	line	234
	
l4165:
	bsf	(0+(7/8)+0+((c:___fladd@b)+03h))^00h,c,(7)&7
	line	236
	
l4167:
	movff	(c:___fladd@b),(c:?___fladd)
	movff	(c:___fladd@b+1),(c:?___fladd+1)
	movff	(c:___fladd@b+2),(c:?___fladd+2)
	movff	(c:___fladd@b+3),(c:?___fladd+3)
	line	237
	
l799:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fladd
	__end_of___fladd:
	signat	___fladd,8316
	global	___flge

;; *************** function ___flge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\flge.c"
;; Parameters:    Size  Location     Type
;;  ff1             4   69[COMRAM] unsigned char 
;;  ff2             4   73[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         8       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0
;;      Totals:        12       0       0       0       0       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_io_encoder_loop
;;		_pid_execute
;;		_efgtoa
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\flge.c"
	line	4
global __ptext44
__ptext44:
psect	text44
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c99\common\flge.c"
	line	4
	
___flge:
;incstack = 0
	callstack 24
	line	7
	
l4485:
	movlw	0
	andwf	((c:___flge@ff1))^00h,c,w
	movwf	(??___flge+0+0)^00h,c
	movlw	0
	andwf	((c:___flge@ff1+1))^00h,c,w
	movwf	1+(??___flge+0+0)^00h,c
	
	movlw	080h
	andwf	((c:___flge@ff1+2))^00h,c,w
	movwf	2+(??___flge+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___flge@ff1+3))^00h,c,w
	movwf	3+(??___flge+0+0)^00h,c
	movf	(??___flge+0+0)^00h,c,w
iorwf	(??___flge+0+1)^00h,c,w
iorwf	(??___flge+0+2)^00h,c,w
iorwf	(??___flge+0+3)^00h,c,w
	btfss	status,2
	goto	u4991
	goto	u4990

u4991:
	goto	l4489
u4990:
	line	8
	
l4487:
	movlw	low(0)
	movwf	((c:___flge@ff1))^00h,c
	movlw	high(0)
	movwf	((c:___flge@ff1+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___flge@ff1+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___flge@ff1+3))^00h,c
	line	9
	
l4489:
	movlw	0
	andwf	((c:___flge@ff2))^00h,c,w
	movwf	(??___flge+0+0)^00h,c
	movlw	0
	andwf	((c:___flge@ff2+1))^00h,c,w
	movwf	1+(??___flge+0+0)^00h,c
	
	movlw	080h
	andwf	((c:___flge@ff2+2))^00h,c,w
	movwf	2+(??___flge+0+0)^00h,c
	
	movlw	07Fh
	andwf	((c:___flge@ff2+3))^00h,c,w
	movwf	3+(??___flge+0+0)^00h,c
	movf	(??___flge+0+0)^00h,c,w
iorwf	(??___flge+0+1)^00h,c,w
iorwf	(??___flge+0+2)^00h,c,w
iorwf	(??___flge+0+3)^00h,c,w
	btfss	status,2
	goto	u5001
	goto	u5000

u5001:
	goto	l4493
u5000:
	line	10
	
l4491:
	movlw	low(0)
	movwf	((c:___flge@ff2))^00h,c
	movlw	high(0)
	movwf	((c:___flge@ff2+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___flge@ff2+2))^00h,c
	movlw	high highword(0)
	movwf	((c:___flge@ff2+3))^00h,c
	line	12
	
l4493:
	
	btfss	((c:___flge@ff1+3))^00h,c,(31)&7
	goto	u5011
	goto	u5010
u5011:
	goto	l4497
u5010:
	line	13
	
l4495:
	negf	((c:___flge@ff1))^00h,c
	comf	((c:___flge@ff1+1))^00h,c
	btfsc	status,0
	incf	((c:___flge@ff1+1))^00h,c
	comf	((c:___flge@ff1+2))^00h,c
	btfsc	status,0
	incf	((c:___flge@ff1+2))^00h,c
	movlw	high highword(080000000h)
	subfwb	((c:___flge@ff1+3))^00h,c
	line	14
	
l4497:
	
	btfss	((c:___flge@ff2+3))^00h,c,(31)&7
	goto	u5021
	goto	u5020
u5021:
	goto	l527
u5020:
	line	15
	
l4499:
	negf	((c:___flge@ff2))^00h,c
	comf	((c:___flge@ff2+1))^00h,c
	btfsc	status,0
	incf	((c:___flge@ff2+1))^00h,c
	comf	((c:___flge@ff2+2))^00h,c
	btfsc	status,0
	incf	((c:___flge@ff2+2))^00h,c
	movlw	high highword(080000000h)
	subfwb	((c:___flge@ff2+3))^00h,c
	
l527:
	line	16
	movlw	0
	xorwf	((c:___flge@ff1))^00h,c
	movlw	0
	xorwf	((c:___flge@ff1+1))^00h,c
	movlw	0
	xorwf	((c:___flge@ff1+2))^00h,c
	movlw	080h
	xorwf	((c:___flge@ff1+3))^00h,c
	line	17
	movlw	0
	xorwf	((c:___flge@ff2))^00h,c
	movlw	0
	xorwf	((c:___flge@ff2+1))^00h,c
	movlw	0
	xorwf	((c:___flge@ff2+2))^00h,c
	movlw	080h
	xorwf	((c:___flge@ff2+3))^00h,c
	line	18
		movf	((c:___flge@ff2))^00h,c,w
	subwf	((c:___flge@ff1))^00h,c,w
	movf	((c:___flge@ff2+1))^00h,c,w
	subwfb	((c:___flge@ff1+1))^00h,c,w
	movf	((c:___flge@ff2+2))^00h,c,w
	subwfb	((c:___flge@ff1+2))^00h,c,w
	movf	((c:___flge@ff2+3))^00h,c,w
	subwfb	((c:___flge@ff1+3))^00h,c,w
	btfsc	status,0
	goto	u5031
	goto	u5030

u5031:
	goto	l4503
u5030:
	
l4501:
	bcf	status,0
	goto	l532
	
l4503:
	bsf	status,0
	line	19
	
l532:
	return	;funcret
	callstack 0
GLOBAL	__end_of___flge
	__end_of___flge:
	signat	___flge,8312
	global	_io_encoder_button_is_pressed

;; *************** function _io_encoder_button_is_pressed *****************
;; Defined at:
;;		line 82 in file "input_output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      _Bool 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	file	"input_output.c"
	line	82
global __ptext45
__ptext45:
psect	text45
	file	"input_output.c"
	line	82
	
_io_encoder_button_is_pressed:
;incstack = 0
	callstack 28
	line	83
	
l3709:
;input_output.c: 83:     return (PORTBbits.RB4 == 0);
	btfss	((c:3969))^0f00h,c,4	;volatile
	goto	u3931
	goto	u3930
u3931:
	movlw	1
	goto	u3940
u3930:
	movlw	0
u3940:
	line	84
	
l214:
	return	;funcret
	callstack 0
GLOBAL	__end_of_io_encoder_button_is_pressed
	__end_of_io_encoder_button_is_pressed:
	signat	_io_encoder_button_is_pressed,89
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 5 in file "interrupt_isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		_ISR_TIMER_0
;;		_ISR_TIMER_1
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	intcodelo,class=CODE,space=0,reloc=2
	file	"dist/default/production\test4550.X.production.s"
	line	#
global __pintcodelo
__pintcodelo:
psect	intcodelo
	file	"interrupt_isr.c"
	line	5
	
_isr:
;incstack = 0
	callstack 21
	bsf int$flags,0,c ;set compiler interrupt flag (level 1)
	movff	status+0,??_isr+0
	movff	wreg+0,??_isr+1
	movff	bsr+0,??_isr+2
	line	6
	
i1l3863:
;interrupt_isr.c: 6:     ISR_TIMER_0();
	call	_ISR_TIMER_0	;wreg free
	line	7
;interrupt_isr.c: 7:     ISR_TIMER_1();
	call	_ISR_TIMER_1	;wreg free
	line	9
	
i1l259:
	movff	??_isr+2,bsr+0
	movff	??_isr+1,wreg+0
	movff	??_isr+0,status+0
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	retfie
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
	global	_ISR_TIMER_1

;; *************** function _ISR_TIMER_1 *****************
;; Defined at:
;;		line 86 in file "input_output.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=0
	file	"input_output.c"
	line	86
global __ptext47
__ptext47:
psect	text47
	file	"input_output.c"
	line	86
	
_ISR_TIMER_1:
;incstack = 0
	callstack 21
	line	87
	
i1l2415:
;input_output.c: 87:     if (PIR1bits.TMR1IF) {
	btfss	((c:3998))^0f00h,c,0	;volatile
	goto	i1u200_21
	goto	i1u200_20
i1u200_21:
	goto	i1l222
i1u200_20:
	line	88
	
i1l2417:
;input_output.c: 88:         PIR1bits.TMR1IF = 0;
	bcf	((c:3998))^0f00h,c,0	;volatile
	line	89
	
i1l2419:
;input_output.c: 89:         TMR1 = 53536;
	movlw	high(0D120h)
	movwf	((c:4046+1))^0f00h,c	;volatile
	movlw	low(0D120h)
	movwf	((c:4046))^0f00h,c	;volatile
	line	91
	
i1l2421:
;input_output.c: 91:         if (counter < duty)
		movf	((c:_duty))^00h,c,w	;volatile
	subwf	((c:_counter))^00h,c,w	;volatile
	btfsc	status,0
	goto	i1u201_21
	goto	i1u201_20

i1u201_21:
	goto	i1l2425
i1u201_20:
	line	92
	
i1l2423:
;input_output.c: 92:             LATDbits.LATD0 = 1;
	bsf	((c:3980))^0f00h,c,0	;volatile
	goto	i1l2429
	line	93
	
i1l2425:
		movlw	064h-0
	cpfslt	((c:_counter))^00h,c	;volatile
	goto	i1u202_21
	goto	i1u202_20

i1u202_21:
	goto	i1l2429
i1u202_20:
	line	94
	
i1l2427:
;input_output.c: 94:             LATDbits.LATD0 = 0;
	bcf	((c:3980))^0f00h,c,0	;volatile
	line	96
	
i1l2429:
;input_output.c: 96:         counter++;
	incf	((c:_counter))^00h,c	;volatile
	line	97
	
i1l2431:
;input_output.c: 97:         if (counter >= 100)
		movlw	064h-1
	cpfsgt	((c:_counter))^00h,c	;volatile
	goto	i1u203_21
	goto	i1u203_20

i1u203_21:
	goto	i1l222
i1u203_20:
	line	98
	
i1l2433:
;input_output.c: 98:             counter = 0;
	movlw	low(0)
	movwf	((c:_counter))^00h,c	;volatile
	line	102
	
i1l222:
	return	;funcret
	callstack 0
GLOBAL	__end_of_ISR_TIMER_1
	__end_of_ISR_TIMER_1:
	signat	_ISR_TIMER_1,89
	global	_ISR_TIMER_0

;; *************** function _ISR_TIMER_0 *****************
;; Defined at:
;;		line 31 in file "systimer.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7
;;      Params:         0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_isr
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=0
	file	"systimer.c"
	line	31
global __ptext48
__ptext48:
psect	text48
	file	"systimer.c"
	line	31
	
_ISR_TIMER_0:
;incstack = 0
	callstack 21
	line	32
	
i1l3805:
;systimer.c: 32:     if (INTCONbits.TMR0IF) {
	btfss	((c:4082))^0f00h,c,2	;volatile
	goto	i1u405_21
	goto	i1u405_20
i1u405_21:
	goto	i1l138
i1u405_20:
	line	33
	
i1l3807:
;systimer.c: 33:         INTCONbits.TMR0IF = 0;
	bcf	((c:4082))^0f00h,c,2	;volatile
	line	34
	
i1l3809:
;systimer.c: 34:         TMR0 = 63192;
	movlw	high(0F6D8h)
	movwf	((c:4054+1))^0f00h,c	;volatile
	movlw	low(0F6D8h)
	movwf	((c:4054))^0f00h,c	;volatile
	line	35
	
i1l3811:
;systimer.c: 35:         _ms += 50;
	movlw	low(032h)
	movlb	0	; () banked
	addwf	((__ms))&0ffh	;volatile
	movlw	0
	addwfc	((__ms+1))&0ffh	;volatile
	addwfc	((__ms+2))&0ffh	;volatile
	addwfc	((__ms+3))&0ffh	;volatile
	line	38
	
i1l138:
	return	;funcret
	callstack 0
GLOBAL	__end_of_ISR_TIMER_0
	__end_of_ISR_TIMER_0:
	signat	_ISR_TIMER_0,89
psect	smallconst
	db 0	; dummy byte at the end
	global	__smallconst
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp8
	wtemp8 set btemp+1
	global	ttemp5
	ttemp5 set btemp+1
	global	ttemp6
	ttemp6 set btemp+4
	global	ttemp7
	ttemp7 set btemp+8
	end
