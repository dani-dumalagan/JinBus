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
	FNCALL	_main,_printString
	FNCALL	_printString,_strlen
	FNROOT	_main
	global	printString@F1251
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
	line	73

;initializer for printString@F1251
	retlw	059h
	retlw	06Fh
	retlw	075h
	retlw	020h
	retlw	070h
	retlw	072h
	retlw	065h
	retlw	073h
	retlw	073h
	retlw	065h
	retlw	064h
	retlw	020h
	retlw	0
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
; #config settings
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
	file	"CpE 3201-LE6-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
	line	73
printString@F1251:
       ds      13

	file	"CpE 3201-LE6-3.as"
	line	#
global btemp
psect inittext,class=CODE,delta=2
global init_fetch0,btemp
;	Called with low address in FSR and high address in W
init_fetch0:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram0
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram0:
	fcall init_fetch0
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram0
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+13)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_printString:	; 0 bytes @ 0x0
?_delay:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	delay@ms_Count
delay@ms_Count:	; 2 bytes @ 0x0
	ds	2
??_strlen:	; 0 bytes @ 0x2
??_delay:	; 0 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x4
	ds	2
	global	strlen@s
strlen@s:	; 1 bytes @ 0x6
	ds	1
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x7
	ds	1
??_printString:	; 0 bytes @ 0x8
	ds	4
??_main:	; 0 bytes @ 0xC
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	printString@msg
printString@msg:	; 13 bytes @ 0x0
	ds	13
	global	printString@keyPress
printString@keyPress:	; 1 bytes @ 0xD
	ds	1
	global	printString@i
printString@i:	; 2 bytes @ 0xE
	ds	2
	global	main@x
main@x:	; 2 bytes @ 0x10
	ds	2
	global	main@VAL
