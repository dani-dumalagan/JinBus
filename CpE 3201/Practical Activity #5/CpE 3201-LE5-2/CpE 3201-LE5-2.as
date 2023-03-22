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
	FNROOT	_main
	FNCALL	_ISR,___awtoft
	FNCALL	_ISR,___ftadd
	FNCALL	_ISR,___ftmul
	FNCALL	_ISR,___ftneg
	FNCALL	_ISR,___fttol
	FNCALL	_ISR,_delay
	FNCALL	_ISR,_readADC
	FNCALL	_ISR,_round_to_one_decimal
	FNCALL	_round_to_one_decimal,___awmod
	FNCALL	_round_to_one_decimal,___ftdiv
	FNCALL	_round_to_one_decimal,___ftmul
	FNCALL	_round_to_one_decimal,___fttol
	FNCALL	_round_to_one_decimal,_floor
	FNCALL	_round_to_one_decimal,_round
	FNCALL	_round,___ftadd
	FNCALL	_round,___ftneg
	FNCALL	_round,_trunc
	FNCALL	_trunc,___altoft
	FNCALL	_trunc,___fttol
	FNCALL	_trunc,_frexp
	FNCALL	_floor,___altoft
	FNCALL	_floor,___ftadd
	FNCALL	_floor,___ftge
	FNCALL	_floor,___fttol
	FNCALL	_floor,_frexp
	FNCALL	___ftadd,___ftpack
	FNCALL	___altoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_count_flag
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	17

;initializer for _count_flag
	retlw	01h
	retlw	0

	global	_errno
	global	_ADCON0
_ADCON0	set	0x1F
	global	_ADRESH
_ADRESH	set	0x1E
	global	_PORTB
_PORTB	set	0x6
	global	_ADIF
_ADIF	set	0x66
	global	_GIE
_GIE	set	0x5F
	global	_GO
_GO	set	0xFA
	global	_PEIE
_PEIE	set	0x5E
	global	_ADCON1
_ADCON1	set	0x9F
	global	_ADRESL
_ADRESL	set	0x9E
	global	_TRISB
_TRISB	set	0x86
	global	_ADIE
_ADIE	set	0x466
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
	file	"CpE 3201-LE5-2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	17
_count_flag:
       ds      2

psect	bssBANK1,class=BANK1,space=1,noexec
global __pbssBANK1
__pbssBANK1:
_errno:
       ds      2

	file	"CpE 3201-LE5-2.as"
	line	#
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2,merge=1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	((__pbssBANK1)+0)&07Fh
	clrf	((__pbssBANK1)+1)&07Fh
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
??_ISR:	; 0 bytes @ 0x0
	ds	8
	global	ISR@resultOfConversion
ISR@resultOfConversion:	; 3 bytes @ 0x8
	ds	3
	global	ISR@decimal
ISR@decimal:	; 3 bytes @ 0xB
	ds	3
	global	ISR@result
ISR@result:	; 2 bytes @ 0xE
	ds	2
	global	ISR@d_value
ISR@d_value:	; 2 bytes @ 0x10
	ds	2
	global	ISR@formattedResult
ISR@formattedResult:	; 3 bytes @ 0x12
	ds	3
	global	ISR@whole
ISR@whole:	; 2 bytes @ 0x15
	ds	2
??_main:	; 0 bytes @ 0x17
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
	global	?_readADC
?_readADC:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
?_frexp:	; 3 bytes @ 0x0
	global	delay@cnt
delay@cnt:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	frexp@value
frexp@value:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	ds	2
??_delay:	; 0 bytes @ 0x2
??_readADC:	; 0 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	frexp@eptr
frexp@eptr:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??_frexp:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	readADC@temp
readADC@temp:	; 2 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	ds	1
??___ftge:	; 0 bytes @ 0x6
	ds	2
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	ds	3
??___awtoft:	; 0 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
??_round:	; 0 bytes @ 0xE
??_round_to_one_decimal:	; 0 bytes @ 0xE
??___ftneg:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___ftdiv:	; 0 bytes @ 0x0
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x0
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x0
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x3
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x4
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x5
	ds	1
??___ftmul:	; 0 bytes @ 0x6
	ds	2
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x8
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x9
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0xA
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0xB
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0xE
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x10
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x10
	ds	4
??___fttol:	; 0 bytes @ 0x14
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x18
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x19
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x1D
	ds	1
	global	?___awmod
?___awmod:	; 2 bytes @ 0x1E
	global	?___altoft
?___altoft:	; 3 bytes @ 0x1E
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x1E
	global	___altoft@c
___altoft@c:	; 4 bytes @ 0x1E
	ds	2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x20
	ds	2
??___altoft:	; 0 bytes @ 0x22
??___awmod:	; 0 bytes @ 0x22
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x23
	ds	1
	global	___altoft@exp
___altoft@exp:	; 1 bytes @ 0x24
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x24
	ds	1
	global	___altoft@sign
___altoft@sign:	; 1 bytes @ 0x25
	ds	1
	global	?_trunc
?_trunc:	; 3 bytes @ 0x26
	global	trunc@x
trunc@x:	; 3 bytes @ 0x26
	ds	3
??_trunc:	; 0 bytes @ 0x29
	ds	1
	global	trunc@i
trunc@i:	; 3 bytes @ 0x2A
	ds	3
	global	trunc@expon
trunc@expon:	; 2 bytes @ 0x2D
	ds	2
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x2F
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x2F
	ds	3
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x32
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x32
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x35
	ds	3
??___ftadd:	; 0 bytes @ 0x38
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3C
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x3D
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x3E
	ds	1
	global	?_round
?_round:	; 3 bytes @ 0x3F
	global	?_floor
?_floor:	; 3 bytes @ 0x3F
	global	floor@x
floor@x:	; 3 bytes @ 0x3F
	global	round@x
round@x:	; 3 bytes @ 0x3F
	ds	3
??_floor:	; 0 bytes @ 0x42
	global	round@f
round@f:	; 3 bytes @ 0x42
	ds	1
	global	floor@i
floor@i:	; 3 bytes @ 0x43
	ds	3
	global	floor@expon
floor@expon:	; 2 bytes @ 0x46
	ds	2
	global	?_round_to_one_decimal
?_round_to_one_decimal:	; 3 bytes @ 0x48
	global	round_to_one_decimal@num
round_to_one_decimal@num:	; 3 bytes @ 0x48
	ds	3
	global	round_to_one_decimal@rounded_num
