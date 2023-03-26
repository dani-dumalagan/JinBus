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
	global	_PORTB
_PORTB	set	0x6
	global	_TXREG
_TXREG	set	0x19
	global	_RB4
_RB4	set	0x34
	global	_SPEN
_SPEN	set	0xC7
	global	_SPBRG
_SPBRG	set	0x99
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TRMT
_TRMT	set	0x4C1
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
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
	file	"CpE 3201-LE6-TX.as"
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
	global	delay@ms_Count
delay@ms_Count:	; 2 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	ds	2
??_main:	; 0 bytes @ 0x6
	ds	1
	global	main@x
main@x:	; 2 bytes @ 0x7
	ds	2
	global	main@VAL
main@VAL:	; 1 bytes @ 0x9
	ds	1
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0     298
;!                                              6 COMMON     4     4      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                6     4      2     103
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
;;		line 25 in file "D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-4\dumalaganDa_LE6-4-TX.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    7[COMMON] int 
;;  VAL             1    9[COMMON] unsigned char 
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
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
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
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-4\dumalaganDa_LE6-4-TX.c"
	line	25
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-4\dumalaganDa_LE6-4-TX.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	26
	
l518:	
;dumalaganDa_LE6-4-TX.c: 26: SPBRG = 0x19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	28
	
l520:	
;dumalaganDa_LE6-4-TX.c: 28: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	29
	
l522:	
;dumalaganDa_LE6-4-TX.c: 29: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	30
	
l524:	
;dumalaganDa_LE6-4-TX.c: 30: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	31
	
l526:	
;dumalaganDa_LE6-4-TX.c: 31: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	32
	
l528:	
;dumalaganDa_LE6-4-TX.c: 32: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	34
;dumalaganDa_LE6-4-TX.c: 34: PORTB = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l530
	line	38
