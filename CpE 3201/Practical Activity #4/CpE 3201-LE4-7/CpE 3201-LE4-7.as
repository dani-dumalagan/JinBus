opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_delay
	FNROOT	_main
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_T2CON
_T2CON	set	0x12
	global	_RB1
_RB1	set	0x31
	global	_RB2
_RB2	set	0x32
	global	_RC2
_RC2	set	0x3A
	global	_PR2
_PR2	set	0x92
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _delay
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"CpE 3201-LE4-7.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	ds	2
??_main:	; 0 bytes @ 0x6
	global	main@duty
main@duty:	; 2 bytes @ 0x6
	ds	2
	global	main@freq
main@freq:	; 2 bytes @ 0x8
	ds	2
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_delay
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0     253
;!                                              6 COMMON     4     4      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                6     4      2     118
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  freq            2    8[COMMON] int 
;;  duty            2    6[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-7\LE4-7.c"
	line	20
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-7\LE4-7.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	21
	
l544:	
;LE4-7.c: 21: TRISB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	24
;LE4-7.c: 24: PR2 = 0x7C;
	movlw	(07Ch)
	movwf	(146)^080h	;volatile
	line	25
;LE4-7.c: 25: CCPR1L = 0x57;
	movlw	(057h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(21)	;volatile
	line	26
;LE4-7.c: 26: CCP1CON = 0x2C;
	movlw	(02Ch)
	movwf	(23)	;volatile
	line	27
	
l546:	
;LE4-7.c: 27: TRISC = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	28
	
l548:	
;LE4-7.c: 28: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	29
	
l550:	
;LE4-7.c: 29: T2CON = 0x06;
	movlw	(06h)
	movwf	(18)	;volatile
	line	31
	
l552:	
;LE4-7.c: 31: int freq = 1;
	movlw	low(01h)
	movwf	(main@freq)
	movlw	high(01h)
	movwf	((main@freq))+1
	line	32
	
l554:	
;LE4-7.c: 32: int duty = 1;
	movlw	low(01h)
	movwf	(main@duty)
	movlw	high(01h)
	movwf	((main@duty))+1
	goto	l556
	line	34
;LE4-7.c: 34: for(;;) {
	
l28:	
	line	35
	
l556:	
;LE4-7.c: 35: delay(500);
	movlw	low(01F4h)
	movwf	(delay@cnt)
	movlw	high(01F4h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	36
	
l558:	
;LE4-7.c: 36: if(RB1 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7	;volatile
	goto	u51
	goto	u50
u51:
	goto	l29
u50:
	line	37
	
l560:	
;LE4-7.c: 37: if(freq == 3)
	movlw	03h
	xorwf	(main@freq),w
	iorwf	(main@freq+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l564
u60:
	line	38
	
l562:	
;LE4-7.c: 38: freq = 1;
	movlw	low(01h)
	movwf	(main@freq)
	movlw	high(01h)
	movwf	((main@freq))+1
	goto	l574
	line	39
	
l30:	
	line	40
	
l564:	
;LE4-7.c: 39: else
;LE4-7.c: 40: freq++;
	movlw	low(01h)
	addwf	(main@freq),f
	skipnc
	incf	(main@freq+1),f
	movlw	high(01h)
	addwf	(main@freq+1),f
	goto	l574
	
l31:	
	line	41
;LE4-7.c: 41: switch(freq) {
	goto	l574
	line	42
;LE4-7.c: 42: case 1: PR2 = 0x1869; break;
	
l33:	
	
l566:	
	movlw	(069h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	goto	l29
	line	43
;LE4-7.c: 43: case 2: PR2 = 0x270; break;
	
l35:	
	
l568:	
	movlw	(070h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	goto	l29
	line	44
;LE4-7.c: 44: case 3: PR2 = 0x3E; break;
	
l36:	
	
l570:	
	movlw	(03Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	goto	l29
	line	45
	
l572:	
;LE4-7.c: 45: }
	goto	l29
	line	41
	
l32:	
	
l574:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@freq+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l778
	goto	l29
	opt asmopt_on
	
l778:	
; Switch size 1, requested type "space"
; Number of cases is 3, Range of values is 1 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           10     6 (average)
; direct_byte           20    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (main@freq),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l566
	xorlw	2^1	; case 2
	skipnz
	goto	l568
	xorlw	3^2	; case 3
	skipnz
	goto	l570
	goto	l29
	opt asmopt_on

	line	45
	
l34:	
	line	46
	
l29:	
	line	47
;LE4-7.c: 46: }
;LE4-7.c: 47: if(RB2 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	btfss	(50/8),(50)&7	;volatile
	goto	u71
	goto	u70
u71:
	goto	l556
u70:
	line	48
	
l576:	
;LE4-7.c: 48: if(duty == 5)
	movlw	05h
	xorwf	(main@duty),w
	iorwf	(main@duty+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l580
u80:
	line	49
	
l578:	
;LE4-7.c: 49: duty = 1;
	movlw	low(01h)
	movwf	(main@duty)
	movlw	high(01h)
	movwf	((main@duty))+1
	goto	l39
	line	50
	
l38:	
	line	51
	
l580:	
;LE4-7.c: 50: else
;LE4-7.c: 51: duty++;
	movlw	low(01h)
	addwf	(main@duty),f
	skipnc
	incf	(main@duty+1),f
	movlw	high(01h)
	addwf	(main@duty+1),f
	
l39:	
	line	53
;LE4-7.c: 53: if(freq == 1) {
	movlw	01h
	xorwf	(main@freq),w
	iorwf	(main@freq+1),w
	skipz
	goto	u91
	goto	u90
u91:
	goto	l598
u90:
	goto	l596
	line	54
	
l582:	
;LE4-7.c: 54: switch(duty) {
	goto	l596
	line	55
;LE4-7.c: 55: case 1: CCPR1L = 0x71; CCP1CON = 0x0C; break;
	
l42:	
	
l584:	
	movlw	(071h)
	movwf	(21)	;volatile
	movlw	(0Ch)
	movwf	(23)	;volatile
	goto	l556
	line	56
;LE4-7.c: 56: case 2: CCPR1L = 0x1A; CCP1CON = 0x2C; break;
	
l44:	
	
l586:	
	movlw	(01Ah)
	movwf	(21)	;volatile
	movlw	(02Ch)
	movwf	(23)	;volatile
	goto	l556
	line	57
;LE4-7.c: 57: case 3: CCPR1L = 0x35; CCP1CON = 0x0C; break;
	
l45:	
	
l588:	
	movlw	(035h)
	movwf	(21)	;volatile
	movlw	(0Ch)
	movwf	(23)	;volatile
	goto	l556
	line	58
;LE4-7.c: 58: case 4: CCPR1L = 0x4F; CCP1CON = 0x2C; break;
	
l46:	
	
l590:	
	movlw	(04Fh)
	movwf	(21)	;volatile
	movlw	(02Ch)
	movwf	(23)	;volatile
	goto	l556
	line	59
;LE4-7.c: 59: case 5: CCPR1L = 0x31; CCP1CON = 0x2C; break;
	
l47:	
	
l592:	
	movlw	(031h)
	movwf	(21)	;volatile
	movlw	(02Ch)
	movwf	(23)	;volatile
	goto	l556
	line	60
	
l594:	
;LE4-7.c: 60: }
	goto	l556
	line	54
	
l41:	
	
l596:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@duty+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l780
	goto	l556
	opt asmopt_on
	
l780:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           26    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (main@duty),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l584
	xorlw	2^1	; case 2
	skipnz
	goto	l586
	xorlw	3^2	; case 3
	skipnz
	goto	l588
	xorlw	4^3	; case 4
	skipnz
	goto	l590
	xorlw	5^4	; case 5
	skipnz
	goto	l592
	goto	l556
	opt asmopt_on

	line	60
	
l43:	
	line	61
;LE4-7.c: 61: }
	goto	l556
	line	62
	
l40:	
	
l598:	
;LE4-7.c: 62: else if (freq == 2) {
	movlw	02h
	xorwf	(main@freq),w
	iorwf	(main@freq+1),w
	skipz
	goto	u101
	goto	u100
u101:
	goto	l616
u100:
	goto	l614
	line	63
	
l600:	
;LE4-7.c: 63: switch(duty) {
	goto	l614
	line	64
;LE4-7.c: 64: case 1: CCPR1L = 0x3E; CCP1CON = 0x2C; break;
	
l51:	
	
l602:	
	movlw	(03Eh)
	movwf	(21)	;volatile
	movlw	(02Ch)
	movwf	(23)	;volatile
	goto	l556
	line	65
;LE4-7.c: 65: case 2: CCPR1L = 0x9C; CCP1CON = 0x1C; break;
	
l53:	
	
l604:	
	movlw	(09Ch)
	movwf	(21)	;volatile
	movlw	(01Ch)
	movwf	(23)	;volatile
	goto	l556
	line	66
;LE4-7.c: 66: case 3: CCPR1L = 0x38; CCP1CON = 0x2C; break;
	
l54:	
	
l606:	
	movlw	(038h)
	movwf	(21)	;volatile
	movlw	(02Ch)
	movwf	(23)	;volatile
	goto	l556
	line	67
;LE4-7.c: 67: case 4: CCPR1L = 0xD4; CCP1CON = 0x3C; break;
	
l55:	
	
l608:	
	movlw	(0D4h)
	movwf	(21)	;volatile
	movlw	(03Ch)
	movwf	(23)	;volatile
	goto	l556
	line	68
;LE4-7.c: 68: case 5: CCPR1L = 0x51; CCP1CON = 0x3C; break;
	
l56:	
	
l610:	
	movlw	(051h)
	movwf	(21)	;volatile
	movlw	(03Ch)
	movwf	(23)	;volatile
	goto	l556
	line	69
	
l612:	
;LE4-7.c: 69: }
	goto	l556
	line	63
	
l50:	
	
l614:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@duty+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l782
	goto	l556
	opt asmopt_on
	
l782:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           26    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (main@duty),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l602
	xorlw	2^1	; case 2
	skipnz
	goto	l604
	xorlw	3^2	; case 3
	skipnz
	goto	l606
	xorlw	4^3	; case 4
	skipnz
	goto	l608
	xorlw	5^4	; case 5
	skipnz
	goto	l610
	goto	l556
	opt asmopt_on

	line	69
	
l52:	
	line	70
;LE4-7.c: 70: }
	goto	l556
	line	71
	
l49:	
	
l616:	
;LE4-7.c: 71: else if (freq == 3) {
	movlw	03h
	xorwf	(main@freq),w
	iorwf	(main@freq+1),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l556
u110:
	goto	l632
	line	72
	
l618:	
;LE4-7.c: 72: switch(duty) {
	goto	l632
	line	73
;LE4-7.c: 73: case 1: CCPR1L = 0x6; CCP1CON = 0x1C; break;
	
l60:	
	
l620:	
	movlw	(06h)
	movwf	(21)	;volatile
	movlw	(01Ch)
	movwf	(23)	;volatile
	goto	l556
	line	74
;LE4-7.c: 74: case 2: CCPR1L = 0xF; CCP1CON = 0x3C; break;
	
l62:	
	
l622:	
	movlw	(0Fh)
	movwf	(21)	;volatile
	movlw	(03Ch)
	movwf	(23)	;volatile
	goto	l556
	line	75
;LE4-7.c: 75: case 3: CCPR1L = 0x1F; CCP1CON = 0x1C; break;
	
l63:	
	
l624:	
	movlw	(01Fh)
	movwf	(21)	;volatile
	movlw	(01Ch)
	movwf	(23)	;volatile
	goto	l556
	line	76
;LE4-7.c: 76: case 4: CCPR1L = 0x2F; CCP1CON = 0x0C; break;
	
l64:	
	
l626:	
	movlw	(02Fh)
	movwf	(21)	;volatile
	movlw	(0Ch)
	movwf	(23)	;volatile
	goto	l556
	line	77
;LE4-7.c: 77: case 5: CCPR1L = 0x3B; CCP1CON = 0x2C; break;
	
l65:	
	
l628:	
	movlw	(03Bh)
	movwf	(21)	;volatile
	movlw	(02Ch)
	movwf	(23)	;volatile
	goto	l556
	line	78
	
l630:	
;LE4-7.c: 78: }
	goto	l556
	line	72
	
l59:	
	
l632:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	movf (main@duty+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l784
	goto	l556
	opt asmopt_on
	
l784:	
; Switch size 1, requested type "space"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
; direct_byte           26    11 (fixed)
; jumptable            263     9 (fixed)
;	Chosen strategy is simple_byte

	movf (main@duty),w
	opt asmopt_off
	xorlw	1^0	; case 1
	skipnz
	goto	l620
	xorlw	2^1	; case 2
	skipnz
	goto	l622
	xorlw	3^2	; case 3
	skipnz
	goto	l624
	xorlw	4^3	; case 4
	skipnz
	goto	l626
	xorlw	5^4	; case 5
	skipnz
	goto	l628
	goto	l556
	opt asmopt_on

	line	78
	
l61:	
	goto	l556
	line	79
	
l58:	
	goto	l556
	line	80
	
l57:	
	goto	l556
	
l48:	
	goto	l556
	
l37:	
	line	81
;LE4-7.c: 79: }
;LE4-7.c: 80: }
;LE4-7.c: 81: }
	goto	l556
	
l66:	
	line	82
	
l67:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 13 in file "D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] int 
;;  i               2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	13
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-7\LE4-7.c"
	line	13
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 7
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
	line	15
	
l524:	
;LE4-7.c: 14: int i, j;
;LE4-7.c: 15: for (i=cnt; i!=0; i--) {
	movf	(delay@cnt+1),w
	clrf	(delay@i+1)
	addwf	(delay@i+1)
	movf	(delay@cnt),w
	clrf	(delay@i)
	addwf	(delay@i)

	
l526:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l530
u10:
	goto	l25
	
l528:	
	goto	l25
	
l21:	
	line	16
	
l530:	
;LE4-7.c: 16: for (j=0; j<1000; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l532:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(03E8h)
	subwf	(delay@j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l536
u20:
	goto	l540
	
l534:	
	goto	l540
	
l23:	
	
l536:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l538:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(03E8h)
	subwf	(delay@j),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l536
u30:
	goto	l540
	
l24:	
	line	15
	
l540:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l542:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l530
u40:
	goto	l25
	
l22:	
	line	18
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