round_to_one_decimal@rounded_num:	; 3 bytes @ 0x4B
	ds	3
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        2
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     78      80
;!    BANK1            80     23      25
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    frexp@eptr	PTR int  size(1) Largest target is 2
;!		 -> trunc@expon(BANK0[2]), floor@expon(BANK0[2]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    None.
;!
;!Critical Paths under _ISR in COMMON
;!
;!    _ISR->___awtoft
;!    _round_to_one_decimal->___ftdiv
;!    ___ftneg->___awtoft
;!    ___ftadd->___awtoft
;!    ___ftmul->___awtoft
;!    ___ftdiv->___ftpack
;!    ___awtoft->___ftpack
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK0
;!
;!    _ISR->_round_to_one_decimal
;!    _round_to_one_decimal->_floor
;!    _round->___ftadd
;!    _trunc->___altoft
;!    ___ftneg->_trunc
;!    _floor->___ftadd
;!    ___fttol->___ftmul
;!    ___ftadd->___ftneg
;!    ___altoft->___fttol
;!    ___awmod->___fttol
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
;! (0) _main                                                 0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 0
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (1) _ISR                                                 23    23      0   27312
;!                                              0 BANK1     23    23      0
;!                           ___awtoft
;!                            ___ftadd
;!                            ___ftmul
;!                            ___ftneg
;!                            ___fttol
;!                              _delay
;!                            _readADC
;!               _round_to_one_decimal
;! ---------------------------------------------------------------------------------
;! (2) _round_to_one_decimal                                 6     3      3   18919
;!                                             72 BANK0      6     3      3
;!                            ___awmod
;!                            ___ftdiv
;!                            ___ftmul
;!                            ___fttol
;!                              _floor
;!                              _round
;! ---------------------------------------------------------------------------------
;! (3) _round                                                6     3      3    6598
;!                                             63 BANK0      6     3      3
;!                            ___ftadd
;!                            ___ftmul (ARG)
;!                            ___ftneg
;!                              _trunc
;! ---------------------------------------------------------------------------------
;! (4) _trunc                                                9     6      3    3174
;!                                             38 BANK0      9     6      3
;!                           ___altoft
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (4) ___ftneg                                              3     0      3     191
;!                                             47 BANK0      3     0      3
;!                           ___awtoft (ARG)
;!                              _trunc (ARG)
;! ---------------------------------------------------------------------------------
;! (3) _floor                                                9     6      3    6758
;!                                             63 BANK0      9     6      3
;!                           ___altoft
;!                            ___ftadd
;!                             ___ftge
;!                            ___fttol
;!                              _frexp
;! ---------------------------------------------------------------------------------
;! (5) _frexp                                                6     2      4     420
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (5) ___fttol                                             14    10      4     517
;!                                             16 BANK0     14    10      4
;!                            ___ftmul (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftge                                              12     6      6     428
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (4) ___ftadd                                             13     7      6    3068
;!                                             50 BANK0     13     7      6
;!                           ___awtoft (ARG)
;!                            ___ftneg (ARG)
;!                           ___ftpack
;!                              _trunc (ARG)
;! ---------------------------------------------------------------------------------
;! (5) ___altoft                                             8     4      4    1968
;!                                             30 BANK0      8     4      4
;!                           ___ftpack
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             16    10      6    2368
;!                                              0 BANK0     16    10      6
;!                           ___awtoft (ARG)
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___ftdiv                                             16    10      6    2110
;!                                              8 COMMON     6     0      6
;!                                              0 BANK0     10    10      0
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4     402
;!                                             30 BANK0      7     3      4
;!                            ___fttol (ARG)
;! ---------------------------------------------------------------------------------
;! (2) _readADC                                              6     4      2      70
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                2     0      2      75
;!                                              0 COMMON     2     0      2
;! ---------------------------------------------------------------------------------
;! (2) ___awtoft                                             6     3      3    1921
;!                                              8 COMMON     6     3      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (6) ___ftpack                                             8     3      5    1724
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!
;! _ISR (ROOT)
;!   ___awtoft
;!     ___ftpack
;!   ___ftadd
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftneg (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       _trunc (ARG)
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!         _frexp
;!     ___ftpack (ARG)
;!     _trunc (ARG)
;!       ___altoft
;!         ___ftpack
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!       _frexp
;!   ___ftmul
;!     ___awtoft (ARG)
;!       ___ftpack
;!     ___ftpack (ARG)
;!   ___ftneg
;!     ___awtoft (ARG)
;!       ___ftpack
;!     _trunc (ARG)
;!       ___altoft
;!         ___ftpack
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!       _frexp
;!   ___fttol
;!     ___ftmul (ARG)
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!   _delay
;!   _readADC
;!   _round_to_one_decimal
;!     ___awmod
;!       ___fttol (ARG)
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!     ___ftdiv
;!       ___ftpack
;!     ___ftmul
;!       ___awtoft (ARG)
;!         ___ftpack
;!       ___ftpack (ARG)
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!     _floor
;!       ___altoft
;!         ___ftpack
;!         ___fttol (ARG)
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           _trunc (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___fttol
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp
;!         ___ftpack (ARG)
;!         _trunc (ARG)
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!           ___fttol
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!           _frexp
;!       ___ftge
;!       ___fttol
;!         ___ftmul (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           ___ftpack (ARG)
;!       _frexp
;!     _round
;!       ___ftadd
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftneg (ARG)
;!           ___awtoft (ARG)
;!             ___ftpack
;!           _trunc (ARG)
;!             ___altoft
;!               ___ftpack
;!               ___fttol (ARG)
;!                 ___ftmul (ARG)
;!                   ___awtoft (ARG)
;!                     ___ftpack
;!                   ___ftpack (ARG)
;!             ___fttol
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!             _frexp
;!         ___ftpack (ARG)
;!         _trunc (ARG)
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!           ___fttol
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!           _frexp
;!       ___ftmul (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         ___ftpack (ARG)
;!       ___ftneg (ARG)
;!         ___awtoft (ARG)
;!           ___ftpack
;!         _trunc (ARG)
;!           ___altoft
;!             ___ftpack
;!             ___fttol (ARG)
;!               ___ftmul (ARG)
;!                 ___awtoft (ARG)
;!                   ___ftpack
;!                 ___ftpack (ARG)
;!           ___fttol
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!           _frexp
;!       _trunc (ARG)
;!         ___altoft
;!           ___ftpack
;!           ___fttol (ARG)
;!             ___ftmul (ARG)
;!               ___awtoft (ARG)
;!                 ___ftpack
;!               ___ftpack (ARG)
;!         ___fttol
;!           ___ftmul (ARG)
;!             ___awtoft (ARG)
;!               ___ftpack
;!             ___ftpack (ARG)
;!         _frexp
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
;!BANK1               50     17      19       7       31.3%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     4E      50       5      100.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      77      12        0.0%
;!ABS                  0      0      77       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 66 in file "D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	66
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	66
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 2
; Regs used in _main: [wreg+status,2]
	line	68
	
l1503:	
;LE5-2.c: 68: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	69
;LE5-2.c: 69: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	70
	
l1505:	
;LE5-2.c: 70: ADCON1 = 0x80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	73
	
l1507:	
;LE5-2.c: 73: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	75
	
l1509:	
;LE5-2.c: 75: ADIF = 0;
	bcf	(102/8),(102)&7	;volatile
	line	76
	
l1511:	
;LE5-2.c: 76: ADIE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7	;volatile
	line	77
	
l1513:	
;LE5-2.c: 77: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	78
	
l1515:	
;LE5-2.c: 78: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	79
	
l1517:	
;LE5-2.c: 79: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	81
;LE5-2.c: 80: for(;;)
	
l49:	
	line	83
;LE5-2.c: 81: {
;LE5-2.c: 83: }
	goto	l49
	
l50:	
	line	84
	
l51:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 42 in file "D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  formattedRes    3   18[BANK1 ] float 
;;  decimal         3   11[BANK1 ] float 
;;  resultOfConv    3    8[BANK1 ] float 
;;  whole           2   21[BANK1 ] int 
;;  result          2   14[BANK1 ] unsigned int 
;;  d_value         2   16[BANK1 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0      15       0       0
;;      Temps:          0       0       8       0       0
;;      Totals:         0       0      23       0       0
;;Total ram usage:       23 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___ftneg
;;		___fttol
;;		_delay
;;		_readADC
;;		_round_to_one_decimal
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	42
global __ptext1
__ptext1:	;psect for function _ISR
psect	text1
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	42
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 2
; Regs used in _ISR: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_ISR+4)^080h
	movf	fsr0,w
	movwf	(??_ISR+5)^080h
	movf	pclath,w
	movwf	(??_ISR+6)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_ISR+7)^080h
	ljmp	_ISR
psect	text1
	line	44
	
i1l1475:	
;LE5-2.c: 44: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	45
	
i1l1477:	
;LE5-2.c: 45: int d_value = 0;
	clrf	(ISR@d_value)^080h
	clrf	(ISR@d_value+1)^080h
	line	46
	
i1l1479:	
;LE5-2.c: 46: if(ADIF == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(102/8),(102)&7	;volatile
	goto	u192_21
	goto	u192_20
u192_21:
	goto	i1l1497
u192_20:
	line	48
	
i1l1481:	
;LE5-2.c: 47: {
;LE5-2.c: 48: ADIF = 0;
	bcf	(102/8),(102)&7	;volatile
	line	49
	
i1l1483:	
;LE5-2.c: 49: d_value = readADC();
	fcall	_readADC
	movf	(1+(?_readADC)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ISR@d_value+1)^080h
	addwf	(ISR@d_value+1)^080h
	movf	(0+(?_readADC)),w
	clrf	(ISR@d_value)^080h
	addwf	(ISR@d_value)^080h

	line	50
	
i1l1485:	
;LE5-2.c: 50: float resultOfConversion = (float) d_value * 0.004911;
	movlw	0xec
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0xa0
	movwf	(___ftmul@f1+1)
	movlw	0x3b
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@d_value+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(ISR@d_value)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	movf	(1+(?___awtoft)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@resultOfConversion)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@resultOfConversion+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@resultOfConversion+2)^080h
	line	51
	
i1l1487:	
;LE5-2.c: 51: float formattedResult = round_to_one_decimal(resultOfConversion);
	movf	(ISR@resultOfConversion)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(round_to_one_decimal@num)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@resultOfConversion+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(round_to_one_decimal@num+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@resultOfConversion+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(round_to_one_decimal@num+2)
	fcall	_round_to_one_decimal
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_round_to_one_decimal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@formattedResult)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_round_to_one_decimal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@formattedResult+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_round_to_one_decimal)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@formattedResult+2)^080h
	line	52
	
i1l1489:	
;LE5-2.c: 52: int whole = (int)formattedResult;
	movf	(ISR@formattedResult)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@formattedResult+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@formattedResult+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ISR@whole+1)^080h
	addwf	(ISR@whole+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(ISR@whole)^080h
	addwf	(ISR@whole)^080h

	line	53
	
i1l1491:	
;LE5-2.c: 53: float decimal = formattedResult - whole;
	movf	(ISR@formattedResult)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@formattedResult+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@formattedResult+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@whole+1)^080h,w
	clrf	(___awtoft@c+1)
	addwf	(___awtoft@c+1)
	movf	(ISR@whole)^080h,w
	clrf	(___awtoft@c)
	addwf	(___awtoft@c)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftneg@f1)
	movf	(1+(?___awtoft)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?___awtoft)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@decimal)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@decimal+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(ISR@decimal+2)^080h
	line	56
	
i1l1493:	
;LE5-2.c: 55: unsigned int result;
;LE5-2.c: 56: result = (whole<< 4) | ((int)(decimal * 10) & 0x0F);
	movf	(ISR@decimal)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@decimal+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(ISR@decimal+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x20
	movwf	(___ftmul@f1+1)
	movlw	0x41
	movwf	(___ftmul@f1+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___fttol@f1)
	movf	(1+(?___ftmul)),w
	movwf	(___fttol@f1+1)
	movf	(2+(?___ftmul)),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	movlw	low(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	0+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_ISR+0)^080h+0
	movlw	high(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	1+(((0+(?___fttol)))),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(??_ISR+0)^080h+0
	movf	(ISR@whole+1)^080h,w
	movwf	(??_ISR+2)^080h+0+1
	movf	(ISR@whole)^080h,w
	movwf	(??_ISR+2)^080h+0
	swapf	(??_ISR+2)^080h+0,f
	swapf	(??_ISR+2)^080h+1,f
	movlw	0f0h
	andwf	(??_ISR+2)^080h+1,f
	movf	(??_ISR+2)^080h+0,w
	andlw	0fh
	iorwf	(??_ISR+2)^080h+1,f
	movlw	0f0h
	andwf	(??_ISR+2)^080h+0,f
	movf	0+(??_ISR+0)^080h+0,w
	iorwf	0+(??_ISR+2)^080h+0,w
	movwf	(ISR@result)^080h
	movf	1+(??_ISR+0)^080h+0,w
	iorwf	1+(??_ISR+2)^080h+0,w
	movwf	1+(ISR@result)^080h
	line	57
	
i1l1495:	
;LE5-2.c: 57: PORTB = result;
	movf	(ISR@result)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	goto	i1l1497
	line	58
	
i1l45:	
	line	59
	
i1l1497:	
;LE5-2.c: 58: }
;LE5-2.c: 59: delay(1000);
	movlw	low(03E8h)
	movwf	(delay@cnt)
	movlw	high(03E8h)
	movwf	((delay@cnt))+1
	fcall	_delay
	line	60
	
i1l1499:	
;LE5-2.c: 60: GO = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7	;volatile
	line	61
	
i1l1501:	
;LE5-2.c: 61: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	62
	
i1l46:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_ISR+7)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(??_ISR+6)^080h,w
	movwf	pclath
	movf	(??_ISR+5)^080h,w
	movwf	fsr0
	swapf	(??_ISR+4)^080h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
	global	_round_to_one_decimal

;; *************** function _round_to_one_decimal *****************
;; Defined at:
;;		line 32 in file "D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
;; Parameters:    Size  Location     Type
;;  num             3   72[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  rounded_num     3   75[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   72[BANK0 ] float 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___awmod
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		_floor
;;		_round
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	32
global __ptext2
__ptext2:	;psect for function _round_to_one_decimal
psect	text2
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	32
	global	__size_of_round_to_one_decimal
	__size_of_round_to_one_decimal	equ	__end_of_round_to_one_decimal-_round_to_one_decimal
	
_round_to_one_decimal:	
;incstack = 0
	opt	stack 2
; Regs used in _round_to_one_decimal: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	33
	
i1l1451:	
;LE5-2.c: 33: float rounded_num = round(num * 1000.0);
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	movlw	0x7a
	movwf	(___ftmul@f1+1)
	movlw	0x44
	movwf	(___ftmul@f1+2)
	movf	(round_to_one_decimal@num),w
	movwf	(___ftmul@f2)
	movf	(round_to_one_decimal@num+1),w
	movwf	(___ftmul@f2+1)
	movf	(round_to_one_decimal@num+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(round@x)
	movf	(1+(?___ftmul)),w
	movwf	(round@x+1)
	movf	(2+(?___ftmul)),w
	movwf	(round@x+2)
	fcall	_round
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_round)),w
	movwf	(round_to_one_decimal@rounded_num)
	movf	(1+(?_round)),w
	movwf	(round_to_one_decimal@rounded_num+1)
	movf	(2+(?_round)),w
	movwf	(round_to_one_decimal@rounded_num+2)
	line	34
	
i1l1453:	
;LE5-2.c: 34: if(((int)(rounded_num)%100 <= 49))
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	movf	(round_to_one_decimal@rounded_num),w
	movwf	(___fttol@f1)
	movf	(round_to_one_decimal@rounded_num+1),w
	movwf	(___fttol@f1+1)
	movf	(round_to_one_decimal@rounded_num+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u190_25
	movlw	low(032h)
	subwf	(0+(?___awmod)),w
u190_25:

	skipnc
	goto	u190_21
	goto	u190_20
u190_21:
	goto	i1l1457
u190_20:
	line	35
	
i1l1455:	
;LE5-2.c: 35: rounded_num = floor(rounded_num);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(round_to_one_decimal@rounded_num),w
	movwf	(floor@x)
	movf	(round_to_one_decimal@rounded_num+1),w
	movwf	(floor@x+1)
	movf	(round_to_one_decimal@rounded_num+2),w
	movwf	(floor@x+2)
	fcall	_floor
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floor)),w
	movwf	(round_to_one_decimal@rounded_num)
	movf	(1+(?_floor)),w
	movwf	(round_to_one_decimal@rounded_num+1)
	movf	(2+(?_floor)),w
	movwf	(round_to_one_decimal@rounded_num+2)
	goto	i1l1459
	line	36
	
i1l40:	
	line	37
	
i1l1457:	
;LE5-2.c: 36: else
;LE5-2.c: 37: rounded_num = floor(rounded_num);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(round_to_one_decimal@rounded_num),w
	movwf	(floor@x)
	movf	(round_to_one_decimal@rounded_num+1),w
	movwf	(floor@x+1)
	movf	(round_to_one_decimal@rounded_num+2),w
	movwf	(floor@x+2)
	fcall	_floor
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_floor)),w
	movwf	(round_to_one_decimal@rounded_num)
	movf	(1+(?_floor)),w
	movwf	(round_to_one_decimal@rounded_num+1)
	movf	(2+(?_floor)),w
	movwf	(round_to_one_decimal@rounded_num+2)
	goto	i1l1459
	
