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
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_VAL
	global	_currentCount
	global	_count_flag
	global	_myINTF
	global	_myTMR0IF
	global	_PORTA
_PORTA	set	0x5
	global	_PORTC
_PORTC	set	0x7
	global	_PORTD
_PORTD	set	0x8
	global	_GIE
_GIE	set	0x5F
	global	_INTF
_INTF	set	0x59
	global	_RB0
_RB0	set	0x30
	global	_T0IE
_T0IE	set	0x5D
	global	_T0IF
_T0IF	set	0x5A
	global	_ADCON1
_ADCON1	set	0x9F
	global	_OPTION_REG
_OPTION_REG	set	0x81
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
psect	text0,local,class=CODE,delta=2,merge=1
; #config settings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
	line	2761
global __ptext0
__ptext0:	;psect for function _ISR
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
	file	"CPE3201-LE3-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bitbssCOMMON,class=COMMON,bit,space=1,noexec
global __pbitbssCOMMON
__pbitbssCOMMON:
_count_flag:
       ds      1

_myINTF:
       ds      1

_myTMR0IF:
       ds      1

psect	bssCOMMON,class=COMMON,space=1,noexec
global __pbssCOMMON
__pbssCOMMON:
_VAL:
       ds      1

_currentCount:
       ds      1

	line	#
; Clear objects allocated to BITCOMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbitbssCOMMON/8)+0)&07Fh
; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	5
??_delay:	; 0 bytes @ 0x5
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
?_delay:	; 0 bytes @ 0x0
	global	delay@num
delay@num:	; 2 bytes @ 0x0
	ds	2
	global	delay@flags
delay@flags:	; 2 bytes @ 0x2
	ds	2
??_main:	; 0 bytes @ 0x4
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      6       9
;!    BANK0            80      5       5
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
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_delay
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0     133
;!                                              4 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                5     3      2     133
;!                                              5 COMMON     1     1      0
;!                                              0 BANK0      4     2      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 1
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (2) _ISR                                                  5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       1       0        7.1%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      6       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       E       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      5       5       5        6.3%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       E      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 69 in file "D:\JinBus\CpE 3201\Practical Activity #3\LE3-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\JinBus\CpE 3201\Practical Activity #3\LE3-3.c"
	line	69
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\JinBus\CpE 3201\Practical Activity #3\LE3-3.c"
	line	69
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	70
	
l724:	
;LE3-3.c: 70: ADCON1 = 0x07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	71
	
l726:	
;LE3-3.c: 71: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	72
	
l728:	
;LE3-3.c: 72: TRISB = 0xFF;
	movlw	(0FFh)
	movwf	(134)^080h	;volatile
	line	73
;LE3-3.c: 73: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	74
	
l730:	
;LE3-3.c: 74: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	76
	
l732:	
;LE3-3.c: 76: OPTION_REG = 0xC4;
	movlw	(0C4h)
	movwf	(129)^080h	;volatile
	line	80
	
l734:	
;LE3-3.c: 80: T0IE = 1;
	bsf	(93/8),(93)&7	;volatile
	line	81
	
l736:	
;LE3-3.c: 81: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	82
	
l738:	
;LE3-3.c: 82: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	84
;LE3-3.c: 84: PORTA = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	85
;LE3-3.c: 85: PORTC = 0x00;
	clrf	(7)	;volatile
	goto	l740
	line	87
