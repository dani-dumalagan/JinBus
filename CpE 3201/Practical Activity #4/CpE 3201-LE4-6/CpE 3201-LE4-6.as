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
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	FNCALL	_ISR,___lwdiv
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_digit
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	15

;initializer for _digit
	retlw	030h
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
	retlw	035h
	retlw	036h
	retlw	037h
	retlw	038h
	retlw	039h
	global	_period_global
	global	_CCPR1
_CCPR1	set	0x15
	global	_TMR1
_TMR1	set	0xE
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_PORTB
_PORTB	set	0x6
	global	_T1CON
_T1CON	set	0x10
	global	_CCP1IF
_CCP1IF	set	0x62
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_RD2
_RD2	set	0x42
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_CCP1IE
_CCP1IE	set	0x462
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
	file	"CpE 3201-LE4-6.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_period_global:
       ds      2

psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	15
_digit:
       ds      10

	file	"CpE 3201-LE4-6.as"
	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
	movlw low(__pdataBANK0+10)
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
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x2
	ds	2
??___lwdiv:	; 0 bytes @ 0x4
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x5
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x7
	ds	1
??_ISR:	; 0 bytes @ 0x8
	ds	6
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	ISR@period
ISR@period:	; 2 bytes @ 0x0
	ds	2
?_delay:	; 0 bytes @ 0x2
	global	?___awmod
?___awmod:	; 2 bytes @ 0x2
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x2
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x2
	ds	2
??_delay:	; 0 bytes @ 0x4
	global	delay@i
delay@i:	; 2 bytes @ 0x4
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x4
	ds	2
??___awmod:	; 0 bytes @ 0x6
	global	delay@j
delay@j:	; 2 bytes @ 0x6
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x7
	ds	1
??_instCtrl:	; 0 bytes @ 0x8
??_dataCtrl:	; 0 bytes @ 0x8
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x8
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x8
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x8
	ds	1
??_initLCD:	; 0 bytes @ 0x9
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x9
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x9
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0xB
	ds	2
??___awdiv:	; 0 bytes @ 0xD
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0xE
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x10
	ds	2
??_main:	; 0 bytes @ 0x12
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        10
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     18      30
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
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->___lwdiv
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->___awdiv
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
;!    ___awdiv->___awmod
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0    2602
;!                            ___awdiv
;!                            ___awmod
;!                           _dataCtrl
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     568
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     295
;!                                              8 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     295
;!                                              8 BANK0      1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                6     4      2     273
;!                                              2 BANK0      6     4      2
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              7     3      4     720
;!                                              2 BANK0      7     3      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              9     5      4     724
;!                                              9 BANK0      9     5      4
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  8     8      0     315
;!                                              8 COMMON     6     6      0
;!                                              0 BANK0      2     2      0
;!                            ___lwdiv
;! ---------------------------------------------------------------------------------
;! (5) ___lwdiv                                              8     4      4     268
;!                                              0 COMMON     8     4      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awdiv
;!     ___awmod (ARG)
;!   ___awmod
;!   _dataCtrl
;!     _delay
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!
;! _ISR (ROOT)
;!   ___lwdiv
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
;!BANK0               50     12      1E       5       37.5%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      2C      12        0.0%
;!ABS                  0      0      2C       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 69 in file "D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_dataCtrl
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	69
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	69
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	70
	
l910:	
;LE4-6.c: 70: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	71
;LE4-6.c: 71: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	74
	
l912:	
;LE4-6.c: 74: TRISC = 0x04;
	movlw	(04h)
	movwf	(135)^080h	;volatile
	line	75
	
l914:	
;LE4-6.c: 75: T1CON = 0x30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	76
	
l916:	
;LE4-6.c: 76: CCP1CON = 0x05;
	movlw	(05h)
	movwf	(23)	;volatile
	line	77
	
l918:	
;LE4-6.c: 77: CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1122/8)^080h,(1122)&7	;volatile
	line	78
	
l920:	
;LE4-6.c: 78: CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(98/8),(98)&7	;volatile
	line	79
	
l922:	
;LE4-6.c: 79: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	80
	
l924:	
;LE4-6.c: 80: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	81
	
l926:	
;LE4-6.c: 81: TMR1ON = 1;
	bsf	(128/8),(128)&7	;volatile
	line	83
	
l928:	
;LE4-6.c: 83: initLCD();
	fcall	_initLCD
	line	85
	
l930:	
;LE4-6.c: 85: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	86
	
l932:	
;LE4-6.c: 86: dataCtrl('P');
	movlw	(050h)
	fcall	_dataCtrl
	line	87
	