i1l41:	
	line	39
	
i1l1459:	
;LE5-2.c: 39: return rounded_num/1000.0;
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x7a
	movwf	(___ftdiv@f2+1)
	movlw	0x44
	movwf	(___ftdiv@f2+2)
	movf	(round_to_one_decimal@rounded_num),w
	movwf	(___ftdiv@f1)
	movf	(round_to_one_decimal@rounded_num+1),w
	movwf	(___ftdiv@f1+1)
	movf	(round_to_one_decimal@rounded_num+2),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_round_to_one_decimal)
	movf	(1+(?___ftdiv)),w
	movwf	(?_round_to_one_decimal+1)
	movf	(2+(?___ftdiv)),w
	movwf	(?_round_to_one_decimal+2)
	goto	i1l42
	
i1l1461:	
	line	40
	
i1l42:	
	return
	opt stack 0
GLOBAL	__end_of_round_to_one_decimal
	__end_of_round_to_one_decimal:
	signat	_round_to_one_decimal,4219
	global	_round

;; *************** function _round *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\round.c"
;; Parameters:    Size  Location     Type
;;  x               3   63[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f               3   66[BANK0 ] float 
;; Return value:  Size  Location     Type
;;                  3   63[BANK0 ] float 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___ftadd
;;		___ftneg
;;		_trunc
;; This function is called by:
;;		_round_to_one_decimal
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\round.c"
	line	6
global __ptext3
__ptext3:	;psect for function _round
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\round.c"
	line	6
	global	__size_of_round
	__size_of_round	equ	__end_of_round-_round
	
_round:	
;incstack = 0
	opt	stack 2
; Regs used in _round: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
i1l1269:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(round@x),w
	movwf	(___ftadd@f1)
	movf	(round@x+1),w
	movwf	(___ftadd@f1+1)
	movf	(round@x+2),w
	movwf	(___ftadd@f1+2)
	movf	(round@x),w
	movwf	(trunc@x)
	movf	(round@x+1),w
	movwf	(trunc@x+1)
	movf	(round@x+2),w
	movwf	(trunc@x+2)
	fcall	_trunc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trunc)),w
	movwf	(___ftneg@f1)
	movf	(1+(?_trunc)),w
	movwf	(___ftneg@f1+1)
	movf	(2+(?_trunc)),w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftneg)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftneg)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(round@f)
	movf	(1+(?___ftadd)),w
	movwf	(round@f+1)
	movf	(2+(?___ftadd)),w
	movwf	(round@f+2)
	line	11
	