;LE3-3.c: 87: while(1) {
	
l65:	
	line	88
	
l740:	
;LE3-3.c: 88: if(currentCount == 0x09) {
	movf	(_currentCount),w
	xorlw	09h
	skipz
	goto	u401
	goto	u400
u401:
	goto	l746
u400:
	line	89
	
l742:	
;LE3-3.c: 89: PORTC = 0x09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	90
	
l744:	
;LE3-3.c: 90: currentCount = 0;
	clrf	(_currentCount)
	line	91
;LE3-3.c: 91: }
	goto	l784
	line	92
	
l66:	
	line	93
	
l746:	
;LE3-3.c: 92: else {
;LE3-3.c: 93: if(currentCount == 0x00)
	movf	(_currentCount),f
	skipz
	goto	u411
	goto	u410
u411:
	goto	l750
u410:
	line	94
	
l748:	
;LE3-3.c: 94: PORTC = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l782
	line	95
	
l68:	
	
l750:	
;LE3-3.c: 95: else if(currentCount == 0x01)
	movf	(_currentCount),w
	xorlw	01h
	skipz
	goto	u421
	goto	u420
u421:
	goto	l754
u420:
	line	96
	
l752:	
;LE3-3.c: 96: PORTC = 0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l782
	line	97
	
l70:	
	
l754:	
;LE3-3.c: 97: else if(currentCount == 0x02)
	movf	(_currentCount),w
	xorlw	02h
	skipz
	goto	u431
	goto	u430
u431:
	goto	l758
u430:
	line	98
	
l756:	
;LE3-3.c: 98: PORTC = 0x02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l782
	line	99
	
l72:	
	
l758:	
;LE3-3.c: 99: else if(currentCount == 0x03)
	movf	(_currentCount),w
	xorlw	03h
	skipz
	goto	u441
	goto	u440
u441:
	goto	l762
u440:
	line	100
	
l760:	
;LE3-3.c: 100: PORTC = 0x03;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l782
	line	101
	
l74:	
	
l762:	
;LE3-3.c: 101: else if(currentCount == 0x04)
	movf	(_currentCount),w
	xorlw	04h
	skipz
	goto	u451
	goto	u450
u451:
	goto	l766
u450:
	line	102
	
l764:	
;LE3-3.c: 102: PORTC = 0x04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l782
	line	103
	
l76:	
	
l766:	
;LE3-3.c: 103: else if(currentCount == 0x05)
	movf	(_currentCount),w
	xorlw	05h
	skipz
	goto	u461
	goto	u460
u461:
	goto	l770
u460:
	line	104
	
l768:	
;LE3-3.c: 104: PORTC = 0x05;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l782
	line	105
	
l78:	
	
l770:	
;LE3-3.c: 105: else if(currentCount == 0x06)
	movf	(_currentCount),w
	xorlw	06h
	skipz
	goto	u471
	goto	u470
u471:
	goto	l774
u470:
	line	106
	
l772:	
;LE3-3.c: 106: PORTC = 0x06;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l782
	line	107
	
l80:	
	
l774:	
;LE3-3.c: 107: else if(currentCount == 0x07)
	movf	(_currentCount),w
	xorlw	07h
	skipz
	goto	u481
	goto	u480
u481:
	goto	l778
u480:
	line	108
	
l776:	
;LE3-3.c: 108: PORTC = 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l782
	line	109
	
l82:	
	
l778:	
;LE3-3.c: 109: else if(currentCount == 0x08)
	movf	(_currentCount),w
	xorlw	08h
	skipz
	goto	u491
	goto	u490
u491:
	goto	l782
u490:
	line	110
	
l780:	
;LE3-3.c: 110: PORTC = 0x08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l782
	
l84:	
	goto	l782
	line	111
	
l83:	
	goto	l782
	
l81:	
	goto	l782
	
l79:	
	goto	l782
	
l77:	
	goto	l782
	
l75:	
	goto	l782
	
l73:	
	goto	l782
	
l71:	
	goto	l782
	
l69:	
	
l782:	
;LE3-3.c: 111: currentCount++;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_currentCount),f
	goto	l784
	line	112
	
l67:	
	line	113
	
l784:	
;LE3-3.c: 112: }
;LE3-3.c: 113: delay(10);
	movlw	low(0Ah)
	movwf	(delay@num)
	movlw	high(0Ah)
	movwf	((delay@num))+1
	fcall	_delay
	goto	l740
	line	114
	
l85:	
	line	87
	goto	l740
	
l86:	
	line	115
	
l87:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 19 in file "D:\JinBus\CpE 3201\Practical Activity #3\LE3-3.c"
;; Parameters:    Size  Location     Type
;;  num             2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  flags           2    2[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       4       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	19
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"D:\JinBus\CpE 3201\Practical Activity #3\LE3-3.c"
	line	19
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2]
	line	20
	
l718:	
;LE3-3.c: 20: int flags = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(delay@flags)
	clrf	(delay@flags+1)
	line	21
;LE3-3.c: 21: while (flags < num) {
	goto	l41
	
l42:	
	line	22
;LE3-3.c: 22: if(count_flag) {
	btfss	(_count_flag/8),(_count_flag)&7
	goto	u381
	goto	u380
u381:
	goto	l41
u380:
	line	23
	
l720:	
;LE3-3.c: 23: count_flag = 0;
	bcf	(_count_flag/8),(_count_flag)&7
	line	24
	
l722:	
;LE3-3.c: 24: flags++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@flags),f
	skipnc
	incf	(delay@flags+1),f
	movlw	high(01h)
	addwf	(delay@flags+1),f
	goto	l41
	line	25
	
l43:	
	line	26
	
l41:	
	line	21
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@flags+1),w
	xorlw	80h
	movwf	(??_delay+0)+0
	movf	(delay@num+1),w
	xorlw	80h
	subwf	(??_delay+0)+0,w
	skipz
	goto	u395
	movf	(delay@num),w
	subwf	(delay@flags),w
u395:

	skipc
	goto	u391
	goto	u390
u391:
	goto	l42
u390:
	goto	l45
	
l44:	
	line	27
	
l45:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 29 in file "D:\JinBus\CpE 3201\Practical Activity #3\LE3-3.c"
;; Parameters:    Size  Location     Type
;;		None
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	29
global __ptext2
__ptext2:	;psect for function _ISR
psect	text2
	file	"D:\JinBus\CpE 3201\Practical Activity #3\LE3-3.c"
	line	29
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 6
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text2
	line	30
	
i1l550:	
;LE3-3.c: 30: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	31
;LE3-3.c: 31: if (INTF) {
	btfss	(89/8),(89)&7	;volatile
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l48
u3_20:
	line	32
	
i1l552:	
;LE3-3.c: 32: INTF = 0;
	bcf	(89/8),(89)&7	;volatile
	line	35
	
i1l554:	
;LE3-3.c: 35: myINTF ^= 1;
	movlw	1<<((_myINTF)&7)
	xorwf	((_myINTF)/8),f
	line	36
;LE3-3.c: 36: }
	goto	i1l586
	line	37
	