;dumalaganDa_LE6-4-TX.c: 35: unsigned char VAL;
;dumalaganDa_LE6-4-TX.c: 36: int x;
;dumalaganDa_LE6-4-TX.c: 38: for(;;) {
	
l31:	
	line	39
	
l530:	
;dumalaganDa_LE6-4-TX.c: 39: delay(15);
	movlw	low(0Fh)
	movwf	(delay@ms_Count)
	movlw	high(0Fh)
	movwf	((delay@ms_Count))+1
	fcall	_delay
	line	40
	
l532:	
;dumalaganDa_LE6-4-TX.c: 40: if(RB4 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7	;volatile
	goto	u41
	goto	u40
u41:
	goto	l530
u40:
	line	41
	
l534:	
;dumalaganDa_LE6-4-TX.c: 41: VAL = PORTB & 0x0F;
	movf	(6),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@VAL)
	line	42
	
l536:	
;dumalaganDa_LE6-4-TX.c: 42: if(VAL == 0x00)
	movf	(main@VAL),f
	skipz
	goto	u51
	goto	u50
u51:
	goto	l33
u50:
	line	43
	
l538:	
;dumalaganDa_LE6-4-TX.c: 43: x = 0x01;
	movlw	low(01h)
	movwf	(main@x)
	movlw	high(01h)
	movwf	((main@x))+1
	
l33:	
	line	44
;dumalaganDa_LE6-4-TX.c: 44: if(VAL == 0x01)
	movf	(main@VAL),w
	xorlw	01h
	skipz
	goto	u61
	goto	u60
u61:
	goto	l34
u60:
	line	45
	
l540:	
;dumalaganDa_LE6-4-TX.c: 45: x = 0x02;
	movlw	low(02h)
	movwf	(main@x)
	movlw	high(02h)
	movwf	((main@x))+1
	
l34:	
	line	46
;dumalaganDa_LE6-4-TX.c: 46: if(VAL == 0x02)
	movf	(main@VAL),w
	xorlw	02h
	skipz
	goto	u71
	goto	u70
u71:
	goto	l35
u70:
	line	47
	
l542:	
;dumalaganDa_LE6-4-TX.c: 47: x = 0x03;
	movlw	low(03h)
	movwf	(main@x)
	movlw	high(03h)
	movwf	((main@x))+1
	
l35:	
	line	48
;dumalaganDa_LE6-4-TX.c: 48: if(VAL == 0x04)
	movf	(main@VAL),w
	xorlw	04h
	skipz
	goto	u81
	goto	u80
u81:
	goto	l36
u80:
	line	49
	
l544:	
;dumalaganDa_LE6-4-TX.c: 49: x = 0x04;
	movlw	low(04h)
	movwf	(main@x)
	movlw	high(04h)
	movwf	((main@x))+1
	
l36:	
	line	50
;dumalaganDa_LE6-4-TX.c: 50: if(VAL == 0x05)
	movf	(main@VAL),w
	xorlw	05h
	skipz
	goto	u91
	goto	u90
u91:
	goto	l37
u90:
	line	51
	
l546:	
;dumalaganDa_LE6-4-TX.c: 51: x = 0x05;
	movlw	low(05h)
	movwf	(main@x)
	movlw	high(05h)
	movwf	((main@x))+1
	
l37:	
	line	52
;dumalaganDa_LE6-4-TX.c: 52: if(VAL == 0x06)
	movf	(main@VAL),w
	xorlw	06h
	skipz
	goto	u101
	goto	u100
u101:
	goto	l38
u100:
	line	53
	
l548:	
;dumalaganDa_LE6-4-TX.c: 53: x = 0x06;
	movlw	low(06h)
	movwf	(main@x)
	movlw	high(06h)
	movwf	((main@x))+1
	
l38:	
	line	54
;dumalaganDa_LE6-4-TX.c: 54: if(VAL == 0x08)
	movf	(main@VAL),w
	xorlw	08h
	skipz
	goto	u111
	goto	u110
u111:
	goto	l39
u110:
	line	55
	
l550:	
;dumalaganDa_LE6-4-TX.c: 55: x = 0x07;
	movlw	low(07h)
	movwf	(main@x)
	movlw	high(07h)
	movwf	((main@x))+1
	
l39:	
	line	56
;dumalaganDa_LE6-4-TX.c: 56: if(VAL == 0x09)
	movf	(main@VAL),w
	xorlw	09h
	skipz
	goto	u121
	goto	u120
u121:
	goto	l40
u120:
	line	57
	
l552:	
;dumalaganDa_LE6-4-TX.c: 57: x = 0x08;
	movlw	low(08h)
	movwf	(main@x)
	movlw	high(08h)
	movwf	((main@x))+1
	
l40:	
	line	58
;dumalaganDa_LE6-4-TX.c: 58: if(VAL == 0x0A)
	movf	(main@VAL),w
	xorlw	0Ah
	skipz
	goto	u131
	goto	u130
u131:
	goto	l41
u130:
	line	59
	
l554:	
;dumalaganDa_LE6-4-TX.c: 59: x = 0x09;
	movlw	low(09h)
	movwf	(main@x)
	movlw	high(09h)
	movwf	((main@x))+1
	
l41:	
	line	60
;dumalaganDa_LE6-4-TX.c: 60: if(VAL == 0x0D || VAL == 0x0C || VAL == 0x0E)
	movf	(main@VAL),w
	xorlw	0Dh
	skipnz
	goto	u141
	goto	u140
u141:
	goto	l560
u140:
	
l556:	
	movf	(main@VAL),w
	xorlw	0Ch
	skipnz
	goto	u151
	goto	u150
u151:
	goto	l560
u150:
	
l558:	
	movf	(main@VAL),w
	xorlw	0Eh
	skipz
	goto	u161
	goto	u160
u161:
	goto	l562
u160:
	goto	l560
	
l44:	
	line	61
	
l560:	
;dumalaganDa_LE6-4-TX.c: 61: x = 0x00;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l562
	
l42:	
	line	62
	
l562:	
;dumalaganDa_LE6-4-TX.c: 62: x += 48;
	movlw	low(030h)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(030h)
	addwf	(main@x+1),f
	line	63
;dumalaganDa_LE6-4-TX.c: 63: while(!TRMT);
	goto	l45
	
l46:	
	
l45:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u171
	goto	u170
u171:
	goto	l45
u170:
	goto	l564
	
l47:	
	line	64
	
l564:	
;dumalaganDa_LE6-4-TX.c: 64: TXREG = (char)x;
	movf	(main@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	goto	l530
	line	65
	
l32:	
	line	66
;dumalaganDa_LE6-4-TX.c: 65: }
;dumalaganDa_LE6-4-TX.c: 66: }
	goto	l530
	
l48:	
	line	67
	
l49:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 18 in file "D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-4\dumalaganDa_LE6-4-TX.c"
;; Parameters:    Size  Location     Type
;;  ms_Count        2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] unsigned int 
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
	line	18
global __ptext1
__ptext1:	;psect for function _delay
psect	text1
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-4\dumalaganDa_LE6-4-TX.c"
	line	18
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 7
; Regs used in _delay: [wreg+status,2]
	line	20
	
l506:	
;dumalaganDa_LE6-4-TX.c: 19: unsigned int i,j;
;dumalaganDa_LE6-4-TX.c: 20: for(i=0;i<ms_Count;i++) {
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l23
	
l24:	
	line	21
	
l508:	
;dumalaganDa_LE6-4-TX.c: 21: for(j=0;j<1000;j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l510:	
	movlw	high(03E8h)
	subwf	(delay@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@j),w
	skipc
	goto	u11
	goto	u10
u11:
	goto	l514
u10:
	goto	l516
	
l512:	
	goto	l516
	
l25:	
	
l514:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	movlw	high(03E8h)
	subwf	(delay@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@j),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l514
u20:
	goto	l516
	
l26:	
	line	20
	
l516:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l23:	
	movf	(delay@ms_Count+1),w
	subwf	(delay@i+1),w
	skipz
	goto	u35
	movf	(delay@ms_Count),w
	subwf	(delay@i),w
u35:
	skipc
	goto	u31
	goto	u30
u31:
	goto	l508
u30:
	goto	l28
	
l27:	
	line	23
	
l28:	
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