i1l1271:	
	movf	(round@f),w
	movwf	(___ftadd@f1)
	movf	(round@f+1),w
	movwf	(___ftadd@f1+1)
	movf	(round@f+2),w
	movwf	(___ftadd@f1+2)
	movf	(round@x),w
	movwf	(___ftadd@f2)
	movf	(round@x+1),w
	movwf	(___ftadd@f2+1)
	movf	(round@x+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(round@x)
	movf	(1+(?___ftadd)),w
	movwf	(round@x+1)
	movf	(2+(?___ftadd)),w
	movwf	(round@x+2)
	line	12
	
i1l1273:	
	movf	(round@x),w
	movwf	(trunc@x)
	movf	(round@x+1),w
	movwf	(trunc@x+1)
	movf	(round@x+2),w
	movwf	(trunc@x+2)
	fcall	_trunc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_trunc)),w
	movwf	(?_round)
	movf	(1+(?_trunc)),w
	movwf	(?_round+1)
	movf	(2+(?_trunc)),w
	movwf	(?_round+2)
	goto	i1l524
	
i1l1275:	
	line	13
	
i1l524:	
	return
	opt stack 0
GLOBAL	__end_of_round
	__end_of_round:
	signat	_round,4219
	global	_trunc

;; *************** function _trunc *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\trunc.c"
;; Parameters:    Size  Location     Type
;;  x               3   38[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  i               3   42[BANK0 ] float 
;;  expon           2   45[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   38[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___altoft
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_round
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\trunc.c"
	line	13
global __ptext4
__ptext4:	;psect for function _trunc
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\trunc.c"
	line	13
	global	__size_of_trunc
	__size_of_trunc	equ	__end_of_trunc-_trunc
	
_trunc:	
;incstack = 0
	opt	stack 2
; Regs used in _trunc: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
i1l1251:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(trunc@x),w
	movwf	(frexp@value)
	movf	(trunc@x+1),w
	movwf	(frexp@value+1)
	movf	(trunc@x+2),w
	movwf	(frexp@value+2)
	movlw	(trunc@expon)&0ffh
	movwf	(??_trunc+0)+0
	movf	(??_trunc+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
i1l1253:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(trunc@expon+1),7
	goto	u152_21
	goto	u152_20
u152_21:
	goto	i1l1259
u152_20:
	line	20
	
i1l1255:	
	movlw	0x0
	movwf	(?_trunc)
	movlw	0x0
	movwf	(?_trunc+1)
	movlw	0x0
	movwf	(?_trunc+2)
	goto	i1l530
	
i1l1257:	
	goto	i1l530
	
i1l529:	
	line	21
	
i1l1259:	
	movlw	high(015h)
	subwf	(trunc@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(trunc@expon),w
	skipc
	goto	u153_21
	goto	u153_20
u153_21:
	goto	i1l1263
u153_20:
	line	22
	
i1l1261:	
	goto	i1l530
	
i1l531:	
	line	23
	
i1l1263:	
	movf	(trunc@x),w
	movwf	(___fttol@f1)
	movf	(trunc@x+1),w
	movwf	(___fttol@f1+1)
	movf	(trunc@x+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	movwf	(___altoft@c+3)
	movf	(2+(?___fttol)),w
	movwf	(___altoft@c+2)
	movf	(1+(?___fttol)),w
	movwf	(___altoft@c+1)
	movf	(0+(?___fttol)),w
	movwf	(___altoft@c)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(trunc@i)
	movf	(1+(?___altoft)),w
	movwf	(trunc@i+1)
	movf	(2+(?___altoft)),w
	movwf	(trunc@i+2)
	line	24
	
i1l1265:	
	movf	(trunc@i),w
	movwf	(?_trunc)
	movf	(trunc@i+1),w
	movwf	(?_trunc+1)
	movf	(trunc@i+2),w
	movwf	(?_trunc+2)
	goto	i1l530
	
i1l1267:	
	line	25
	
i1l530:	
	return
	opt stack 0
GLOBAL	__end_of_trunc
	__end_of_trunc:
	signat	_trunc,4219
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3   47[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   47[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;;		_round
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext5
__ptext5:	;psect for function ___ftneg
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftneg: [wreg]
	line	17
	
i1l1243:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u151_21
	goto	u151_20
u151_21:
	goto	i1l1247
u151_20:
	line	18
	
i1l1245:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	i1l1247
	
i1l400:	
	line	19
	
i1l1247:	
	goto	i1l401
	
i1l1249:	
	line	20
	
i1l401:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
	global	_floor

;; *************** function _floor *****************
;; Defined at:
;;		line 13 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
;; Parameters:    Size  Location     Type
;;  x               3   63[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  i               3   67[BANK0 ] float 
;;  expon           2   70[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  3   63[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___altoft
;;		___ftadd
;;		___ftge
;;		___fttol
;;		_frexp
;; This function is called by:
;;		_round_to_one_decimal
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
global __ptext6
__ptext6:	;psect for function _floor
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\floor.c"
	line	13
	global	__size_of_floor
	__size_of_floor	equ	__end_of_floor-_floor
	
_floor:	
;incstack = 0
	opt	stack 3
; Regs used in _floor: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
i1l1277:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@x),w
	movwf	(frexp@value)
	movf	(floor@x+1),w
	movwf	(frexp@value+1)
	movf	(floor@x+2),w
	movwf	(frexp@value+2)
	movlw	(floor@expon)&0ffh
	movwf	(??_floor+0)+0
	movf	(??_floor+0)+0,w
	movwf	(frexp@eptr)
	fcall	_frexp
	line	19
	
i1l1279:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(floor@expon+1),7
	goto	u154_21
	goto	u154_20
u154_21:
	goto	i1l1291
u154_20:
	line	20
	
i1l1281:	
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u155_21
	goto	u155_20
u155_21:
	goto	i1l1287
u155_20:
	line	21
	
i1l1283:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x80
	movwf	(?_floor+1)
	movlw	0xbf
	movwf	(?_floor+2)
	goto	i1l310
	
i1l1285:	
	goto	i1l310
	
i1l309:	
	line	22
	
i1l1287:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_floor)
	movlw	0x0
	movwf	(?_floor+1)
	movlw	0x0
	movwf	(?_floor+2)
	goto	i1l310
	
i1l1289:	
	goto	i1l310
	line	23
	
i1l308:	
	line	24
	
i1l1291:	
	movlw	high(015h)
	subwf	(floor@expon+1),w
	movlw	low(015h)
	skipnz
	subwf	(floor@expon),w
	skipc
	goto	u156_21
	goto	u156_20
u156_21:
	goto	i1l1295
u156_20:
	line	25
	
i1l1293:	
	goto	i1l310
	
i1l311:	
	line	26
	
i1l1295:	
	movf	(floor@x),w
	movwf	(___fttol@f1)
	movf	(floor@x+1),w
	movwf	(___fttol@f1+1)
	movf	(floor@x+2),w
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	movwf	(___altoft@c+3)
	movf	(2+(?___fttol)),w
	movwf	(___altoft@c+2)
	movf	(1+(?___fttol)),w
	movwf	(___altoft@c+1)
	movf	(0+(?___fttol)),w
	movwf	(___altoft@c)

	fcall	___altoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___altoft)),w
	movwf	(floor@i)
	movf	(1+(?___altoft)),w
	movwf	(floor@i+1)
	movf	(2+(?___altoft)),w
	movwf	(floor@i+2)
	line	27
	movf	(floor@x),w
	movwf	(___ftge@ff1)
	movf	(floor@x+1),w
	movwf	(___ftge@ff1+1)
	movf	(floor@x+2),w
	movwf	(___ftge@ff1+2)
	movf	(floor@i),w
	movwf	(___ftge@ff2)
	movf	(floor@i+1),w
	movwf	(___ftge@ff2+1)
	movf	(floor@i+2),w
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u157_21
	goto	u157_20
u157_21:
	goto	i1l1301
u157_20:
	line	28
	
i1l1297:	
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x80
	movwf	(___ftadd@f1+1)
	movlw	0xbf
	movwf	(___ftadd@f1+2)
	movf	(floor@i),w
	movwf	(___ftadd@f2)
	movf	(floor@i+1),w
	movwf	(___ftadd@f2+1)
	movf	(floor@i+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?_floor)
	movf	(1+(?___ftadd)),w
	movwf	(?_floor+1)
	movf	(2+(?___ftadd)),w
	movwf	(?_floor+2)
	goto	i1l310
	
i1l1299:	
	goto	i1l310
	
i1l312:	
	line	29
	
i1l1301:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(floor@i),w
	movwf	(?_floor)
	movf	(floor@i+1),w
	movwf	(?_floor+1)
	movf	(floor@i+2),w
	movwf	(?_floor+2)
	goto	i1l310
	
i1l1303:	
	line	30
	
i1l310:	
	return
	opt stack 0
GLOBAL	__end_of_floor
	__end_of_floor:
	signat	_floor,4219
	global	_frexp

;; *************** function _frexp *****************
;; Defined at:
;;		line 254 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
;; Parameters:    Size  Location     Type
;;  value           3    0[COMMON] int 
;;  eptr            1    3[COMMON] PTR int 
;;		 -> trunc@expon(2), floor@expon(2), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] PTR int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
global __ptext7
__ptext7:	;psect for function _frexp
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\frexp.c"
	line	254
	global	__size_of_frexp
	__size_of_frexp	equ	__end_of_frexp-_frexp
	
_frexp:	
;incstack = 0
	opt	stack 3
; Regs used in _frexp: [wreg-fsr0h+status,2+status,0+btemp+1]
	line	256
	
i1l1091:	
	movf	(frexp@value+2),w
	iorwf	(frexp@value+1),w
	iorwf	(frexp@value),w
	skipz
	goto	u111_21
	goto	u111_20
u111_21:
	goto	i1l1097
u111_20:
	line	257
	
i1l1093:	
	movf	(frexp@eptr),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	incf	fsr0,f
	clrf	indf
	goto	i1l318
	line	258
	
i1l1095:	
;	Return value of _frexp is never used
	goto	i1l318
	line	259
	
i1l317:	
	line	261
	
i1l1097:	
	movf	0+(frexp@value)+02h,w
	andlw	(1<<7)-1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	clrc
	rlf	(??_frexp+0)+0,f
	rlf	(??_frexp+0)+1,f
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	movwf	indf
	line	262
	rlf	0+(frexp@value)+01h,w
	rlf	0+(frexp@value)+01h,w
	andlw	1
	movwf	(??_frexp+0)+0
	clrf	(??_frexp+0)+0+1
	movf	(frexp@eptr),w
	movwf	fsr0
	movf	0+(??_frexp+0)+0,w
	iorwf	indf,f
	incf	fsr0,f
	movf	1+(??_frexp+0)+0,w
	iorwf	indf,f
	line	263
	
i1l1099:	
	movf	(frexp@eptr),w
	movwf	fsr0
	movlw	low(-126)
	addwf	indf,f
	incfsz	fsr0,f
	movf	indf,w
	skipnc
	incf	indf,w
	movwf	btemp+1
	movlw	high(-126)
	addwf	btemp+1,w
	movwf	indf
	decf	fsr0,f
	line	268
	
i1l1101:	
	movf	0+(frexp@value)+02h,w
	andlw	not (((1<<7)-1)<<0)
	iorlw	(03Fh & ((1<<7)-1))<<0
	movwf	0+(frexp@value)+02h
	line	269
	
i1l1103:	
	bcf	0+(frexp@value)+01h,7
	goto	i1l318
	line	273
	
i1l1105:	
	line	274
;	Return value of _frexp is never used
	
i1l318:	
	return
	opt stack 0
GLOBAL	__end_of_frexp
	__end_of_frexp:
	signat	_frexp,8315
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   25[BANK0 ] unsigned long 
;;  exp1            1   29[BANK0 ] unsigned char 
;;  sign1           1   24[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   16[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_round_to_one_decimal
;;		_ISR
;;		_floor
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext8
__ptext8:	;psect for function ___fttol
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 3
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
i1l1107:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u112_21
	goto	u112_20
u112_21:
	goto	i1l1113
u112_20:
	line	50
	
i1l1109:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l410
	
i1l1111:	
	goto	i1l410
	
i1l409:	
	line	51
	
i1l1113:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u113_25:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u113_20:
	addlw	-1
	skipz
	goto	u113_25
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
i1l1115:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
i1l1117:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
i1l1119:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
i1l1121:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
i1l1123:	
	btfss	(___fttol@exp1),7
	goto	u114_21
	goto	u114_20
u114_21:
	goto	i1l1133
u114_20:
	line	57
	
i1l1125:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u115_21
	goto	u115_20
u115_21:
	goto	i1l1131
u115_20:
	line	58
	
i1l1127:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l410
	
i1l1129:	
	goto	i1l410
	
i1l412:	
	goto	i1l1131
	line	59
	
i1l413:	
	line	60
	
i1l1131:	
	movlw	01h
u116_25:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u116_25

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u117_21
	goto	u117_20
u117_21:
	goto	i1l1131
u117_20:
	goto	i1l1143
	
i1l414:	
	line	62
	goto	i1l1143
	
i1l411:	
	line	63
	
i1l1133:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u118_21
	goto	u118_20
u118_21:
	goto	i1l1141
u118_20:
	line	64
	
i1l1135:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	i1l410
	
i1l1137:	
	goto	i1l410
	
i1l416:	
	line	65
	goto	i1l1141
	
i1l418:	
	line	66
	
i1l1139:	
	movlw	01h
	movwf	(??___fttol+0)+0
u119_25:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u119_25
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	i1l1141
	line	68
	
i1l417:	
	line	65
	
i1l1141:	
	movf	(___fttol@exp1),f
	skipz
	goto	u120_21
	goto	u120_20
u120_21:
	goto	i1l1139
u120_20:
	goto	i1l1143
	
i1l419:	
	goto	i1l1143
	line	69
	
i1l415:	
	line	70
	
i1l1143:	
	movf	(___fttol@sign1),w
	skipz
	goto	u121_20
	goto	i1l1147
u121_20:
	line	71
	
i1l1145:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	i1l1147
	
i1l420:	
	line	72
	
i1l1147:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	i1l410
	
i1l1149:	
	line	73
	
i1l410:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftge

;; *************** function ___ftge *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_floor
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext9
__ptext9:	;psect for function ___ftge
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
i1l1223:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u146_21
	goto	u146_20
u146_21:
	goto	i1l1227
u146_20:
	line	7
	
i1l1225:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u147_21
	goto	u147_22
u147_21:
	addwf	(??___ftge+0)+1,f
	
u147_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u147_23
	goto	u147_24
u147_23:
	addwf	(??___ftge+0)+2,f
	
u147_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	i1l1227
	
i1l382:	
	line	8
	
i1l1227:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u148_21
	goto	u148_20
u148_21:
	goto	i1l1231
u148_20:
	line	9
	
i1l1229:	
	movlw	low(0800000h)
	movwf	((??___ftge+0)+0)
	movlw	high(0800000h)
	movwf	((??___ftge+0)+0+1)
	movlw	low highword(0800000h)
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u149_21
	goto	u149_22
u149_21:
	addwf	(??___ftge+0)+1,f
	
u149_22:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u149_23
	goto	u149_24
u149_23:
	addwf	(??___ftge+0)+2,f
	
u149_24:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	i1l1231
	
i1l383:	
	line	10
	
i1l1231:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
i1l1233:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
i1l1235:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u150_25
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u150_25
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u150_25:
	skipnc
	goto	u150_21
	goto	u150_20
u150_21:
	goto	i1l1239
u150_20:
	
i1l1237:	
	clrc
	
	goto	i1l384
	
i1l1041:	
	
i1l1239:	
	setc
	
	goto	i1l384
	
i1l1043:	
	goto	i1l384
	
i1l1241:	
	line	13
	
i1l384:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   50[BANK0 ] float 
;;  f2              3   53[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   62[BANK0 ] unsigned char 
;;  exp2            1   61[BANK0 ] unsigned char 
;;  sign            1   60[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   50[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ISR
;;		_floor
;;		_round
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext10
__ptext10:	;psect for function ___ftadd
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 3
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
i1l1151:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
i1l1153:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u122_20
	goto	i1l1159
u122_20:
	
i1l1155:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u123_21
	goto	u123_20
u123_21:
	goto	i1l1163
u123_20:
	
i1l1157:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u124_21
	goto	u124_20
u124_21:
	goto	i1l1163
u124_20:
	goto	i1l1159
	
i1l343:	
	line	93
	
i1l1159:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	i1l344
	
i1l1161:	
	goto	i1l344
	
i1l341:	
	line	94
	
i1l1163:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u125_20
	goto	i1l347
u125_20:
	
i1l1165:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u126_21
	goto	u126_20
u126_21:
	goto	i1l1169
u126_20:
	
i1l1167:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u127_21
	goto	u127_20
u127_21:
	goto	i1l1169
u127_20:
	
i1l347:	
	line	95
	goto	i1l344
	
i1l345:	
	line	96
	
i1l1169:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
i1l1171:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u128_21
	goto	u128_20
u128_21:
	goto	i1l348
u128_20:
	line	98
	
i1l1173:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
i1l348:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u129_21
	goto	u129_20
u129_21:
	goto	i1l349
u129_20:
	line	100
	
i1l1175:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
i1l349:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
i1l1177:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
i1l1179:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u130_21
	goto	u130_20
u130_21:
	goto	i1l1191
u130_20:
	goto	i1l1181
	line	109
	
i1l351:	
	line	110
	
i1l1181:	
	movlw	01h
u131_25:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u131_25
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
i1l1183:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u132_21
	goto	u132_20
u132_21:
	goto	i1l1189
u132_20:
	
i1l1185:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u133_21
	goto	u133_20
u133_21:
	goto	i1l1181
u133_20:
	goto	i1l1189
	
i1l353:	
	goto	i1l1189
	
i1l354:	
	line	113
	goto	i1l1189
	
i1l356:	
	line	114
	
i1l1187:	
	movlw	01h
u134_25:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u134_25

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	i1l1189
	line	116
	
i1l355:	
	line	113
	
i1l1189:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u135_21
	goto	u135_20
u135_21:
	goto	i1l1187
u135_20:
	goto	i1l358
	
i1l357:	
	line	117
	goto	i1l358
	
i1l350:	
	
i1l1191:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u136_21
	goto	u136_20
u136_21:
	goto	i1l358
u136_20:
	goto	i1l1193
	line	120
	
i1l360:	
	line	121
	
i1l1193:	
	movlw	01h
u137_25:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u137_25
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
i1l1195:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u138_21
	goto	u138_20
u138_21:
	goto	i1l1201
u138_20:
	
i1l1197:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u139_21
	goto	u139_20
u139_21:
	goto	i1l1193
u139_20:
	goto	i1l1201
	
i1l362:	
	goto	i1l1201
	
i1l363:	
	line	124
	goto	i1l1201
	
i1l365:	
	line	125
	
i1l1199:	
	movlw	01h
u140_25:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u140_25

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	i1l1201
	line	127
	
i1l364:	
	line	124
	
i1l1201:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u141_21
	goto	u141_20
u141_21:
	goto	i1l1199
u141_20:
	goto	i1l358
	
i1l366:	
	goto	i1l358
	line	128
	
i1l359:	
	line	129
	
i1l358:	
	btfss	(___ftadd@sign),(7)&7
	goto	u142_21
	goto	u142_20
u142_21:
	goto	i1l1205
u142_20:
	line	131
	
i1l1203:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	i1l1205
	line	133
	
i1l367:	
	line	134
	
i1l1205:	
	btfss	(___ftadd@sign),(6)&7
	goto	u143_21
	goto	u143_20
u143_21:
	goto	i1l1209
u143_20:
	line	136
	
i1l1207:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	i1l1209
	line	138
	
i1l368:	
	line	139
	
i1l1209:	
	clrf	(___ftadd@sign)
	line	140
	
i1l1211:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u144_21
	addwf	(___ftadd@f2+1),f
u144_21:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u144_22
	addwf	(___ftadd@f2+2),f
u144_22:

	line	141
	
i1l1213:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u145_21
	goto	u145_20
u145_21:
	goto	i1l1219
u145_20:
	line	142
	
i1l1215:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
i1l1217:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	i1l1219
	line	145
	
i1l369:	
	line	146
	
i1l1219:	
	movf	(___ftadd@f2),w
	movwf	(___ftpack@arg)
	movf	(___ftadd@f2+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftadd@f2+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	i1l344
	
i1l1221:	
	line	148
	
i1l344:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___altoft

;; *************** function ___altoft *****************
;; Defined at:
;;		line 42 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
;; Parameters:    Size  Location     Type
;;  c               4   30[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;  sign            1   37[BANK0 ] unsigned char 
;;  exp             1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   30[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_floor
;;		_trunc
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
global __ptext11
__ptext11:	;psect for function ___altoft
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\altoft.c"
	line	42
	global	__size_of___altoft
	__size_of___altoft	equ	__end_of___altoft-___altoft
	
___altoft:	
;incstack = 0
	opt	stack 2
; Regs used in ___altoft: [wreg+status,2+status,0+pclath+cstack]
	line	45
	
i1l1075:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___altoft@sign)
	line	46
	
i1l1077:	
	movlw	(08Eh)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___altoft@exp)
	line	47
	
i1l1079:	
	btfss	(___altoft@c+3),7
	goto	u108_21
	goto	u108_20
u108_21:
	goto	i1l1085
u108_20:
	line	48
	
i1l1081:	
	comf	(___altoft@c),f
	comf	(___altoft@c+1),f
	comf	(___altoft@c+2),f
	comf	(___altoft@c+3),f
	incf	(___altoft@c),f
	skipnz
	incf	(___altoft@c+1),f
	skipnz
	incf	(___altoft@c+2),f
	skipnz
	incf	(___altoft@c+3),f
	line	49
	clrf	(___altoft@sign)
	incf	(___altoft@sign),f
	goto	i1l1085
	line	50
	
i1l218:	
	line	52
	goto	i1l1085
	
i1l220:	
	line	53
	
i1l1083:	
	movlw	01h
u109_25:
	clrc
	rrf	(___altoft@c+3),f
	rrf	(___altoft@c+2),f
	rrf	(___altoft@c+1),f
	rrf	(___altoft@c),f
	addlw	-1
	skipz
	goto	u109_25

	line	54
	movlw	(01h)
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	addwf	(___altoft@exp),f
	goto	i1l1085
	line	55
	
i1l219:	
	line	52
	
i1l1085:	
	movlw	high highword(-16777216)
	andwf	(___altoft@c+3),w
	btfss	status,2
	goto	u110_21
	goto	u110_20
u110_21:
	goto	i1l1083
u110_20:
	goto	i1l1087
	
i1l221:	
	line	56
	
i1l1087:	
	movf	(___altoft@c),w
	movwf	(___ftpack@arg)
	movf	(___altoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___altoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___altoft@exp),w
	movwf	(??___altoft+0)+0
	movf	(??___altoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___altoft@sign),w
	movwf	(??___altoft+1)+0
	movf	(??___altoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___altoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___altoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___altoft+2)
	goto	i1l222
	
i1l1089:	
	line	57
	
i1l222:	
	return
	opt stack 0
GLOBAL	__end_of___altoft
	__end_of___altoft:
	signat	___altoft,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[BANK0 ] float 
;;  f2              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   11[BANK0 ] unsigned um
;;  sign            1   15[BANK0 ] unsigned char 
;;  cntr            1   14[BANK0 ] unsigned char 
;;  exp             1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_round_to_one_decimal
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext12
__ptext12:	;psect for function ___ftmul
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
i1l1385:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u175_21
	goto	u175_20
u175_21:
	goto	i1l1391
u175_20:
	line	68
	
i1l1387:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l390
	
i1l1389:	
	goto	i1l390
	
i1l389:	
	line	69
	
i1l1391:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u176_21
	goto	u176_20
u176_21:
	goto	i1l1397
u176_20:
	line	70
	
i1l1393:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	i1l390
	
i1l1395:	
	goto	i1l390
	
i1l391:	
	line	71
	
i1l1397:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	72
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u177_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u177_20:
	addlw	-1
	skipz
	goto	u177_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	73
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u178_25:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u178_20:
	addlw	-1
	skipz
	goto	u178_25
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	74
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	75
	
i1l1399:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
i1l1401:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
i1l1403:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
i1l1405:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
i1l1407:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l1409
	line	135
	
i1l392:	
	line	136
	
i1l1409:	
	btfss	(___ftmul@f1),(0)&7
	goto	u179_21
	goto	u179_20
u179_21:
	goto	i1l1413
u179_20:
	line	137
	
i1l1411:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u180_21
	addwf	(___ftmul@f3_as_product+1),f
u180_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u180_22
	addwf	(___ftmul@f3_as_product+2),f
u180_22:

	goto	i1l1413
	
i1l393:	
	line	138
	
i1l1413:	
	movlw	01h
u181_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u181_25

	line	139
	
i1l1415:	
	movlw	01h
u182_25:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u182_25
	line	140
	
i1l1417:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u183_21
	goto	u183_20
u183_21:
	goto	i1l1409
u183_20:
	goto	i1l1419
	
i1l394:	
	line	143
	
i1l1419:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	i1l1421
	line	144
	
i1l395:	
	line	145
	
i1l1421:	
	btfss	(___ftmul@f1),(0)&7
	goto	u184_21
	goto	u184_20
u184_21:
	goto	i1l1425
u184_20:
	line	146
	
i1l1423:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u185_21
	addwf	(___ftmul@f3_as_product+1),f
u185_21:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u185_22
	addwf	(___ftmul@f3_as_product+2),f
u185_22:

	goto	i1l1425
	
i1l396:	
	line	147
	
i1l1425:	
	movlw	01h
u186_25:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u186_25

	line	148
	
i1l1427:	
	movlw	01h
u187_25:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u187_25

	line	149
	
i1l1429:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u188_21
	goto	u188_20
u188_21:
	goto	i1l1421
u188_20:
	goto	i1l1431
	
i1l397:	
	line	156
	
i1l1431:	
	movf	(___ftmul@f3_as_product),w
	movwf	(___ftpack@arg)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	i1l390
	
i1l1433:	
	line	157
	
i1l390:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[COMMON] float 
;;  f1              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3              3    5[BANK0 ] float 
;;  sign            1    9[BANK0 ] unsigned char 
;;  exp             1    8[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_round_to_one_decimal
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext13
__ptext13:	;psect for function ___ftdiv
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
i1l1343:	
	movf	(___ftdiv@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u167_21
	goto	u167_20
u167_21:
	goto	i1l1349
u167_20:
	line	56
	
i1l1345:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l375
	
i1l1347:	
	goto	i1l375
	
i1l374:	
	line	57
	
i1l1349:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u168_21
	goto	u168_20
u168_21:
	goto	i1l1355
u168_20:
	line	58
	
i1l1351:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	i1l375
	
i1l1353:	
	goto	i1l375
	
i1l376:	
	line	59
	
i1l1355:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
i1l1357:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
i1l1359:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u169_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u169_20:
	addlw	-1
	skipz
	goto	u169_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
i1l1361:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u170_25:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u170_20:
	addlw	-1
	skipz
	goto	u170_25
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
i1l1363:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
i1l1365:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
i1l1367:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	i1l1369
	line	69
	
i1l377:	
	line	70
	
i1l1369:	
	movlw	01h
u171_25:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u171_25
	line	71
	
i1l1371:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u172_25
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u172_25
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u172_25:
	skipc
	goto	u172_21
	goto	u172_20
u172_21:
	goto	i1l1377
u172_20:
	line	72
	
i1l1373:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
i1l1375:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	i1l1377
	line	74
	
i1l378:	
	line	75
	
i1l1377:	
	movlw	01h
u173_25:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u173_25
	line	76
	
i1l1379:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u174_21
	goto	u174_20
u174_21:
	goto	i1l1369
u174_20:
	goto	i1l1381
	
i1l379:	
	line	77
	
i1l1381:	
	movf	(___ftdiv@f3),w
	movwf	(___ftpack@arg)
	movf	(___ftdiv@f3+1),w
	movwf	(___ftpack@arg+1)
	movf	(___ftdiv@f3+2),w
	movwf	(___ftpack@arg+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	i1l375
	
i1l1383:	
	line	78
	
i1l375:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   30[BANK0 ] int 
;;  dividend        2   32[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   36[BANK0 ] unsigned char 
;;  counter         1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   30[BANK0 ] int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_round_to_one_decimal
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext14
__ptext14:	;psect for function ___awmod
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
i1l1305:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	14
	
i1l1307:	
	btfss	(___awmod@dividend+1),7
	goto	u158_21
	goto	u158_20
u158_21:
	goto	i1l1313
u158_20:
	line	15
	
i1l1309:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
i1l1311:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	i1l1313
	line	17
	
i1l270:	
	line	18
	
i1l1313:	
	btfss	(___awmod@divisor+1),7
	goto	u159_21
	goto	u159_20
u159_21:
	goto	i1l1317
u159_20:
	line	19
	
i1l1315:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	i1l1317
	
i1l271:	
	line	20
	
i1l1317:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u160_21
	goto	u160_20
u160_21:
	goto	i1l1335
u160_20:
	line	21
	
i1l1319:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	i1l1325
	
i1l274:	
	line	23
	
i1l1321:	
	movlw	01h
	
u161_25:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u161_25
	line	24
	
i1l1323:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	i1l1325
	line	25
	
i1l273:	
	line	22
	
i1l1325:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u162_21
	goto	u162_20
u162_21:
	goto	i1l1321
u162_20:
	goto	i1l1327
	
i1l275:	
	goto	i1l1327
	line	26
	
i1l276:	
	line	27
	
i1l1327:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u163_25
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u163_25:
	skipc
	goto	u163_21
	goto	u163_20
u163_21:
	goto	i1l1331
u163_20:
	line	28
	
i1l1329:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	i1l1331
	
i1l277:	
	line	29
	
i1l1331:	
	movlw	01h
	
u164_25:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u164_25
	line	30
	
i1l1333:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u165_21
	goto	u165_20
u165_21:
	goto	i1l1327
u165_20:
	goto	i1l1335
	
i1l278:	
	goto	i1l1335
	line	31
	
i1l272:	
	line	32
	
i1l1335:	
	movf	(___awmod@sign),w
	skipz
	goto	u166_20
	goto	i1l1339
u166_20:
	line	33
	
i1l1337:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	i1l1339
	
i1l279:	
	line	34
	
i1l1339:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	i1l280
	
i1l1341:	
	line	35
	
i1l280:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	_readADC

;; *************** function _readADC *****************
;; Defined at:
;;		line 23 in file "D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            2    4[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	23
global __ptext15
__ptext15:	;psect for function _readADC
psect	text15
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	23
	global	__size_of_readADC
	__size_of_readADC	equ	__end_of_readADC-_readADC
	
_readADC:	
;incstack = 0
	opt	stack 6
; Regs used in _readADC: [wreg+status,2+status,0+btemp+1]
	line	25
	
i1l1439:	
;LE5-2.c: 25: int temp = 0;
	clrf	(readADC@temp)
	clrf	(readADC@temp+1)
	line	27
	
i1l1441:	
;LE5-2.c: 27: temp = ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_readADC+0)+0
	clrf	(??_readADC+0)+0+1
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	28
	
i1l1443:	
;LE5-2.c: 28: temp = temp << 8;
	movf	(readADC@temp+1),w
	movwf	(??_readADC+0)+0+1
	movf	(readADC@temp),w
	movwf	(??_readADC+0)+0
	movf	(??_readADC+0)+0,w
	movwf	(??_readADC+0)+1
	clrf	(??_readADC+0)+0
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	29
	
i1l1445:	
;LE5-2.c: 29: temp = temp | ADRESL;
	movf	(readADC@temp),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(158)^080h,w	;volatile
	movwf	(??_readADC+0)+0
	movf	(readADC@temp+1),w
	movwf	1+(??_readADC+0)+0
	movf	0+(??_readADC+0)+0,w
	movwf	(readADC@temp)
	movf	1+(??_readADC+0)+0,w
	movwf	(readADC@temp+1)
	line	30
	
i1l1447:	
;LE5-2.c: 30: return temp;
	movf	(readADC@temp+1),w
	clrf	(?_readADC+1)
	addwf	(?_readADC+1)
	movf	(readADC@temp),w
	clrf	(?_readADC)
	addwf	(?_readADC)

	goto	i1l37
	
i1l1449:	
	line	31
	
i1l37:	
	return
	opt stack 0
GLOBAL	__end_of_readADC
	__end_of_readADC:
	signat	_readADC,90
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 19 in file "D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
;; Parameters:    Size  Location     Type
;;  cnt             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	line	19
global __ptext16
__ptext16:	;psect for function _delay
psect	text16
	file	"D:\JinBus\CpE 3201\Practical Activity #5\CpE 3201-LE5-2\LE5-2.c"
	line	19
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg]
	line	21
	
i1l1435:	
;LE5-2.c: 21: while(cnt--);
	goto	i1l1437
	
i1l32:	
	goto	i1l1437
	
i1l31:	
	
i1l1437:	
	movlw	low(-1)
	addwf	(delay@cnt),f
	skipnc
	incf	(delay@cnt+1),f
	movlw	high(-1)
	addwf	(delay@cnt+1),f
	movlw	high(-1)
	xorwf	((delay@cnt+1)),w
	skipz
	goto	u189_25
	movlw	low(-1)
	xorwf	((delay@cnt)),w
u189_25:

	skipz
	goto	u189_21
	goto	u189_20
u189_21:
	goto	i1l1437
u189_20:
	goto	i1l34
	
i1l33:	
	line	22
	
i1l34:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___awtoft

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 32 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ISR
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
global __ptext17
__ptext17:	;psect for function ___awtoft
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awtoft.c"
	line	32
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
i1l1463:	
	clrf	(___awtoft@sign)
	line	37
	
i1l1465:	
	btfss	(___awtoft@c+1),7
	goto	u191_21
	goto	u191_20
u191_21:
	goto	i1l1471
u191_20:
	line	38
	
i1l1467:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	
i1l1469:	
	clrf	(___awtoft@sign)
	incf	(___awtoft@sign),f
	goto	i1l1471
	line	40
	
i1l285:	
	line	41
	
i1l1471:	
	movf	(___awtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___awtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	(___ftpack@exp)
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	i1l286
	
i1l1473:	
	line	42
	
i1l286:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
	signat	___awtoft,4219
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___altoft
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext18
__ptext18:	;psect for function ___ftpack
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 2
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
i1l1045:	
	movf	(___ftpack@exp),w
	skipz
	goto	u97_20
	goto	i1l1049
u97_20:
	
i1l1047:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u98_21
	goto	u98_20
u98_21:
	goto	i1l1055
u98_20:
	goto	i1l1049
	
i1l291:	
	line	65
	
i1l1049:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	i1l292
	
i1l1051:	
	goto	i1l292
	
i1l289:	
	line	66
	goto	i1l1055
	
i1l294:	
	line	67
	
i1l1053:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u99_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u99_25

	goto	i1l1055
	line	69
	
i1l293:	
	line	66
	
i1l1055:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u100_21
	goto	u100_20
u100_21:
	goto	i1l1053
u100_20:
	goto	i1l296
	
i1l295:	
	line	70
	goto	i1l296
	
i1l297:	
	line	71
	
i1l1057:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
i1l1059:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
i1l1061:	
	movlw	01h
u101_25:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u101_25

	line	74
	
i1l296:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u102_21
	goto	u102_20
u102_21:
	goto	i1l1057
u102_20:
	goto	i1l1065
	
i1l298:	
	line	75
	goto	i1l1065
	
i1l300:	
	line	76
	
i1l1063:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u103_25:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u103_25
	goto	i1l1065
	line	78
	
i1l299:	
	line	75
	
i1l1065:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u104_21
	goto	u104_20
u104_21:
	goto	i1l1063
u104_20:
	
i1l301:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u105_21
	goto	u105_20
u105_21:
	goto	i1l302
u105_20:
	line	80
	
i1l1067:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
i1l302:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
i1l1069:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u106_25:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u106_20:
	addlw	-1
	skipz
	goto	u106_25
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
i1l1071:	
	movf	(___ftpack@sign),w
	skipz
	goto	u107_20
	goto	i1l303
u107_20:
	line	84
	
i1l1073:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
i1l303:	
	line	85
	line	86
	
i1l292:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
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