i1l48:	
;LE3-3.c: 37: else if(T0IF) {
	btfss	(90/8),(90)&7	;volatile
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l586
u4_20:
	line	38
	
i1l556:	
;LE3-3.c: 38: T0IF = 0;
	bcf	(90/8),(90)&7	;volatile
	line	40
;LE3-3.c: 40: if(RB0 == 1) {
	btfss	(48/8),(48)&7	;volatile
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l584
u5_20:
	line	41
	
i1l558:	
;LE3-3.c: 41: VAL = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_VAL)
	line	42
	
i1l560:	
;LE3-3.c: 42: if(VAL == 0x00)
	movf	(_VAL),f
	skipz
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l564
u6_20:
	line	43
	
i1l562:	
;LE3-3.c: 43: currentCount = 0x01;
	clrf	(_currentCount)
	incf	(_currentCount),f
	goto	i1l564
	
i1l52:	
	line	44
	
i1l564:	
;LE3-3.c: 44: if(VAL == 0x01)
	movf	(_VAL),w
	xorlw	01h
	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l53
u7_20:
	line	45
	
i1l566:	
;LE3-3.c: 45: currentCount = 0x02;
	movlw	(02h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_currentCount)
	
i1l53:	
	line	46
;LE3-3.c: 46: if(VAL == 0x02)
	movf	(_VAL),w
	xorlw	02h
	skipz
	goto	u8_21
	goto	u8_20
u8_21:
	goto	i1l54
u8_20:
	line	47
	
i1l568:	
;LE3-3.c: 47: currentCount = 0x03;
	movlw	(03h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_currentCount)
	
i1l54:	
	line	48
;LE3-3.c: 48: if(VAL == 0x04)
	movf	(_VAL),w
	xorlw	04h
	skipz
	goto	u9_21
	goto	u9_20
u9_21:
	goto	i1l55
u9_20:
	line	49
	
i1l570:	
;LE3-3.c: 49: currentCount = 0x04;
	movlw	(04h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_currentCount)
	
i1l55:	
	line	50
;LE3-3.c: 50: if(VAL == 0x05)
	movf	(_VAL),w
	xorlw	05h
	skipz
	goto	u10_21
	goto	u10_20
u10_21:
	goto	i1l56
u10_20:
	line	51
	
i1l572:	
;LE3-3.c: 51: currentCount = 0x05;
	movlw	(05h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_currentCount)
	
i1l56:	
	line	52
;LE3-3.c: 52: if(VAL == 0x06)
	movf	(_VAL),w
	xorlw	06h
	skipz
	goto	u11_21
	goto	u11_20
u11_21:
	goto	i1l57
u11_20:
	line	53
	
i1l574:	
;LE3-3.c: 53: currentCount = 0x06;
	movlw	(06h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_currentCount)
	
i1l57:	
	line	54
;LE3-3.c: 54: if(VAL == 0x08)
	movf	(_VAL),w
	xorlw	08h
	skipz
	goto	u12_21
	goto	u12_20
u12_21:
	goto	i1l58
u12_20:
	line	55
	
i1l576:	
;LE3-3.c: 55: currentCount = 0x07;
	movlw	(07h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_currentCount)
	
i1l58:	
	line	56
;LE3-3.c: 56: if(VAL == 0x09)
	movf	(_VAL),w
	xorlw	09h
	skipz
	goto	u13_21
	goto	u13_20
u13_21:
	goto	i1l59
u13_20:
	line	57
	
i1l578:	
;LE3-3.c: 57: currentCount = 0x08;
	movlw	(08h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_currentCount)
	
i1l59:	
	line	58
;LE3-3.c: 58: if(VAL == 0x0A)
	movf	(_VAL),w
	xorlw	0Ah
	skipz
	goto	u14_21
	goto	u14_20
u14_21:
	goto	i1l60
u14_20:
	line	59
	
i1l580:	
;LE3-3.c: 59: currentCount = 0x09;
	movlw	(09h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_currentCount)
	
i1l60:	
	line	60
;LE3-3.c: 60: if(VAL == 0x0D)
	movf	(_VAL),w
	xorlw	0Dh
	skipz
	goto	u15_21
	goto	u15_20
u15_21:
	goto	i1l584
u15_20:
	line	61
	
i1l582:	
;LE3-3.c: 61: currentCount = 0x00;
	clrf	(_currentCount)
	goto	i1l584
	
i1l61:	
	goto	i1l584
	line	62
	
i1l51:	
	line	63
	
i1l584:	
;LE3-3.c: 62: }
;LE3-3.c: 63: count_flag = 1;
	bsf	(_count_flag/8),(_count_flag)&7
	goto	i1l586
	line	65
	
i1l50:	
	goto	i1l586
	line	66
	
i1l49:	
	
i1l586:	
;LE3-3.c: 65: }
;LE3-3.c: 66: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	67
	
i1l62:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
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