main@VAL:	; 1 bytes @ 0x12
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        13
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     13      13
;!    BANK0            80     19      32
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 13
;!		 -> printString@msg(BANK0[13]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 13
;!		 -> printString@msg(BANK0[13]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_printString
;!    _printString->_strlen
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_printString
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
;! (0) _main                                                 4     4      0     677
;!                                             12 COMMON     1     1      0
;!                                             16 BANK0      3     3      0
;!                              _delay
;!                        _printString
;! ---------------------------------------------------------------------------------
;! (1) _printString                                         20    20      0     232
;!                                              8 COMMON     4     4      0
;!                                              0 BANK0     16    16      0
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (2) _strlen                                               8     6      2     117
;!                                              0 COMMON     8     6      2
;! ---------------------------------------------------------------------------------
;! (1) _delay                                                6     4      2     145
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay
;!   _printString
;!     _strlen
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     13      20       5       40.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      D       D       1       92.9%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2D      12        0.0%
;!ABS                  0      0      2D       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2   16[BANK0 ] int 
;;  VAL             1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_printString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
	line	25
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	26
	
l657:	
;dumalaganDa_LE6-3.c: 26: SPBRG = 0x19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	28
	
l659:	
;dumalaganDa_LE6-3.c: 28: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	29
	
l661:	
;dumalaganDa_LE6-3.c: 29: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	30
	
l663:	
;dumalaganDa_LE6-3.c: 30: TX9 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	31
	
l665:	
;dumalaganDa_LE6-3.c: 31: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	32
	
l667:	
;dumalaganDa_LE6-3.c: 32: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	34
;dumalaganDa_LE6-3.c: 34: PORTB = 0xFF;
	movlw	(0FFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	l669
	line	38
;dumalaganDa_LE6-3.c: 35: unsigned char VAL;
;dumalaganDa_LE6-3.c: 36: int x;
;dumalaganDa_LE6-3.c: 38: for(;;) {
	
l35:	
	line	39
	
l669:	
;dumalaganDa_LE6-3.c: 39: delay(15);
	movlw	low(0Fh)
	movwf	(delay@ms_Count)
	movlw	high(0Fh)
	movwf	((delay@ms_Count))+1
	fcall	_delay
	line	40
	
l671:	
;dumalaganDa_LE6-3.c: 40: if(RB4 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7	;volatile
	goto	u341
	goto	u340
u341:
	goto	l669
u340:
	line	41
	
l673:	
;dumalaganDa_LE6-3.c: 41: VAL = PORTB & 0x0F;
	movf	(6),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@VAL)
	line	42
	
l675:	
;dumalaganDa_LE6-3.c: 42: if(VAL == 0x00)
	movf	(main@VAL),f
	skipz
	goto	u351
	goto	u350
u351:
	goto	l37
u350:
	line	43
	
l677:	
;dumalaganDa_LE6-3.c: 43: x = 0x01;
	movlw	low(01h)
	movwf	(main@x)
	movlw	high(01h)
	movwf	((main@x))+1
	
l37:	
	line	44
;dumalaganDa_LE6-3.c: 44: if(VAL == 0x01)
	movf	(main@VAL),w
	xorlw	01h
	skipz
	goto	u361
	goto	u360
u361:
	goto	l38
u360:
	line	45
	
l679:	
;dumalaganDa_LE6-3.c: 45: x = 0x02;
	movlw	low(02h)
	movwf	(main@x)
	movlw	high(02h)
	movwf	((main@x))+1
	
l38:	
	line	46
;dumalaganDa_LE6-3.c: 46: if(VAL == 0x02)
	movf	(main@VAL),w
	xorlw	02h
	skipz
	goto	u371
	goto	u370
u371:
	goto	l39
u370:
	line	47
	
l681:	
;dumalaganDa_LE6-3.c: 47: x = 0x03;
	movlw	low(03h)
	movwf	(main@x)
	movlw	high(03h)
	movwf	((main@x))+1
	
l39:	
	line	48
;dumalaganDa_LE6-3.c: 48: if(VAL == 0x04)
	movf	(main@VAL),w
	xorlw	04h
	skipz
	goto	u381
	goto	u380
u381:
	goto	l40
u380:
	line	49
	
l683:	
;dumalaganDa_LE6-3.c: 49: x = 0x04;
	movlw	low(04h)
	movwf	(main@x)
	movlw	high(04h)
	movwf	((main@x))+1
	
l40:	
	line	50
;dumalaganDa_LE6-3.c: 50: if(VAL == 0x05)
	movf	(main@VAL),w
	xorlw	05h
	skipz
	goto	u391
	goto	u390
u391:
	goto	l41
u390:
	line	51
	
l685:	
;dumalaganDa_LE6-3.c: 51: x = 0x05;
	movlw	low(05h)
	movwf	(main@x)
	movlw	high(05h)
	movwf	((main@x))+1
	
l41:	
	line	52
;dumalaganDa_LE6-3.c: 52: if(VAL == 0x06)
	movf	(main@VAL),w
	xorlw	06h
	skipz
	goto	u401
	goto	u400
u401:
	goto	l42
u400:
	line	53
	
l687:	
;dumalaganDa_LE6-3.c: 53: x = 0x06;
	movlw	low(06h)
	movwf	(main@x)
	movlw	high(06h)
	movwf	((main@x))+1
	
l42:	
	line	54
;dumalaganDa_LE6-3.c: 54: if(VAL == 0x08)
	movf	(main@VAL),w
	xorlw	08h
	skipz
	goto	u411
	goto	u410
u411:
	goto	l43
u410:
	line	55
	
l689:	
;dumalaganDa_LE6-3.c: 55: x = 0x07;
	movlw	low(07h)
	movwf	(main@x)
	movlw	high(07h)
	movwf	((main@x))+1
	
l43:	
	line	56
;dumalaganDa_LE6-3.c: 56: if(VAL == 0x09)
	movf	(main@VAL),w
	xorlw	09h
	skipz
	goto	u421
	goto	u420
u421:
	goto	l44
u420:
	line	57
	
l691:	
;dumalaganDa_LE6-3.c: 57: x = 0x08;
	movlw	low(08h)
	movwf	(main@x)
	movlw	high(08h)
	movwf	((main@x))+1
	
l44:	
	line	58
;dumalaganDa_LE6-3.c: 58: if(VAL == 0x0A)
	movf	(main@VAL),w
	xorlw	0Ah
	skipz
	goto	u431
	goto	u430
u431:
	goto	l45
u430:
	line	59
	
l693:	
;dumalaganDa_LE6-3.c: 59: x = 0x09;
	movlw	low(09h)
	movwf	(main@x)
	movlw	high(09h)
	movwf	((main@x))+1
	
l45:	
	line	60
;dumalaganDa_LE6-3.c: 60: if(VAL == 0x0D)
	movf	(main@VAL),w
	xorlw	0Dh
	skipz
	goto	u441
	goto	u440
u441:
	goto	l697
u440:
	line	61
	
l695:	
;dumalaganDa_LE6-3.c: 61: x = 0x00;
	clrf	(main@x)
	clrf	(main@x+1)
	goto	l697
	
l46:	
	line	62
	
l697:	
;dumalaganDa_LE6-3.c: 62: if(VAL == 0x0C)
	movf	(main@VAL),w
	xorlw	0Ch
	skipz
	goto	u451
	goto	u450
u451:
	goto	l47
u450:
	line	63
	
l699:	
;dumalaganDa_LE6-3.c: 63: x = -6;
	movlw	low(-6)
	movwf	(main@x)
	movlw	high(-6)
	movwf	((main@x))+1
	
l47:	
	line	64
;dumalaganDa_LE6-3.c: 64: if(VAL == 0x0E)
	movf	(main@VAL),w
	xorlw	0Eh
	skipz
	goto	u461
	goto	u460
u461:
	goto	l48
u460:
	line	65
	
l701:	
;dumalaganDa_LE6-3.c: 65: x = -13;
	movlw	low(-13)
	movwf	(main@x)
	movlw	high(-13)
	movwf	((main@x))+1
	
l48:	
	line	66
;dumalaganDa_LE6-3.c: 66: x += 48;
	movlw	low(030h)
	addwf	(main@x),f
	skipnc
	incf	(main@x+1),f
	movlw	high(030h)
	addwf	(main@x+1),f
	line	67
	
l703:	
;dumalaganDa_LE6-3.c: 67: printString(x);
	movf	(main@x),w
	fcall	_printString
	goto	l669
	line	68
	
l36:	
	line	69
;dumalaganDa_LE6-3.c: 68: }
;dumalaganDa_LE6-3.c: 69: }
	goto	l669
	
l49:	
	line	70
	
l50:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_printString

;; *************** function _printString *****************
;; Defined at:
;;		line 72 in file "D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
;; Parameters:    Size  Location     Type
;;  keyPress        1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  keyPress        1   13[BANK0 ] unsigned char 
;;  msg            13    0[BANK0 ] unsigned char [13]
;;  i               2   14[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      16       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      16       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_strlen
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	72
global __ptext1
__ptext1:	;psect for function _printString
psect	text1
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
	line	72
	global	__size_of_printString
	__size_of_printString	equ	__end_of_printString-_printString
	
_printString:	
;incstack = 0
	opt	stack 6
; Regs used in _printString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;printString@keyPress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printString@keyPress)
	line	74
	
l641:	
;dumalaganDa_LE6-3.c: 73: int i;
;dumalaganDa_LE6-3.c: 74: char msg[] = "You pressed ";
	movlw	(printString@msg)&0ffh
	movwf	fsr0
	movlw	low(printString@F1251)
	movwf	(??_printString+0)+0
	movf	fsr0,w
	movwf	((??_printString+0)+0+1)
	movlw	13
	movwf	((??_printString+0)+0+2)
u280:
	movf	(??_printString+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_printString+0)+0+3)
	incf	(??_printString+0)+0,f
	movf	((??_printString+0)+0+1),w
	movwf	fsr0
	
	movf	((??_printString+0)+0+3),w
	movwf	indf
	incf	((??_printString+0)+0+1),f
	decfsz	((??_printString+0)+0+2),f
	goto	u280
	line	75
	
l643:	
;dumalaganDa_LE6-3.c: 75: for(i=0; i<strlen(msg); i++) {
	clrf	(printString@i)
	clrf	(printString@i+1)
	goto	l649
	
l56:	
	line	76
;dumalaganDa_LE6-3.c: 76: while(!TRMT);
	goto	l57
	
l58:	
	
l57:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u291
	goto	u290
u291:
	goto	l57
u290:
	goto	l645
	
l59:	
	line	77
	
l645:	
;dumalaganDa_LE6-3.c: 77: TXREG = msg[i];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printString@i),w
	addlw	printString@msg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(25)	;volatile
	line	75
	
l647:	
	movlw	low(01h)
	addwf	(printString@i),f
	skipnc
	incf	(printString@i+1),f
	movlw	high(01h)
	addwf	(printString@i+1),f
	goto	l649
	
l55:	
	
l649:	
	movlw	(printString@msg)&0ffh
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(printString@i+1),w
	skipz
	goto	u305
	movf	(0+(?_strlen)),w
	subwf	(printString@i),w
u305:
	skipc
	goto	u301
	goto	u300
u301:
	goto	l57
u300:
	goto	l61
	
l60:	
	line	79
;dumalaganDa_LE6-3.c: 78: }
;dumalaganDa_LE6-3.c: 79: while(!TRMT);
	goto	l61
	