l934:	
;LE4-6.c: 87: dataCtrl('e');
	movlw	(065h)
	fcall	_dataCtrl
	line	88
	
l936:	
;LE4-6.c: 88: dataCtrl('r');
	movlw	(072h)
	fcall	_dataCtrl
	line	89
	
l938:	
;LE4-6.c: 89: dataCtrl('i');
	movlw	(069h)
	fcall	_dataCtrl
	line	90
	
l940:	
;LE4-6.c: 90: dataCtrl('o');
	movlw	(06Fh)
	fcall	_dataCtrl
	line	91
	
l942:	
;LE4-6.c: 91: dataCtrl('d');
	movlw	(064h)
	fcall	_dataCtrl
	line	92
	
l944:	
;LE4-6.c: 92: dataCtrl(':');
	movlw	(03Ah)
	fcall	_dataCtrl
	goto	l946
	line	95
;LE4-6.c: 95: for(;;) {
	
l59:	
	line	96
	
l946:	
;LE4-6.c: 96: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	97
	
l948:	
;LE4-6.c: 97: dataCtrl(digit[period_global/10000]);
	movlw	low(02710h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(02710h)
	movwf	((___awdiv@divisor))+1
	movf	(_period_global+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(_period_global),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	_digit&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_dataCtrl
	line	98
	
l950:	
;LE4-6.c: 98: dataCtrl(digit[(period_global%10000)/1000]);
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(03E8h)
	movwf	((___awdiv@divisor))+1
	movf	(_period_global+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_period_global),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	movlw	low(02710h)
	movwf	(___awmod@divisor)
	movlw	high(02710h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	_digit&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_dataCtrl
	line	99
	
l952:	
;LE4-6.c: 99: dataCtrl(digit[(period_global%1000)/100]);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(_period_global+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_period_global),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	movlw	low(03E8h)
	movwf	(___awmod@divisor)
	movlw	high(03E8h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	_digit&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_dataCtrl
	line	100
	
l954:	
;LE4-6.c: 100: dataCtrl(digit[(period_global%100)/10]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(_period_global+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_period_global),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	addlw	_digit&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_dataCtrl
	line	101
	
l956:	
;LE4-6.c: 101: dataCtrl(digit[(period_global%10)]);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	movf	(_period_global+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(_period_global),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	_digit&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_dataCtrl
	line	102
;LE4-6.c: 102: }
	goto	l946
	
l60:	
	line	104
	
l61:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 33 in file "D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	33
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	33
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 3
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	34
	
l770:	
;LE4-6.c: 34: delay(1);
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	35
;LE4-6.c: 35: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	36
;LE4-6.c: 36: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	37
;LE4-6.c: 37: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	38
;LE4-6.c: 38: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	39
;LE4-6.c: 39: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	40
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 24 in file "D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	24
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	24
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(instCtrl@INST)
	line	25
	
l758:	
;LE4-6.c: 25: PORTB = INST;
	movf	(instCtrl@INST),w
	movwf	(6)	;volatile
	line	26
	
l760:	
;LE4-6.c: 26: RD0 = 0;
	bcf	(64/8),(64)&7	;volatile
	line	27
	
l762:	
;LE4-6.c: 27: RD1 = 0;
	bcf	(65/8),(65)&7	;volatile
	line	28
	
l764:	
;LE4-6.c: 28: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	29
	
l766:	
;LE4-6.c: 29: delay(1);
	movlw	low(01h)
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	30
	
l768:	
;LE4-6.c: 30: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	31
	
l46:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 42 in file "D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	42
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	42
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@DATA stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(dataCtrl@DATA)
	line	43
	
l772:	
;LE4-6.c: 43: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	movwf	(6)	;volatile
	line	44
	
l774:	
;LE4-6.c: 44: RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	45
	
l776:	
;LE4-6.c: 45: RD1 = 0;
	bcf	(65/8),(65)&7	;volatile
	line	46
	
l778:	
;LE4-6.c: 46: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	47
	
l780:	
;LE4-6.c: 47: delay(1);
	movlw	low(01h)
	movwf	(delay@cnt)
	movlw	high(01h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	48
	
l782:	
;LE4-6.c: 48: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	49
	
l52:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 17 in file "D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  j               2    6[BANK0 ] int 
;;  i               2    4[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_instCtrl
;;		_initLCD
;;		_dataCtrl
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	17
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	17
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 4
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
	line	19
	
l738:	
;LE4-6.c: 18: int i, j;
;LE4-6.c: 19: for (i=cnt; i!=0; i--) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(delay@cnt+1),w
	clrf	(delay@i+1)
	addwf	(delay@i+1)
	movf	(delay@cnt),w
	clrf	(delay@i)
	addwf	(delay@i)

	
l740:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u321
	goto	u320
u321:
	goto	l744
u320:
	goto	l43
	
l742:	
	goto	l43
	
l39:	
	line	20
	
l744:	
;LE4-6.c: 20: for (j=0; j<1000; j++);
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l746:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u335
	movlw	low(03E8h)
	subwf	(delay@j),w
u335:

	skipc
	goto	u331
	goto	u330
u331:
	goto	l750
u330:
	goto	l754
	
l748:	
	goto	l754
	
l41:	
	
l750:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l752:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u345
	movlw	low(03E8h)
	subwf	(delay@j),w
u345:

	skipc
	goto	u341
	goto	u340
u341:
	goto	l750
u340:
	goto	l754
	
l42:	
	line	19
	
l754:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l756:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u351
	goto	u350
u351:
	goto	l744
u350:
	goto	l43
	
l40:	
	line	22
	
l43:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[BANK0 ] int 
;;  dividend        2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    8[BANK0 ] unsigned char 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___awmod
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l828:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
l830:	
	btfss	(___awmod@dividend+1),7
	goto	u461
	goto	u460
u461:
	goto	l836
u460:
	line	15
	
l832:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l834:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l836
	line	17
	
l280:	
	line	18
	
l836:	
	btfss	(___awmod@divisor+1),7
	goto	u471
	goto	u470
u471:
	goto	l840
u470:
	line	19
	
l838:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l840
	
l281:	
	line	20
	
l840:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u481
	goto	u480
u481:
	goto	l858
u480:
	line	21
	
l842:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l848
	
l284:	
	line	23
	
l844:	
	movlw	01h
	
u495:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u495
	line	24
	
l846:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l848
	line	25
	
l283:	
	line	22
	
l848:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u501
	goto	u500
u501:
	goto	l844
u500:
	goto	l850
	
l285:	
	goto	l850
	line	26
	
l286:	
	line	27
	
l850:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u515
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u515:
	skipc
	goto	u511
	goto	u510
u511:
	goto	l854
u510:
	line	28
	
l852:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l854
	
l287:	
	line	29
	
l854:	
	movlw	01h
	
u525:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u525
	line	30
	
l856:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u531
	goto	u530
u531:
	goto	l850
u530:
	goto	l858
	
l288:	
	goto	l858
	line	31
	
l282:	
	line	32
	
l858:	
	movf	(___awmod@sign),w
	skipz
	goto	u540
	goto	l862
u540:
	line	33
	
l860:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l862
	
l289:	
	line	34
	
l862:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l290
	
l864:	
	line	35
	
l290:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    9[BANK0 ] int 
;;  dividend        2   11[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   16[BANK0 ] int 
;;  sign            1   15[BANK0 ] unsigned char 
;;  counter         1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    9[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___awdiv
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l784:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l786:	
	btfss	(___awdiv@divisor+1),7
	goto	u361
	goto	u360
u361:
	goto	l792
u360:
	line	16
	
l788:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l790:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l792
	line	18
	
l267:	
	line	19
	
l792:	
	btfss	(___awdiv@dividend+1),7
	goto	u371
	goto	u370
u371:
	goto	l798
u370:
	line	20
	
l794:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l796:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l798
	line	22
	
l268:	
	line	23
	
l798:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l800:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u381
	goto	u380
u381:
	goto	l820
u380:
	line	25
	
l802:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l808
	
l271:	
	line	27
	
l804:	
	movlw	01h
	
u395:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u395
	line	28
	
l806:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l808
	line	29
	
l270:	
	line	26
	
l808:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u401
	goto	u400
u401:
	goto	l804
u400:
	goto	l810
	
l272:	
	goto	l810
	line	30
	
l273:	
	line	31
	
l810:	
	movlw	01h
	
u415:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u415
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u425
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u425:
	skipc
	goto	u421
	goto	u420
u421:
	goto	l816
u420:
	line	33
	
l812:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l814:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l816
	line	35
	
l274:	
	line	36
	
l816:	
	movlw	01h
	
u435:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u435
	line	37
	
l818:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u441
	goto	u440
u441:
	goto	l810
u440:
	goto	l820
	
l275:	
	goto	l820
	line	38
	
l269:	
	line	39
	
l820:	
	movf	(___awdiv@sign),w
	skipz
	goto	u450
	goto	l824
u450:
	line	40
	
l822:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l824
	
l276:	
	line	41
	
l824:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l277
	
l826:	
	line	42
	
l277:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 51 in file "D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  period          2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6       2       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	51
global __ptext7
__ptext7:	;psect for function _ISR
psect	text7
	file	"D:\JinBus\CpE 3201\Practical Activity #4\CpE 3201-LE4-6\LE4-6.c"
	line	51
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 3
; Regs used in _ISR: [wreg+status,2+status,0+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+2)
	movf	fsr0,w
	movwf	(??_ISR+3)
	movf	pclath,w
	movwf	(??_ISR+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+5)
	ljmp	_ISR
psect	text7
	line	52
	
i1l892:	
;LE4-6.c: 52: int period = 0;
	clrf	(ISR@period)
	clrf	(ISR@period+1)
	line	54
	
i1l894:	
;LE4-6.c: 54: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	57
	
i1l896:	
;LE4-6.c: 57: if(CCP1IF==1) {
	btfss	(98/8),(98)&7	;volatile
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l908
u62_20:
	line	58
	
i1l898:	
;LE4-6.c: 58: CCP1IF = 0;
	bcf	(98/8),(98)&7	;volatile
	line	59
	
i1l900:	
;LE4-6.c: 59: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	60
	
i1l902:	
;LE4-6.c: 60: period = CCPR1/1000;
	movlw	low(03E8h)
	movwf	(___lwdiv@divisor)
	movlw	high(03E8h)
	movwf	((___lwdiv@divisor))+1
	movf	(21+1),w	;volatile
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(21),w	;volatile
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(ISR@period+1)
	addwf	(ISR@period+1)
	movf	(0+(?___lwdiv)),w
	clrf	(ISR@period)
	addwf	(ISR@period)

	line	62
	
i1l904:	
;LE4-6.c: 62: period = period*8;
	movf	(ISR@period+1),w
	movwf	(??_ISR+0)+0+1
	movf	(ISR@period),w
	movwf	(??_ISR+0)+0
	clrc
	rlf	(??_ISR+0)+0,f
	rlf	(??_ISR+0)+1,f
	clrc
	rlf	(??_ISR+0)+0,f
	rlf	(??_ISR+0)+1,f
	clrc
	rlf	(??_ISR+0)+0,f
	rlf	(??_ISR+0)+1,f
	movf	0+(??_ISR+0)+0,w
	movwf	(ISR@period)
	movf	1+(??_ISR+0)+0,w
	movwf	(ISR@period+1)
	line	63
	
i1l906:	
;LE4-6.c: 63: period_global = period;
	movf	(ISR@period+1),w
	clrf	(_period_global+1)
	addwf	(_period_global+1)
	movf	(ISR@period),w
	clrf	(_period_global)
	addwf	(_period_global)

	goto	i1l908
	line	64
	
i1l55:	
	line	66
	
i1l908:	
;LE4-6.c: 64: }
;LE4-6.c: 66: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	67
	
i1l56:	
	movf	(??_ISR+5),w
	movwf	btemp+1
	movf	(??_ISR+4),w
	movwf	pclath
	movf	(??_ISR+3),w
	movwf	fsr0
	swapf	(??_ISR+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] unsigned int 
;;  dividend        2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    5[COMMON] unsigned int 
;;  counter         1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___lwdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 3
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
i1l866:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
i1l868:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u55_21
	goto	u55_20
u55_21:
	goto	i1l888
u55_20:
	line	16
	
i1l870:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	i1l876
	
i1l476:	
	line	18
	
i1l872:	
	movlw	01h
	
u56_25:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u56_25
	line	19
	
i1l874:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	i1l876
	line	20
	
i1l475:	
	line	17
	
i1l876:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u57_21
	goto	u57_20
u57_21:
	goto	i1l872
u57_20:
	goto	i1l878
	
i1l477:	
	goto	i1l878
	line	21
	
i1l478:	
	line	22
	
i1l878:	
	movlw	01h
	
u58_25:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u58_25
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u59_25
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u59_25:
	skipc
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l884
u59_20:
	line	24
	
i1l880:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
i1l882:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	i1l884
	line	26
	
i1l479:	
	line	27
	
i1l884:	
	movlw	01h
	
u60_25:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u60_25
	line	28
	
i1l886:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u61_21
	goto	u61_20
u61_21:
	goto	i1l878
u61_20:
	goto	i1l888
	
i1l480:	
	goto	i1l888
	line	29
	
i1l474:	
	line	30
	
i1l888:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	i1l481
	
i1l890:	
	line	31
	
i1l481:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
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