l62:	
	
l61:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u311
	goto	u310
u311:
	goto	l61
u310:
	goto	l651
	
l63:	
	line	80
	
l651:	
;dumalaganDa_LE6-3.c: 80: TXREG = keyPress;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(printString@keyPress),w
	movwf	(25)	;volatile
	line	81
;dumalaganDa_LE6-3.c: 81: while(!TRMT);
	goto	l64
	
l65:	
	
l64:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u321
	goto	u320
u321:
	goto	l64
u320:
	goto	l653
	
l66:	
	line	82
	
l653:	
;dumalaganDa_LE6-3.c: 82: TXREG = '.';
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	83
;dumalaganDa_LE6-3.c: 83: while(!TRMT);
	goto	l67
	
l68:	
	
l67:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1217/8)^080h,(1217)&7	;volatile
	goto	u331
	goto	u330
u331:
	goto	l67
u330:
	goto	l655
	
l69:	
	line	84
	
l655:	
;dumalaganDa_LE6-3.c: 84: TXREG = 13;
	movlw	(0Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	85
	
l70:	
	return
	opt stack 0
GLOBAL	__end_of_printString
	__end_of_printString:
	signat	_printString,4216
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> printString@msg(13), 
;; Auto vars:     Size  Location     Type
;;  s               1    6[COMMON] PTR const unsigned char 
;;		 -> printString@msg(13), 
;;  cp              1    7[COMMON] PTR const unsigned char 
;;		 -> printString@msg(13), 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_printString
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
	line	4
global __ptext2
__ptext2:	;psect for function _strlen
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
	opt	stack 6
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
;strlen@s stored from wreg
	movwf	(strlen@s)
	line	8
	
l619:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l623
	
l509:	
	line	10
	
l621:	
	movlw	(01h)
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	addwf	(strlen@cp),f
	goto	l623
	line	11
	
l508:	
	line	9
	
l623:	
	movf	(strlen@cp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u241
	goto	u240
u241:
	goto	l621
u240:
	goto	l625
	
l510:	
	line	12
	
l625:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movlw	((0x0))
	movwf	(??_strlen+0)+0+1
	comf	(??_strlen+0)+0,f
	comf	(??_strlen+0)+1,f
	incf	(??_strlen+0)+0,f
	skipnz
	incf	(??_strlen+0)+1,f
	movf	(strlen@cp),w
	movwf	(??_strlen+2)+0
	movlw	((0x0))
	movwf	(??_strlen+2)+0+1
	movf	0+(??_strlen+0)+0,w
	addwf	0+(??_strlen+2)+0,w
	movwf	(?_strlen)
	movf	1+(??_strlen+0)+0,w
	skipnc
	incf	1+(??_strlen+0)+0,w
	addwf	1+(??_strlen+2)+0,w
	movwf	1+(?_strlen)
	goto	l511
	
l627:	
	line	13
	
l511:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 18 in file "D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
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
psect	text3,local,class=CODE,delta=2,merge=1
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
	line	18
global __ptext3
__ptext3:	;psect for function _delay
psect	text3
	file	"D:\JinBus\CpE 3201\Practical Activity #6\CpE 3201-LE6-3\dumalaganDa_LE6-3.c"
	line	18
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 7
; Regs used in _delay: [wreg+status,2]
	line	20
	
l629:	
;dumalaganDa_LE6-3.c: 19: unsigned int i,j;
;dumalaganDa_LE6-3.c: 20: for(i=0;i<ms_Count;i++) {
	clrf	(delay@i)
	clrf	(delay@i+1)
	goto	l27
	
l28:	
	line	21
	
l631:	
;dumalaganDa_LE6-3.c: 21: for(j=0;j<1000;j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l633:	
	movlw	high(03E8h)
	subwf	(delay@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@j),w
	skipc
	goto	u251
	goto	u250
u251:
	goto	l637
u250:
	goto	l639
	
l635:	
	goto	l639
	
l29:	
	
l637:	
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
	goto	u261
	goto	u260
u261:
	goto	l637
u260:
	goto	l639
	
l30:	
	line	20
	
l639:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l27:	
	movf	(delay@ms_Count+1),w
	subwf	(delay@i+1),w
	skipz
	goto	u275
	movf	(delay@ms_Count),w
	subwf	(delay@i),w
u275:
	skipc
	goto	u271
	goto	u270
u271:
	goto	l631
u270:
	goto	l32
	
l31:	
	line	23
	
l32:	
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
