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
	FNCALL	_main,_I2C_Receive
	FNCALL	_main,_I2C_RepeatedStart
	FNCALL	_main,_I2C_Send
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___lwtoft
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_delay_ms
	FNCALL	_main,_initLCD
	FNCALL	_main,_init_I2C_Master
	FNCALL	_main,_instCtrl
	FNCALL	_main,_sprintf
	FNCALL	_main,_strlen
	FNCALL	_sprintf,___awdiv
	FNCALL	_sprintf,___ftadd
	FNCALL	_sprintf,___ftge
	FNCALL	_sprintf,___ftmul
	FNCALL	_sprintf,___ftneg
	FNCALL	_sprintf,___ftsub
	FNCALL	_sprintf,___fttol
	FNCALL	_sprintf,___lldiv
	FNCALL	_sprintf,___llmod
	FNCALL	_sprintf,___lltoft
	FNCALL	_sprintf,___wmul
	FNCALL	_sprintf,__div_to_l_
	FNCALL	_sprintf,__tdiv_to_l_
	FNCALL	_sprintf,_fround
	FNCALL	_sprintf,_scale
	FNCALL	_scale,___awdiv
	FNCALL	_scale,___awmod
	FNCALL	_scale,___bmul
	FNCALL	_scale,___ftmul
	FNCALL	_fround,___awdiv
	FNCALL	_fround,___awmod
	FNCALL	_fround,___bmul
	FNCALL	_fround,___ftmul
	FNCALL	___ftmul,___ftpack
	FNCALL	___lltoft,___ftpack
	FNCALL	___ftsub,___ftadd
	FNCALL	___ftadd,___ftpack
	FNCALL	_initLCD,_delay_ms
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay_ms
	FNCALL	_dataCtrl,_delay_ms
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_I2C_Stop,_I2C_Wait
	FNCALL	_I2C_Start,_I2C_Wait
	FNCALL	_I2C_Send,_I2C_Wait
	FNCALL	_I2C_RepeatedStart,_I2C_Wait
	FNCALL	_I2C_Receive,_I2C_Wait
	FNROOT	_main
	global	main@F1274
	global	main@F1272
psect	idataBANK3,class=CODE,space=0,delta=2,noexec
global __pidataBANK3
__pidataBANK3:
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	121

;initializer for main@F1274
	retlw	054h
	retlw	065h
	retlw	06Dh
	retlw	070h
	retlw	065h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	075h
	retlw	072h
	retlw	065h
	retlw	03Ah
	retlw	020h
	retlw	0
	line	120

;initializer for main@F1272
	retlw	048h
	retlw	075h
	retlw	06Dh
	retlw	069h
	retlw	064h
	retlw	069h
	retlw	074h
	retlw	079h
	retlw	03Ah
	retlw	020h
	retlw	0
	global	_dpowers
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	354
_dpowers:
	retlw	01h
	retlw	0
	retlw	0
	retlw	0

	retlw	0Ah
	retlw	0
	retlw	0
	retlw	0

	retlw	064h
	retlw	0
	retlw	0
	retlw	0

	retlw	0E8h
	retlw	03h
	retlw	0
	retlw	0

	retlw	010h
	retlw	027h
	retlw	0
	retlw	0

	retlw	0A0h
	retlw	086h
	retlw	01h
	retlw	0

	retlw	040h
	retlw	042h
	retlw	0Fh
	retlw	0

	retlw	080h
	retlw	096h
	retlw	098h
	retlw	0

	retlw	0
	retlw	0E1h
	retlw	0F5h
	retlw	05h

	retlw	0
	retlw	0CAh
	retlw	09Ah
	retlw	03Bh

	global __end_of_dpowers
__end_of_dpowers:
	global	__npowers_
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\powers.c"
	line	39
__npowers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0xcd
	retlw	0xcc
	retlw	0x3d

	retlw	0xd7
	retlw	0x23
	retlw	0x3c

	retlw	0x12
	retlw	0x83
	retlw	0x3a

	retlw	0xb7
	retlw	0xd1
	retlw	0x38

	retlw	0xc6
	retlw	0x27
	retlw	0x37

	retlw	0x38
	retlw	0x86
	retlw	0x35

	retlw	0xc0
	retlw	0xd6
	retlw	0x33

	retlw	0xcc
	retlw	0x2b
	retlw	0x32

	retlw	0x70
	retlw	0x89
	retlw	0x30

	retlw	0xe7
	retlw	0xdb
	retlw	0x2e

	retlw	0xe5
	retlw	0x3c
	retlw	0x1e

	retlw	0x42
	retlw	0xa2
	retlw	0xd

	global __end_of__npowers_
__end_of__npowers_:
	global	__powers_
psect	strings
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\powers.c"
	line	7
__powers_:
	retlw	0x0
	retlw	0x80
	retlw	0x3f

	retlw	0x0
	retlw	0x20
	retlw	0x41

	retlw	0x0
	retlw	0xc8
	retlw	0x42

	retlw	0x0
	retlw	0x7a
	retlw	0x44

	retlw	0x40
	retlw	0x1c
	retlw	0x46

	retlw	0x50
	retlw	0xc3
	retlw	0x47

	retlw	0x24
	retlw	0x74
	retlw	0x49

	retlw	0x97
	retlw	0x18
	retlw	0x4b

	retlw	0xbc
	retlw	0xbe
	retlw	0x4c

	retlw	0x6b
	retlw	0x6e
	retlw	0x4e

	retlw	0x3
	retlw	0x15
	retlw	0x50

	retlw	0x79
	retlw	0xad
	retlw	0x60

	retlw	0xf3
	retlw	0x49
	retlw	0x71

	global __end_of__powers_
__end_of__powers_:
	global	_dpowers
	global	__npowers_
	global	__powers_
	global	_PORTB
_PORTB	set	0x6
	global	_SSPBUF
_SSPBUF	set	0x13
	global	_SSPCON
_SSPCON	set	0x14
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_RD2
_RD2	set	0x42
	global	_SSPADD
_SSPADD	set	0x93
	global	_SSPCON2
_SSPCON2	set	0x91
	global	_SSPSTAT
_SSPSTAT	set	0x94
	global	_TRISB
_TRISB	set	0x86
	global	_TRISD
_TRISD	set	0x88
	global	_ACKDT
_ACKDT	set	0x48D
	global	_ACKEN
_ACKEN	set	0x48C
	global	_PEN
_PEN	set	0x48A
	global	_RCEN
_RCEN	set	0x48B
	global	_RSEN
_RSEN	set	0x489
	global	_SEN
_SEN	set	0x488
	global	_TRISC3
_TRISC3	set	0x43B
	global	_TRISC4
_TRISC4	set	0x43C
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	37	;'%'
	retlw	102	;'f'
	retlw	0
psect	strings
STR_2	equ	STR_1+0
	global __end_of__stringdata
__end_of__stringdata:
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
	file	"CpE 3201-LE7-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK3,class=BANK3,space=1,noexec
global __pdataBANK3
__pdataBANK3:
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	121
main@F1274:
       ds      14

psect	dataBANK3
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	120
main@F1272:
       ds      11

	file	"CpE 3201-LE7-3.as"
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
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2,merge=1
global init_ram0, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+25)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram0
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackBANK3,class=BANK3,space=1,noexec
global __pcstackBANK3
__pcstackBANK3:
	global	main@msgTemperature
main@msgTemperature:	; 14 bytes @ 0x0
	ds	14
	global	main@msgHumidity
main@msgHumidity:	; 11 bytes @ 0xE
	ds	11
	global	main@humidityFl
main@humidityFl:	; 3 bytes @ 0x19
	ds	3
	global	main@temperatureFl
main@temperatureFl:	; 3 bytes @ 0x1C
	ds	3
	global	main@humidityStr
main@humidityStr:	; 4 bytes @ 0x1F
	ds	4
	global	main@temperatureStr
main@temperatureStr:	; 4 bytes @ 0x23
	ds	4
	global	main@LSBH
main@LSBH:	; 2 bytes @ 0x27
	ds	2
	global	main@LSBT
main@LSBT:	; 2 bytes @ 0x29
	ds	2
	global	main@MSBH
main@MSBH:	; 2 bytes @ 0x2B
	ds	2
	global	main@MSBT
main@MSBT:	; 2 bytes @ 0x2D
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2F
	ds	2
psect	cstackBANK1,class=BANK1,space=1,noexec
global __pcstackBANK1
__pcstackBANK1:
	global	_sprintf$578
_sprintf$578:	; 3 bytes @ 0x0
	ds	3
	global	_sprintf$149
_sprintf$149:	; 4 bytes @ 0x3
	ds	4
	global	sprintf@ap
sprintf@ap:	; 1 bytes @ 0x7
	ds	1
	global	sprintf@vd
sprintf@vd:	; 4 bytes @ 0x8
	ds	4
	global	sprintf@vd_151
sprintf@vd_151:	; 4 bytes @ 0xC
	ds	4
	global	sprintf@flag
sprintf@flag:	; 2 bytes @ 0x10
	ds	2
	global	sprintf@prec
sprintf@prec:	; 2 bytes @ 0x12
	ds	2
	global	sprintf@_val
sprintf@_val:	; 4 bytes @ 0x14
	ds	4
	global	sprintf@integ
sprintf@integ:	; 3 bytes @ 0x18
	ds	3
	global	sprintf@exp
sprintf@exp:	; 2 bytes @ 0x1B
	ds	2
	global	sprintf@sp
sprintf@sp:	; 1 bytes @ 0x1D
	ds	1
	global	sprintf@fval
sprintf@fval:	; 3 bytes @ 0x1E
	ds	3
	global	sprintf@c
sprintf@c:	; 1 bytes @ 0x21
	ds	1
??_main:	; 0 bytes @ 0x22
	ds	4
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay_ms:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_init_I2C_Master:	; 0 bytes @ 0x0
??_init_I2C_Master:	; 0 bytes @ 0x0
?_I2C_Wait:	; 0 bytes @ 0x0
??_I2C_Wait:	; 0 bytes @ 0x0
?_I2C_Start:	; 0 bytes @ 0x0
??_I2C_Start:	; 0 bytes @ 0x0
?_I2C_Stop:	; 0 bytes @ 0x0
??_I2C_Stop:	; 0 bytes @ 0x0
?_I2C_RepeatedStart:	; 0 bytes @ 0x0
??_I2C_RepeatedStart:	; 0 bytes @ 0x0
?_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Send:	; 0 bytes @ 0x0
??_I2C_Receive:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
?___ftge:	; 1 bit 
?_I2C_Receive:	; 1 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x0
	global	?__tdiv_to_l_
?__tdiv_to_l_:	; 4 bytes @ 0x0
	global	?__div_to_l_
?__div_to_l_:	; 4 bytes @ 0x0
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x0
	global	?___llmod
?___llmod:	; 4 bytes @ 0x0
	global	I2C_Send@data
I2C_Send@data:	; 1 bytes @ 0x0
	global	delay_ms@ms_Count
delay_ms@ms_Count:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	__div_to_l_@f1
__div_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	__tdiv_to_l_@f1
__tdiv_to_l_@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x0
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x0
	global	___llmod@divisor
___llmod@divisor:	; 4 bytes @ 0x0
	ds	1
	global	I2C_Receive@ack
I2C_Receive@ack:	; 1 bytes @ 0x1
	ds	1
??_strlen:	; 0 bytes @ 0x2
??_delay_ms:	; 0 bytes @ 0x2
	global	I2C_Receive@temp
I2C_Receive@temp:	; 1 bytes @ 0x2
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
??___ftneg:	; 0 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	__div_to_l_@f2
__div_to_l_@f2:	; 3 bytes @ 0x3
	global	__tdiv_to_l_@f2
__tdiv_to_l_@f2:	; 3 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
??___wmul:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0x4
	global	___llmod@dividend
___llmod@dividend:	; 4 bytes @ 0x4
	ds	1
??___ftpack:	; 0 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
??__tdiv_to_l_:	; 0 bytes @ 0x6
??__div_to_l_:	; 0 bytes @ 0x6
??_instCtrl:	; 0 bytes @ 0x6
??_dataCtrl:	; 0 bytes @ 0x6
??___ftge:	; 0 bytes @ 0x6
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x6
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x6
	ds	1
??_initLCD:	; 0 bytes @ 0x7
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	strlen@s
strlen@s:	; 1 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	1
??___lldiv:	; 0 bytes @ 0x8
??___llmod:	; 0 bytes @ 0x8
	global	?___lltoft
?___lltoft:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___lltoft@c
___lltoft@c:	; 4 bytes @ 0x8
	ds	1
	global	___llmod@counter
___llmod@counter:	; 1 bytes @ 0x9
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x9
	ds	2
??___awdiv:	; 0 bytes @ 0xB
??___lwtoft:	; 0 bytes @ 0xB
	ds	1
??___bmul:	; 0 bytes @ 0xC
??___lltoft:	; 0 bytes @ 0xC
	ds	1
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0xD
	global	___lltoft@exp
___lltoft@exp:	; 1 bytes @ 0xD
	ds	1
??___ftsub:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x0
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x0
	global	__div_to_l_@quot
__div_to_l_@quot:	; 4 bytes @ 0x0
	global	__tdiv_to_l_@quot
__tdiv_to_l_@quot:	; 4 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x3
	ds	1
?___bmul:	; 1 bytes @ 0x4
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x4
	global	__div_to_l_@cntr
__div_to_l_@cntr:	; 1 bytes @ 0x4
	global	__tdiv_to_l_@cntr
__tdiv_to_l_@cntr:	; 1 bytes @ 0x4
	ds	1
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x5
	global	__div_to_l_@exp1
__div_to_l_@exp1:	; 1 bytes @ 0x5
	global	__tdiv_to_l_@exp1
__tdiv_to_l_@exp1:	; 1 bytes @ 0x5
	ds	1
??___ftdiv:	; 0 bytes @ 0x6
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x6
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0xA
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0xB
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0xE
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0xF
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x10
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x10
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x13
	ds	3
??___ftmul:	; 0 bytes @ 0x16
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?_fround
?_fround:	; 3 bytes @ 0x20
	global	?_scale
?_scale:	; 3 bytes @ 0x20
	ds	3
??_fround:	; 0 bytes @ 0x23
??_scale:	; 0 bytes @ 0x23
	ds	2
	global	_scale$577
_scale$577:	; 3 bytes @ 0x25
	ds	3
	global	scale@scl
scale@scl:	; 1 bytes @ 0x28
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x29
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x29
	global	_fround$576
_fround$576:	; 3 bytes @ 0x29
	ds	3
	global	_fround$575
_fround$575:	; 3 bytes @ 0x2C
	ds	1
??___fttol:	; 0 bytes @ 0x2D
	ds	2
	global	fround@prec
fround@prec:	; 1 bytes @ 0x2F
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x30
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x30
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x31
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x32
	ds	1
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x33
	ds	3
??___ftadd:	; 0 bytes @ 0x36
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x36
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x3A
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x3B
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x3C
	ds	1
	global	?___ftsub
?___ftsub:	; 3 bytes @ 0x3D
	global	___ftsub@f2
___ftsub@f2:	; 3 bytes @ 0x3D
	ds	3
	global	___ftsub@f1
___ftsub@f1:	; 3 bytes @ 0x40
	ds	3
	global	?_sprintf
?_sprintf:	; 2 bytes @ 0x43
	global	sprintf@f
sprintf@f:	; 1 bytes @ 0x43
	ds	4
??_sprintf:	; 0 bytes @ 0x47
	ds	6
;!
;!Data Sizes:
;!    Strings     3
;!    Constant    118
;!    Data        25
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80     77      77
;!    BANK1            80     38      38
;!    BANK3            96     49      74
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    strlen@s	PTR const unsigned char  size(1) Largest target is 14
;!		 -> main@msgTemperature(BANK3[14]), main@msgHumidity(BANK3[11]), 
;!
;!    strlen@cp	PTR const unsigned char  size(1) Largest target is 14
;!		 -> main@msgTemperature(BANK3[14]), main@msgHumidity(BANK3[11]), 
;!
;!    sprintf@f	PTR const unsigned char  size(1) Largest target is 3
;!		 -> STR_2(CODE[3]), STR_1(CODE[3]), 
;!
;!    sprintf@sp	PTR unsigned char  size(1) Largest target is 4
;!		 -> main@temperatureStr(BANK3[4]), main@humidityStr(BANK3[4]), 
;!
;!    sprintf@ap	PTR void [1] size(1) Largest target is 2
;!		 -> ?_sprintf(BANK0[2]), 
;!
;!    S136$_cp	PTR const unsigned char  size(1) Largest target is 0
;!
;!    _val._str._cp	PTR const unsigned char  size(1) Largest target is 0
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _sprintf->___lldiv
;!    _sprintf->___lltoft
;!    _sprintf->__div_to_l_
;!    _scale->___bmul
;!    _fround->___bmul
;!    ___ftmul->___bmul
;!    ___bmul->___awdiv
;!    ___awdiv->___awmod
;!    ___lltoft->___ftpack
;!    ___ftsub->___lltoft
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay_ms
;!    _dataCtrl->_delay_ms
;!    ___lwtoft->___ftpack
;!    ___ftdiv->___lwtoft
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_sprintf
;!    _sprintf->___ftsub
;!    _scale->___ftmul
;!    _fround->___ftmul
;!    ___ftmul->___ftdiv
;!    ___bmul->___awdiv
;!    ___fttol->_scale
;!    ___ftsub->___ftadd
;!    ___ftadd->_fround
;!
;!Critical Paths under _main in BANK1
;!
;!    _main->_sprintf
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
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
;! (0) _main                                                53    53      0   47331
;!                                             34 BANK1      4     4      0
;!                                              0 BANK3     49    49      0
;!                        _I2C_Receive
;!                  _I2C_RepeatedStart
;!                           _I2C_Send
;!                          _I2C_Start
;!                           _I2C_Stop
;!                            ___ftadd
;!                            ___ftdiv
;!                            ___ftmul
;!                           ___lwtoft
;!                           _dataCtrl
;!                           _delay_ms
;!                            _initLCD
;!                    _init_I2C_Master
;!                           _instCtrl
;!                            _sprintf
;!                             _strlen
;! ---------------------------------------------------------------------------------
;! (1) _strlen                                               8     6      2     144
;!                                              0 COMMON     8     6      2
;! ---------------------------------------------------------------------------------
;! (1) _sprintf                                             50    46      4   33518
;!                                             67 BANK0     10     6      4
;!                                              0 BANK1     34    34      0
;!                            ___awdiv
;!                            ___ftadd
;!                             ___ftge
;!                            ___ftmul
;!                            ___ftneg
;!                            ___ftsub
;!                            ___fttol
;!                            ___lldiv
;!                            ___llmod
;!                           ___lltoft
;!                             ___wmul
;!                         __div_to_l_
;!                        __tdiv_to_l_
;!                             _fround
;!                              _scale
;! ---------------------------------------------------------------------------------
;! (2) _scale                                               12     9      3    7405
;!                                             32 BANK0      9     6      3
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (2) _fround                                              19    16      3    7207
;!                                             32 BANK0     16    13      3
;!                            ___awdiv
;!                            ___awmod
;!                             ___bmul
;!                            ___ftmul
;! ---------------------------------------------------------------------------------
;! (3) ___ftmul                                             16    10      6    3746
;!                                             16 BANK0     16    10      6
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;!                             ___bmul (ARG)
;!                            ___ftdiv (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___bmul                                               4     3      1     560
;!                                             12 COMMON     1     1      0
;!                                              4 BANK0      3     2      1
;!                            ___awdiv (ARG)
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___awmod                                              7     3      4    1250
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (3) ___awdiv                                              9     5      4    1360
;!                                              7 COMMON     5     1      4
;!                                              0 BANK0      4     4      0
;!                            ___awmod (ARG)
;! ---------------------------------------------------------------------------------
;! (2) __tdiv_to_l_                                         16    10      6     409
;!                                              0 COMMON    10     4      6
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) __div_to_l_                                          20    14      6     552
;!                                              0 COMMON    14     8      6
;!                                              0 BANK0      6     6      0
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4    1170
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lltoft                                             6     2      4    1846
;!                                              8 COMMON     6     2      4
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (2) ___llmod                                             10     2      8     477
;!                                              0 COMMON    10     2      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     374
;!                                              0 COMMON    14     6      8
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             14    10      4     411
;!                                             41 BANK0     14    10      4
;!                            ___ftmul (ARG)
;!                              _scale (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftsub                                              6     0      6    3139
;!                                             61 BANK0      6     0      6
;!                            ___ftadd
;!                           ___lltoft (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftadd                                             13     7      6    2988
;!                                             48 BANK0     13     7      6
;!                            ___ftdiv (ARG)
;!                            ___ftmul (ARG)
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                             _fround (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftneg                                              3     0      3      98
;!                                              0 COMMON     3     0      3
;! ---------------------------------------------------------------------------------
;! (2) ___ftge                                              12     6      6     560
;!                                              0 COMMON    12     6      6
;! ---------------------------------------------------------------------------------
;! (1) _init_I2C_Master                                      0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     842
;!                           _delay_ms
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     432
;!                                              6 COMMON     1     1      0
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     432
;!                                              6 COMMON     1     1      0
;!                           _delay_ms
;! ---------------------------------------------------------------------------------
;! (2) _delay_ms                                             6     4      2     410
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! (1) ___lwtoft                                             4     1      3    1852
;!                                              8 COMMON     4     1      3
;!                           ___ftpack
;! ---------------------------------------------------------------------------------
;! (1) ___ftdiv                                             16    10      6    2216
;!                                              0 BANK0     16    10      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;! ---------------------------------------------------------------------------------
;! (4) ___ftpack                                             8     3      5    1724
;!                                              0 COMMON     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Stop                                             0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Start                                            0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Send                                             1     1      0      22
;!                                              0 COMMON     1     1      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_RepeatedStart                                    0     0      0       0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (1) _I2C_Receive                                          3     3      0      45
;!                                              0 COMMON     3     3      0
;!                           _I2C_Wait
;! ---------------------------------------------------------------------------------
;! (2) _I2C_Wait                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _I2C_Receive
;!     _I2C_Wait
;!   _I2C_RepeatedStart
;!     _I2C_Wait
;!   _I2C_Send
;!     _I2C_Wait
;!   _I2C_Start
;!     _I2C_Wait
;!   _I2C_Stop
;!     _I2C_Wait
;!   ___ftadd
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!     _fround (ARG)
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___bmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!   ___ftdiv
;!     ___ftpack
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___ftmul
;!     ___awdiv (ARG)
;!       ___awmod (ARG)
;!     ___awmod (ARG)
;!     ___bmul (ARG)
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!     ___ftdiv (ARG)
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftpack (ARG)
;!     ___lwtoft (ARG)
;!       ___ftpack
;!   ___lwtoft
;!     ___ftpack
;!   _dataCtrl
;!     _delay_ms
;!   _delay_ms
;!   _initLCD
;!     _delay_ms
;!     _instCtrl
;!       _delay_ms
;!   _init_I2C_Master
;!   _instCtrl
;!     _delay_ms
;!   _sprintf
;!     ___awdiv
;!       ___awmod (ARG)
;!     ___ftadd
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!       _fround (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!     ___ftge
;!     ___ftmul
;!       ___awdiv (ARG)
;!         ___awmod (ARG)
;!       ___awmod (ARG)
;!       ___bmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftdiv (ARG)
;!         ___ftpack
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       ___ftpack (ARG)
;!       ___lwtoft (ARG)
;!         ___ftpack
;!     ___ftneg
;!     ___ftsub
;!       ___ftadd
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!         _fround (ARG)
;!           ___awdiv
;!             ___awmod (ARG)
;!           ___awmod
;!           ___bmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftmul
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!             ___bmul (ARG)
;!               ___awdiv (ARG)
;!                 ___awmod (ARG)
;!               ___awmod (ARG)
;!             ___ftdiv (ARG)
;!               ___ftpack
;!               ___lwtoft (ARG)
;!                 ___ftpack
;!             ___ftpack (ARG)
;!             ___lwtoft (ARG)
;!               ___ftpack
;!       ___lltoft (ARG)
;!         ___ftpack
;!     ___fttol
;!       ___ftmul (ARG)
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!       _scale (ARG)
;!         ___awdiv
;!           ___awmod (ARG)
;!         ___awmod
;!         ___bmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftmul
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!           ___bmul (ARG)
;!             ___awdiv (ARG)
;!               ___awmod (ARG)
;!             ___awmod (ARG)
;!           ___ftdiv (ARG)
;!             ___ftpack
;!             ___lwtoft (ARG)
;!               ___ftpack
;!           ___ftpack (ARG)
;!           ___lwtoft (ARG)
;!             ___ftpack
;!     ___lldiv
;!     ___llmod
;!     ___lltoft
;!       ___ftpack
;!     ___wmul
;!     __div_to_l_
;!     __tdiv_to_l_
;!     _fround
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___bmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!     _scale
;!       ___awdiv
;!         ___awmod (ARG)
;!       ___awmod
;!       ___bmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!       ___ftmul
;!         ___awdiv (ARG)
;!           ___awmod (ARG)
;!         ___awmod (ARG)
;!         ___bmul (ARG)
;!           ___awdiv (ARG)
;!             ___awmod (ARG)
;!           ___awmod (ARG)
;!         ___ftdiv (ARG)
;!           ___ftpack
;!           ___lwtoft (ARG)
;!             ___ftpack
;!         ___ftpack (ARG)
;!         ___lwtoft (ARG)
;!           ___ftpack
;!   _strlen
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60     31      4A       9       77.1%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50     26      26       7       47.5%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50     4D      4D       5       96.3%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      CB      12        0.0%
;!ABS                  0      0      CB       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 106 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  msgTemperatu   14    0[BANK3 ] unsigned char [14]
;;  msgHumidity    11   14[BANK3 ] unsigned char [11]
;;  temperatureS    4   35[BANK3 ] unsigned char [4]
;;  humidityStr     4   31[BANK3 ] unsigned char [4]
;;  temperatureF    3   28[BANK3 ] float 
;;  humidityFl      3   25[BANK3 ] float 
;;  i               2   47[BANK3 ] int 
;;  MSBT            2   45[BANK3 ] unsigned int 
;;  MSBH            2   43[BANK3 ] unsigned int 
;;  LSBT            2   41[BANK3 ] unsigned int 
;;  LSBH            2   39[BANK3 ] unsigned int 
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
;;      Locals:         0       0       0      49       0
;;      Temps:          0       0       4       0       0
;;      Totals:         0       0       4      49       0
;;Total ram usage:       53 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_I2C_Receive
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Start
;;		_I2C_Stop
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		_dataCtrl
;;		_delay_ms
;;		_initLCD
;;		_init_I2C_Master
;;		_instCtrl
;;		_sprintf
;;		_strlen
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	106
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	106
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	107
	
l2512:	
;dumalaganDa_LE7-3.c: 107: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	108
;dumalaganDa_LE7-3.c: 108: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	110
	
l2514:	
;dumalaganDa_LE7-3.c: 110: initLCD();
	fcall	_initLCD
	line	112
	
l2516:	
;dumalaganDa_LE7-3.c: 112: init_I2C_Master();
	fcall	_init_I2C_Master
	line	113
;dumalaganDa_LE7-3.c: 113: for(;;) {
	
l86:	
	line	115
;dumalaganDa_LE7-3.c: 114: int i;
;dumalaganDa_LE7-3.c: 115: unsigned int MSBH = 0;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@MSBH)^0180h
	clrf	(main@MSBH+1)^0180h
	line	116
;dumalaganDa_LE7-3.c: 116: unsigned int LSBH = 0;
	clrf	(main@LSBH)^0180h
	clrf	(main@LSBH+1)^0180h
	line	117
;dumalaganDa_LE7-3.c: 117: unsigned int MSBT = 0;
	clrf	(main@MSBT)^0180h
	clrf	(main@MSBT+1)^0180h
	line	118
;dumalaganDa_LE7-3.c: 118: unsigned int LSBT = 0;
	clrf	(main@LSBT)^0180h
	clrf	(main@LSBT+1)^0180h
	line	119
	
l2518:	
;dumalaganDa_LE7-3.c: 119: float humidityFl = 0.0;
	movlw	0x0
	movwf	(main@humidityFl)^0180h
	movlw	0x0
	movwf	(main@humidityFl+1)^0180h
	movlw	0x0
	movwf	(main@humidityFl+2)^0180h
	line	120
	
l2520:	
;dumalaganDa_LE7-3.c: 120: float temperatureFl = 0.0;
	movlw	0x0
	movwf	(main@temperatureFl)^0180h
	movlw	0x0
	movwf	(main@temperatureFl+1)^0180h
	movlw	0x0
	movwf	(main@temperatureFl+2)^0180h
	line	121
	
l2522:	
;dumalaganDa_LE7-3.c: 121: char msgHumidity[] = "Humidity: ";
	movlw	(main@msgHumidity)&0ffh
	movwf	fsr0
	movlw	low(main@F1272)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	fsr0,w
	movwf	((??_main+0)^080h+0+1)
	movlw	11
	movwf	((??_main+0)^080h+0+2)
u3710:
	movf	(??_main+0)^080h+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_main+0)^080h+0+3)
	incf	(??_main+0)^080h+0,f
	movf	((??_main+0)^080h+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)^080h+0+3),w
	movwf	indf
	incf	((??_main+0)^080h+0+1),f
	decfsz	((??_main+0)^080h+0+2),f
	goto	u3710
	line	122
	
l2524:	
;dumalaganDa_LE7-3.c: 122: char msgTemperature[] = "Temperature: ";
	movlw	(main@msgTemperature)&0ffh
	movwf	fsr0
	movlw	low(main@F1274)
	movwf	(??_main+0)^080h+0
	movf	fsr0,w
	movwf	((??_main+0)^080h+0+1)
	movlw	14
	movwf	((??_main+0)^080h+0+2)
u3720:
	movf	(??_main+0)^080h+0,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	
	movf	indf,w
	movwf	((??_main+0)^080h+0+3)
	incf	(??_main+0)^080h+0,f
	movf	((??_main+0)^080h+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)^080h+0+3),w
	movwf	indf
	incf	((??_main+0)^080h+0+1),f
	decfsz	((??_main+0)^080h+0+2),f
	goto	u3720
	line	126
	
l2526:	
;dumalaganDa_LE7-3.c: 123: char humidityStr[4];
;dumalaganDa_LE7-3.c: 124: char temperatureStr[4];
;dumalaganDa_LE7-3.c: 126: instCtrl(0x03);
	movlw	(03h)
	fcall	_instCtrl
	line	127
	
l2528:	
;dumalaganDa_LE7-3.c: 127: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	128
	
l2530:	
;dumalaganDa_LE7-3.c: 128: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	129
	
l2532:	
;dumalaganDa_LE7-3.c: 129: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	130
	
l2534:	
;dumalaganDa_LE7-3.c: 130: I2C_Start();
	fcall	_I2C_Start
	line	131
	
l2536:	
;dumalaganDa_LE7-3.c: 131: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	132
	
l2538:	
;dumalaganDa_LE7-3.c: 132: I2C_Send(0xE5);
	movlw	(0E5h)
	fcall	_I2C_Send
	line	133
	
l2540:	
;dumalaganDa_LE7-3.c: 133: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	134
	
l2542:	
;dumalaganDa_LE7-3.c: 134: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	135
	
l2544:	
;dumalaganDa_LE7-3.c: 135: MSBH = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@MSBH)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@MSBH+1)^0180h
	line	136
	
l2546:	
;dumalaganDa_LE7-3.c: 136: LSBH = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@LSBH)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@LSBH+1)^0180h
	line	137
	
l2548:	
;dumalaganDa_LE7-3.c: 137: I2C_Stop();
	fcall	_I2C_Stop
	line	138
	
l2550:	
;dumalaganDa_LE7-3.c: 138: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms_Count)
	movlw	high(032h)
	movwf	((delay_ms@ms_Count))+1
	fcall	_delay_ms
	line	140
	
l2552:	
;dumalaganDa_LE7-3.c: 140: LSBH = LSBH & 0xFC;
	movlw	low(0FCh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(main@LSBH)^0180h,w
	movwf	(main@LSBH)^0180h
	movlw	high(0FCh)
	andwf	(main@LSBH+1)^0180h,w
	movwf	1+(main@LSBH)^0180h
	line	141
	
l2554:	
;dumalaganDa_LE7-3.c: 141: MSBH = MSBH << 8;
	movf	(main@MSBH)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0+1
	clrf	(??_main+0)^080h+0
	movf	0+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@MSBH)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@MSBH+1)^0180h
	line	142
	
l2556:	
;dumalaganDa_LE7-3.c: 142: MSBH = MSBH | LSBH;
	movf	(main@LSBH)^0180h,w
	iorwf	(main@MSBH)^0180h,w
	movwf	(main@MSBH)^0180h
	movf	(main@LSBH+1)^0180h,w
	iorwf	(main@MSBH+1)^0180h,w
	movwf	1+(main@MSBH)^0180h
	line	143
	
l2558:	
;dumalaganDa_LE7-3.c: 143: humidityFl = -6.0 + (125.0*(MSBH/65536.0));
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0xc0
	movwf	(___ftadd@f1+1)
	movlw	0xc0
	movwf	(___ftadd@f1+2)
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0xfa
	movwf	(___ftmul@f1+1)
	movlw	0x42
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x47
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@MSBH+1)^0180h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(main@MSBH)^0180h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@humidityFl)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@humidityFl+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@humidityFl+2)^0180h
	line	144
	
l2560:	
;dumalaganDa_LE7-3.c: 144: sprintf(humidityStr, "%f", humidityFl);
	movlw	((STR_1)-__stringbase)&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@humidityFl)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@humidityFl+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@humidityFl+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(main@humidityStr)&0ffh
	fcall	_sprintf
	line	145
	
l2562:	
;dumalaganDa_LE7-3.c: 145: for(i=0; i<strlen(msgHumidity); i++)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	goto	l2568
	line	146
	
l92:	
	
l2564:	
;dumalaganDa_LE7-3.c: 146: dataCtrl(msgHumidity[i]);
	movf	(main@i)^0180h,w
	addlw	main@msgHumidity&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_dataCtrl
	line	145
	
l2566:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	goto	l2568
	
l91:	
	
l2568:	
	movlw	(main@msgHumidity)&0ffh
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@i+1)^0180h,w
	skipz
	goto	u3735
	movf	(0+(?_strlen)),w
	subwf	(main@i)^0180h,w
u3735:
	skipc
	goto	u3731
	goto	u3730
u3731:
	goto	l2564
u3730:
	goto	l2570
	
l93:	
	line	147
	
l2570:	
;dumalaganDa_LE7-3.c: 147: dataCtrl(humidityStr[0]);
	movf	(main@humidityStr)^0180h,w
	fcall	_dataCtrl
	line	148
;dumalaganDa_LE7-3.c: 148: dataCtrl(humidityStr[1]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(main@humidityStr)^0180h+01h,w
	fcall	_dataCtrl
	line	149
;dumalaganDa_LE7-3.c: 149: dataCtrl('%');
	movlw	(025h)
	fcall	_dataCtrl
	line	150
;dumalaganDa_LE7-3.c: 150: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	151
;dumalaganDa_LE7-3.c: 151: I2C_Start();
	fcall	_I2C_Start
	line	152
;dumalaganDa_LE7-3.c: 152: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	153
;dumalaganDa_LE7-3.c: 153: I2C_Send(0xFE);
	movlw	(0FEh)
	fcall	_I2C_Send
	line	154
;dumalaganDa_LE7-3.c: 154: I2C_Send(0xE3);
	movlw	(0E3h)
	fcall	_I2C_Send
	line	155
;dumalaganDa_LE7-3.c: 155: I2C_RepeatedStart();
	fcall	_I2C_RepeatedStart
	line	156
;dumalaganDa_LE7-3.c: 156: I2C_Send(0x81);
	movlw	(081h)
	fcall	_I2C_Send
	line	157
;dumalaganDa_LE7-3.c: 157: MSBT = I2C_Receive(1);
	movlw	(01h)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@MSBT)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@MSBT+1)^0180h
	line	158
;dumalaganDa_LE7-3.c: 158: LSBT = I2C_Receive(0);
	movlw	(0)
	fcall	_I2C_Receive
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	clrf	(??_main+0)^080h+0+1
	movf	0+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@LSBT)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@LSBT+1)^0180h
	line	159
;dumalaganDa_LE7-3.c: 159: I2C_Stop();
	fcall	_I2C_Stop
	line	160
;dumalaganDa_LE7-3.c: 160: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms_Count)
	movlw	high(032h)
	movwf	((delay_ms@ms_Count))+1
	fcall	_delay_ms
	line	161
	
l2572:	
;dumalaganDa_LE7-3.c: 161: LSBT = LSBT & 0xFC;
	movlw	low(0FCh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(main@LSBT)^0180h,w
	movwf	(main@LSBT)^0180h
	movlw	high(0FCh)
	andwf	(main@LSBT+1)^0180h,w
	movwf	1+(main@LSBT)^0180h
	line	162
	
l2574:	
;dumalaganDa_LE7-3.c: 162: MSBT = MSBT << 8;
	movf	(main@MSBT)^0180h,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0+1
	clrf	(??_main+0)^080h+0
	movf	0+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@MSBT)^0180h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	1+(??_main+0)^080h+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@MSBT+1)^0180h
	line	163
	
l2576:	
;dumalaganDa_LE7-3.c: 163: MSBT = MSBT | LSBT;
	movf	(main@LSBT)^0180h,w
	iorwf	(main@MSBT)^0180h,w
	movwf	(main@MSBT)^0180h
	movf	(main@LSBT+1)^0180h,w
	iorwf	(main@MSBT+1)^0180h,w
	movwf	1+(main@MSBT)^0180h
	line	164
	
l2578:	
;dumalaganDa_LE7-3.c: 164: temperatureFl = -46.85 + (175.72*(MSBT/65536.0));
	movlw	0x66
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f1)
	movlw	0x3b
	movwf	(___ftadd@f1+1)
	movlw	0xc2
	movwf	(___ftadd@f1+2)
	movlw	0xb8
	movwf	(___ftmul@f1)
	movlw	0x2f
	movwf	(___ftmul@f1+1)
	movlw	0x43
	movwf	(___ftmul@f1+2)
	movlw	0x0
	movwf	(___ftdiv@f2)
	movlw	0x80
	movwf	(___ftdiv@f2+1)
	movlw	0x47
	movwf	(___ftdiv@f2+2)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@MSBT+1)^0180h,w
	clrf	(___lwtoft@c+1)
	addwf	(___lwtoft@c+1)
	movf	(main@MSBT)^0180h,w
	clrf	(___lwtoft@c)
	addwf	(___lwtoft@c)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftdiv@f1)
	movf	(1+(?___lwtoft)),w
	movwf	(___ftdiv@f1+1)
	movf	(2+(?___lwtoft)),w
	movwf	(___ftdiv@f1+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(___ftmul@f2)
	movf	(1+(?___ftdiv)),w
	movwf	(___ftmul@f2+1)
	movf	(2+(?___ftdiv)),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(___ftadd@f2)
	movf	(1+(?___ftmul)),w
	movwf	(___ftadd@f2+1)
	movf	(2+(?___ftmul)),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@temperatureFl)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@temperatureFl+1)^0180h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(main@temperatureFl+2)^0180h
	line	165
	
l2580:	
;dumalaganDa_LE7-3.c: 165: sprintf(temperatureStr, "%f", temperatureFl);
	movlw	((STR_2)-__stringbase)&0ffh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(??_main+0)^080h+0
	movf	(??_main+0)^080h+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(sprintf@f)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@temperatureFl)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@temperatureFl+1)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?_sprintf)+01h
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	(main@temperatureFl+2)^0180h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	2+(?_sprintf)+01h
	movlw	(main@temperatureStr)&0ffh
	fcall	_sprintf
	line	166
	
l2582:	
;dumalaganDa_LE7-3.c: 166: for(i=0; i<strlen(msgTemperature); i++)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(main@i)^0180h
	clrf	(main@i+1)^0180h
	goto	l2588
	line	167
	
l95:	
	
l2584:	
;dumalaganDa_LE7-3.c: 167: dataCtrl(msgTemperature[i]);
	movf	(main@i)^0180h,w
	addlw	main@msgTemperature&0ffh
	movwf	fsr0
	bsf	status, 7	;select IRP bank3
	movf	indf,w
	fcall	_dataCtrl
	line	166
	
l2586:	
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	addwf	(main@i)^0180h,f
	skipnc
	incf	(main@i+1)^0180h,f
	movlw	high(01h)
	addwf	(main@i+1)^0180h,f
	goto	l2588
	
l94:	
	
l2588:	
	movlw	(main@msgTemperature)&0ffh
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	subwf	(main@i+1)^0180h,w
	skipz
	goto	u3745
	movf	(0+(?_strlen)),w
	subwf	(main@i)^0180h,w
u3745:
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l2584
u3740:
	goto	l2590
	
l96:	
	line	168
	
l2590:	
;dumalaganDa_LE7-3.c: 168: dataCtrl(temperatureStr[0]);
	movf	(main@temperatureStr)^0180h,w
	fcall	_dataCtrl
	line	169
;dumalaganDa_LE7-3.c: 169: dataCtrl(temperatureStr[1]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(main@temperatureStr)^0180h+01h,w
	fcall	_dataCtrl
	line	170
;dumalaganDa_LE7-3.c: 170: dataCtrl(temperatureStr[2]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(main@temperatureStr)^0180h+02h,w
	fcall	_dataCtrl
	line	171
;dumalaganDa_LE7-3.c: 171: dataCtrl(temperatureStr[3]);
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movf	0+(main@temperatureStr)^0180h+03h,w
	fcall	_dataCtrl
	line	172
;dumalaganDa_LE7-3.c: 172: dataCtrl(0xDF);
	movlw	(0DFh)
	fcall	_dataCtrl
	line	173
;dumalaganDa_LE7-3.c: 173: dataCtrl('C');
	movlw	(043h)
	fcall	_dataCtrl
	line	174
;dumalaganDa_LE7-3.c: 174: I2C_Start();
	fcall	_I2C_Start
	line	175
;dumalaganDa_LE7-3.c: 175: I2C_Send(0x80);
	movlw	(080h)
	fcall	_I2C_Send
	line	176
;dumalaganDa_LE7-3.c: 176: I2C_Send(0xFE);
	movlw	(0FEh)
	fcall	_I2C_Send
	line	177
;dumalaganDa_LE7-3.c: 177: I2C_Stop();
	fcall	_I2C_Stop
	line	178
;dumalaganDa_LE7-3.c: 178: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms_Count)
	movlw	high(032h)
	movwf	((delay_ms@ms_Count))+1
	fcall	_delay_ms
	line	179
;dumalaganDa_LE7-3.c: 179: }
	goto	l86
	
l97:	
	line	180
	
l98:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_strlen

;; *************** function _strlen *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> main@msgTemperature(14), main@msgHumidity(11), 
;; Auto vars:     Size  Location     Type
;;  s               1    7[COMMON] PTR const unsigned char 
;;		 -> main@msgTemperature(14), main@msgHumidity(11), 
;;  cp              1    6[COMMON] PTR const unsigned char 
;;		 -> main@msgTemperature(14), main@msgHumidity(11), 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
	line	4
global __ptext1
__ptext1:	;psect for function _strlen
psect	text1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\strlen.c"
	line	4
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
;incstack = 0
	opt	stack 7
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0]
;strlen@s stored from wreg
	movwf	(strlen@s)
	line	8
	
l2456:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l2460
	
l656:	
	line	10
	
l2458:	
	movlw	(01h)
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	addwf	(strlen@cp),f
	goto	l2460
	line	11
	
l655:	
	line	9
	
l2460:	
	movf	(strlen@cp),w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	movf	indf,f
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l2458
u3620:
	goto	l2462
	
l657:	
	line	12
	
l2462:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movlw	((0x1))
	movwf	(??_strlen+0)+0+1
	comf	(??_strlen+0)+0,f
	comf	(??_strlen+0)+1,f
	incf	(??_strlen+0)+0,f
	skipnz
	incf	(??_strlen+0)+1,f
	movf	(strlen@cp),w
	movwf	(??_strlen+2)+0
	movlw	((0x1))
	movwf	(??_strlen+2)+0+1
	movf	0+(??_strlen+0)+0,w
	addwf	0+(??_strlen+2)+0,w
	movwf	(?_strlen)
	movf	1+(??_strlen+0)+0,w
	skipnc
	incf	1+(??_strlen+0)+0,w
	addwf	1+(??_strlen+2)+0,w
	movwf	1+(?_strlen)
	goto	l658
	
l2464:	
	line	13
	
l658:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
	signat	_strlen,4218
	global	_sprintf

;; *************** function _sprintf *****************
;; Defined at:
;;		line 492 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  sp              1    wreg     PTR unsigned char 
;;		 -> main@temperatureStr(4), main@humidityStr(4), 
;;  f               1   67[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(3), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  sp              1   29[BANK1 ] PTR unsigned char 
;;		 -> main@temperatureStr(4), main@humidityStr(4), 
;;  vd              4    8[BANK1 ] unsigned long 
;;  vd              4   12[BANK1 ] unsigned long 
;;  _val            4   20[BANK1 ] struct .
;;  fval            3   30[BANK1 ] struct .
;;  integ           3   24[BANK1 ] struct .
;;  ival            3    0        struct .
;;  exp             2   27[BANK1 ] int 
;;  prec            2   18[BANK1 ] int 
;;  flag            2   16[BANK1 ] unsigned short 
;;  width           2    0        int 
;;  c               1   33[BANK1 ] char 
;;  ap              1    7[BANK1 ] PTR void [1]
;;		 -> ?_sprintf(2), 
;;  d               1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  2   67[BANK0 ] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0      34       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      10      34       0       0
;;Total ram usage:       44 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___ftadd
;;		___ftge
;;		___ftmul
;;		___ftneg
;;		___ftsub
;;		___fttol
;;		___lldiv
;;		___llmod
;;		___lltoft
;;		___wmul
;;		__div_to_l_
;;		__tdiv_to_l_
;;		_fround
;;		_scale
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
global __ptext2
__ptext2:	;psect for function _sprintf
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	492
	global	__size_of_sprintf
	__size_of_sprintf	equ	__end_of_sprintf-_sprintf
	
_sprintf:	
;incstack = 0
	opt	stack 4
; Regs used in _sprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;sprintf@sp stored from wreg
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@sp)^080h
	line	542
	
l2290:	
;doprnt.c: 494: va_list ap;
;doprnt.c: 499: signed char c;
;doprnt.c: 501: int width;
;doprnt.c: 504: int prec;
;doprnt.c: 508: unsigned short flag;
;doprnt.c: 515: char d;
;doprnt.c: 516: double fval, integ;
;doprnt.c: 517: int exp;
;doprnt.c: 518: double ival;
;doprnt.c: 519: union {
;doprnt.c: 520: unsigned long _val;
;doprnt.c: 521: struct {
;doprnt.c: 522: const char * _cp;
;doprnt.c: 523: unsigned _len;
;doprnt.c: 524: } _str;
;doprnt.c: 525: } _val;
;doprnt.c: 542: *ap = __va_start();
	movlw	(?_sprintf+01h)&0ffh
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@ap)^080h
	line	545
;doprnt.c: 545: while(c = *f++) {
	goto	l2450
	
l132:	
	line	547
	
l2292:	
;doprnt.c: 547: if(c != '%')
	movf	(sprintf@c)^080h,w
	xorlw	025h
	skipnz
	goto	u3321
	goto	u3320
u3321:
	goto	l2298
u3320:
	line	550
	
l2294:	
;doprnt.c: 549: {
;doprnt.c: 550: ((*sp++ = (c)));
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2296:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	551
;doprnt.c: 551: continue;
	goto	l2450
	line	552
	
l133:	
	line	557
	
l2298:	
;doprnt.c: 552: }
;doprnt.c: 557: flag = 0;
	clrf	(sprintf@flag)^080h
	clrf	(sprintf@flag+1)^080h
	line	644
;doprnt.c: 644: switch(c = *f++) {
	goto	l2302
	line	646
;doprnt.c: 646: case 0:
	
l135:	
	line	647
;doprnt.c: 647: goto alldone;
	goto	l2452
	line	671
;doprnt.c: 671: case 'f':
	
l137:	
	line	672
;doprnt.c: 672: flag |= 0x400;
	bsf	(sprintf@flag)^080h+(10/8),(10)&7
	line	673
;doprnt.c: 673: break;
	goto	l2304
	line	811
;doprnt.c: 811: default:
	
l139:	
	line	822
;doprnt.c: 822: continue;
	goto	l2450
	line	831
	
l2300:	
;doprnt.c: 831: }
	goto	l2304
	line	644
	
l134:	
	
l2302:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	; Switch size 1, requested type "space"
; Number of cases is 2, Range of values is 0 to 102
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            7     4 (average)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2452
	xorlw	102^0	; case 102
	skipnz
	goto	l137
	goto	l2450
	opt asmopt_on

	line	831
	
l138:	
	line	834
	
l2304:	
;doprnt.c: 834: if(flag & (0x700)) {
	movlw	low(0700h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(0700h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u3331
	goto	u3330
u3331:
	goto	l2444
u3330:
	line	838
	
l2306:	
;doprnt.c: 838: prec = 6;
	movlw	low(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@prec)^080h
	movlw	high(06h)
	movwf	((sprintf@prec)^080h)+1
	line	839
	
l2308:	
;doprnt.c: 839: fval = (*(double *)__va_arg((*(double **)ap), (double)0));
	movf	(sprintf@ap)^080h,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(sprintf@fval)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+1)^080h
	incf	fsr0,f
	movf	indf,w
	movwf	(sprintf@fval+2)^080h
	
l2310:	
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@ap)^080h,f
	line	840
	
l2312:	
;doprnt.c: 840: if(fval < 0.0) {
	movf	(sprintf@fval)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x0
	movwf	(___ftge@ff2+1)
	movlw	0x0
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3341
	goto	u3340
u3341:
	goto	l2318
u3340:
	line	841
	
l2314:	
;doprnt.c: 841: fval = -fval;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	movwf	(___ftneg@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(___ftneg@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(___ftneg@f1+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	movf	(1+(?___ftneg)),w
	movwf	(sprintf@fval+1)^080h
	movf	(2+(?___ftneg)),w
	movwf	(sprintf@fval+2)^080h
	line	842
	
l2316:	
;doprnt.c: 842: flag |= 0x03;
	movlw	low(03h)
	iorwf	(sprintf@flag)^080h,f
	movlw	high(03h)
	iorwf	(sprintf@flag+1)^080h,f
	goto	l2318
	line	843
	
l141:	
	line	844
	
l2318:	
;doprnt.c: 843: }
;doprnt.c: 844: exp = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	line	845
	
l2320:	
;doprnt.c: 845: if( fval!=0) {
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3351
	goto	u3350
u3351:
	goto	l2346
u3350:
	line	846
	
l2322:	
;doprnt.c: 846: (void)(*(&exp) = ((*(unsigned long *)&fval >> 15) & 255) - 126);
	movlw	low(sprintf@fval)
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??_sprintf+0)+0+3
	movlw	0Fh
u3365:
	clrc
	rrf	(??_sprintf+0)+3,f
	rrf	(??_sprintf+0)+2,f
	rrf	(??_sprintf+0)+1,f
	rrf	(??_sprintf+0)+0,f
u3360:
	addlw	-1
	skipz
	goto	u3365
	movlw	low(0FFh)
	andwf	0+(??_sprintf+0)+0,w
	movwf	(??_sprintf+4)+0
	movlw	high(0FFh)
	andwf	1+(??_sprintf+0)+0,w
	movwf	1+(??_sprintf+4)+0
	movf	0+(??_sprintf+4)+0,w
	addlw	low(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@exp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+4)+0,w
	skipnc
	addlw	1
	addlw	high(-126)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(sprintf@exp)^080h
	line	847
	
l2324:	
;doprnt.c: 847: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	line	848
	
l2326:	
;doprnt.c: 848: exp *= 3;
	movlw	low(03h)
	movwf	(___wmul@multiplier)
	movlw	high(03h)
	movwf	((___wmul@multiplier))+1
	movf	(sprintf@exp+1)^080h,w
	clrf	(___wmul@multiplicand+1)
	addwf	(___wmul@multiplicand+1)
	movf	(sprintf@exp)^080h,w
	clrf	(___wmul@multiplicand)
	addwf	(___wmul@multiplicand)

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp+1)^080h
	addwf	(sprintf@exp+1)^080h
	movf	(0+(?___wmul)),w
	clrf	(sprintf@exp)^080h
	addwf	(sprintf@exp)^080h

	line	849
	
l2328:	
;doprnt.c: 849: exp /= 10;
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(sprintf@exp+1)^080h,w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(sprintf@exp)^080h,w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(sprintf@exp+1)^080h
	addwf	(sprintf@exp+1)^080h
	movf	(0+(?___awdiv)),w
	clrf	(sprintf@exp)^080h
	addwf	(sprintf@exp)^080h

	line	850
	
l2330:	
;doprnt.c: 850: if(exp < 0)
	btfss	(sprintf@exp+1)^080h,7
	goto	u3371
	goto	u3370
u3371:
	goto	l2334
u3370:
	line	851
	
l2332:	
;doprnt.c: 851: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2334
	
l143:	
	line	855
	
l2334:	
;doprnt.c: 855: integ = scale(-exp);
	decf	(sprintf@exp)^080h,w
	xorlw	0ffh
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	856
	
l2336:	
;doprnt.c: 856: integ *= fval;
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	857
	
l2338:	
;doprnt.c: 857: if(integ < 1.0)
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x80
	movwf	(___ftge@ff2+1)
	movlw	0x3f
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3381
	goto	u3380
u3381:
	goto	l2342
u3380:
	line	858
	
l2340:	
;doprnt.c: 858: exp--;
	movlw	low(-1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2346
	line	859
	
l144:	
	
l2342:	
;doprnt.c: 859: else if(integ >= 10.0)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x0
	movwf	(___ftge@ff2)
	movlw	0x20
	movwf	(___ftge@ff2+1)
	movlw	0x41
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfss	status,0
	goto	u3391
	goto	u3390
u3391:
	goto	l2346
u3390:
	line	860
	
l2344:	
;doprnt.c: 860: exp++;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(01h)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2346
	
l146:	
	goto	l2346
	line	861
	
l145:	
	goto	l2346
	
l142:	
	line	1121
	
l2346:	
;doprnt.c: 861: }
;doprnt.c: 1121: if(prec <= 12)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Dh))^80h
	subwf	btemp+1,w
	skipz
	goto	u3405
	movlw	low(0Dh)
	subwf	(sprintf@prec)^080h,w
u3405:

	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l2350
u3400:
	line	1122
	
l2348:	
;doprnt.c: 1122: fval += fround(prec);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	fcall	_fround
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_fround)),w
	movwf	(___ftadd@f1)
	movf	(1+(?_fround)),w
	movwf	(___ftadd@f1+1)
	movf	(2+(?_fround)),w
	movwf	(___ftadd@f1+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftadd)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	goto	l2350
	
l147:	
	line	1125
	
l2350:	
;doprnt.c: 1125: if((exp > 9)||(fval != 0 && (unsigned long)fval == 0 && exp > 1)) {
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3415
	movlw	low(0Ah)
	subwf	(sprintf@exp)^080h,w
u3415:

	skipnc
	goto	u3411
	goto	u3410
u3411:
	goto	l2358
u3410:
	
l2352:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	iorwf	(sprintf@fval+1)^080h,w
	iorwf	(sprintf@fval)^080h,w
	skipnz
	goto	u3421
	goto	u3420
u3421:
	goto	l2374
u3420:
	
l2354:	
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	iorwf	(2+(?___fttol)),w
	iorwf	(1+(?___fttol)),w
	iorwf	(0+(?___fttol)),w
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l2374
u3430:
	
l2356:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3445
	movlw	low(02h)
	subwf	(sprintf@exp)^080h,w
u3445:

	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l2374
u3440:
	goto	l2358
	
l150:	
	line	1129
	
l2358:	
;doprnt.c: 1129: if(integ < 4.294967296){
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@integ)^080h,w
	movwf	(___ftge@ff1)
	movf	(sprintf@integ+1)^080h,w
	movwf	(___ftge@ff1+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(___ftge@ff1+2)
	movlw	0x70
	movwf	(___ftge@ff2)
	movlw	0x89
	movwf	(___ftge@ff2+1)
	movlw	0x40
	movwf	(___ftge@ff2+2)
	fcall	___ftge
	btfsc	status,0
	goto	u3451
	goto	u3450
u3451:
	goto	l2362
u3450:
	line	1130
	
l2360:	
;doprnt.c: 1130: exp -= (sizeof dpowers/sizeof dpowers[0])-1;
	movlw	low(-9)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-9)
	addwf	(sprintf@exp+1)^080h,f
	line	1131
;doprnt.c: 1131: }else{
	goto	l2364
	
l151:	
	line	1132
	
l2362:	
;doprnt.c: 1132: exp -= (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	low(-8)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-8)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2364
	line	1133
	
l152:	
	line	1134
	
l2364:	
;doprnt.c: 1133: }
;doprnt.c: 1134: integ = scale(exp);
	movf	(sprintf@exp)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@integ+2)^080h
	line	1135
;doprnt.c: 1135: _val._val = ((sizeof(double)== 3) ? _tdiv_to_l_(fval,integ) : _div_to_l_(fval,integ));
	goto	l2368
	
l2366:	
	movf	(sprintf@fval)^080h,w
	movwf	(__div_to_l_@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(__div_to_l_@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(__div_to_l_@f1+2)
	movf	(sprintf@integ)^080h,w
	movwf	(__div_to_l_@f2)
	movf	(sprintf@integ+1)^080h,w
	movwf	(__div_to_l_@f2+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(__div_to_l_@f2+2)
	fcall	__div_to_l_
	movf	(3+(?__div_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$149+3)^080h
	movf	(2+(?__div_to_l_)),w
	movwf	(_sprintf$149+2)^080h
	movf	(1+(?__div_to_l_)),w
	movwf	(_sprintf$149+1)^080h
	movf	(0+(?__div_to_l_)),w
	movwf	(_sprintf$149)^080h

	goto	l2370
	
l154:	
	
l2368:	
	movf	(sprintf@fval)^080h,w
	movwf	(__tdiv_to_l_@f1)
	movf	(sprintf@fval+1)^080h,w
	movwf	(__tdiv_to_l_@f1+1)
	movf	(sprintf@fval+2)^080h,w
	movwf	(__tdiv_to_l_@f1+2)
	movf	(sprintf@integ)^080h,w
	movwf	(__tdiv_to_l_@f2)
	movf	(sprintf@integ+1)^080h,w
	movwf	(__tdiv_to_l_@f2+1)
	movf	(sprintf@integ+2)^080h,w
	movwf	(__tdiv_to_l_@f2+2)
	fcall	__tdiv_to_l_
	movf	(3+(?__tdiv_to_l_)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$149+3)^080h
	movf	(2+(?__tdiv_to_l_)),w
	movwf	(_sprintf$149+2)^080h
	movf	(1+(?__tdiv_to_l_)),w
	movwf	(_sprintf$149+1)^080h
	movf	(0+(?__tdiv_to_l_)),w
	movwf	(_sprintf$149)^080h

	goto	l2370
	
l156:	
	
l2370:	
	movf	(_sprintf$149+3)^080h,w
	movwf	(sprintf@_val+3)^080h
	movf	(_sprintf$149+2)^080h,w
	movwf	(sprintf@_val+2)^080h
	movf	(_sprintf$149+1)^080h,w
	movwf	(sprintf@_val+1)^080h
	movf	(_sprintf$149)^080h,w
	movwf	(sprintf@_val)^080h

	line	1138
	
l2372:	
;doprnt.c: 1138: fval = 0.0;
	movlw	0x0
	movwf	(sprintf@fval)^080h
	movlw	0x0
	movwf	(sprintf@fval+1)^080h
	movlw	0x0
	movwf	(sprintf@fval+2)^080h
	line	1139
;doprnt.c: 1139: } else {
	goto	l2378
	
l148:	
	line	1140
	
l2374:	
;doprnt.c: 1140: _val._val = (unsigned long)fval;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___fttol@f1+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1141
;doprnt.c: 1141: fval -= (double)_val._val;
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lltoft@c+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lltoft@c+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lltoft@c+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lltoft@c)

	fcall	___lltoft
	movf	(0+(?___lltoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f2)
	movf	(1+(?___lltoft)),w
	movwf	(___ftsub@f2+1)
	movf	(2+(?___lltoft)),w
	movwf	(___ftsub@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftsub@f1+2)
	fcall	___ftsub
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftsub)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@fval+2)^080h
	line	1142
	
l2376:	
;doprnt.c: 1142: exp = 0;
	clrf	(sprintf@exp)^080h
	clrf	(sprintf@exp+1)^080h
	goto	l2378
	line	1143
	
l157:	
	line	1145
	
l2378:	
;doprnt.c: 1143: }
;doprnt.c: 1145: for(c = 1 ; c != (sizeof dpowers/sizeof dpowers[0]) ; c++)
	clrf	(sprintf@c)^080h
	incf	(sprintf@c)^080h,f
	
l2380:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3461
	goto	u3460
u3461:
	goto	l2384
u3460:
	goto	l2392
	
l2382:	
	goto	l2392
	line	1146
	
l158:	
	
l2384:	
;doprnt.c: 1146: if(_val._val < dpowers[c])
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u3475:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u3475
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	((??_sprintf+1)+0)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+1)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+2)
	fcall	stringdir
	movwf	((??_sprintf+1)+0+3)
	movf	3+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+3)^080h,w
	skipz
	goto	u3485
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	2+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+2)^080h,w
	skipz
	goto	u3485
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val+1)^080h,w
	skipz
	goto	u3485
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(??_sprintf+1)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@_val)^080h,w
u3485:
	skipnc
	goto	u3481
	goto	u3480
u3481:
	goto	l2388
u3480:
	goto	l2392
	line	1147
	
l2386:	
;doprnt.c: 1147: break;
	goto	l2392
	
l160:	
	line	1145
	
l2388:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	
l2390:	
	movf	(sprintf@c)^080h,w
	xorlw	0Ah
	skipz
	goto	u3491
	goto	u3490
u3491:
	goto	l2384
u3490:
	goto	l2392
	
l159:	
	line	1197
	
l2392:	
;doprnt.c: 1184: {
;doprnt.c: 1197: if(flag & 0x03)
	movlw	low(03h)
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u3501
	goto	u3500
u3501:
	goto	l162
u3500:
	line	1199
	
l2394:	
;doprnt.c: 1199: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2396:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l162
	
l161:	
	line	1205
;doprnt.c: 1204: }
;doprnt.c: 1205: while(c--) {
	goto	l162
	
l163:	
	line	1210
	
l2398:	
;doprnt.c: 1209: {
;doprnt.c: 1210: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u3515:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u3515
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd)^080h

	line	1211
	
l2400:	
;doprnt.c: 1211: vd %= 10;
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(sprintf@vd+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@vd+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@vd+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@vd)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@vd+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@vd+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@vd)^080h

	line	1212
	
l2402:	
;doprnt.c: 1212: ((*sp++ = ('0' + vd)));
	movf	(sprintf@vd)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1215
	
l162:	
	line	1205
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l2398
u3520:
	goto	l2410
	
l164:	
	line	1216
;doprnt.c: 1213: }
;doprnt.c: 1215: }
;doprnt.c: 1216: while(exp > 0) {
	goto	l2410
	
l166:	
	line	1217
	
l2404:	
;doprnt.c: 1217: ((*sp++ = ('0')));
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2406:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1218
	
l2408:	
;doprnt.c: 1218: exp--;
	movlw	low(-1)
	addwf	(sprintf@exp)^080h,f
	skipnc
	incf	(sprintf@exp+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@exp+1)^080h,f
	goto	l2410
	line	1219
	
l165:	
	line	1216
	
l2410:	
	movf	(sprintf@exp+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3535
	movlw	low(01h)
	subwf	(sprintf@exp)^080h,w
u3535:

	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l2404
u3530:
	goto	l2412
	
l167:	
	line	1220
	
l2412:	
;doprnt.c: 1219: }
;doprnt.c: 1220: if(prec > (int)((sizeof dpowers/sizeof dpowers[0])-2))
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec+1)^080h,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(09h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3545
	movlw	low(09h)
	subwf	(sprintf@prec)^080h,w
u3545:

	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l2416
u3540:
	line	1221
	
l2414:	
;doprnt.c: 1221: c = (sizeof dpowers/sizeof dpowers[0])-2;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	goto	l169
	line	1222
	
l168:	
	line	1223
	
l2416:	
;doprnt.c: 1222: else
;doprnt.c: 1223: c = prec;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@prec)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	
l169:	
	line	1224
;doprnt.c: 1224: prec -= c;
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	clrf	(??_sprintf+0)+0+1
	btfsc	(??_sprintf+0)+0,7
	decf	(??_sprintf+0)+0+1,f
	movf	0+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	subwf	(sprintf@prec)^080h,f
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	skipc
	decf	(sprintf@prec+1)^080h,f
	subwf	(sprintf@prec+1)^080h,f
	line	1228
;doprnt.c: 1228: if(c)
	movf	(sprintf@c)^080h,w
	skipz
	goto	u3550
	goto	l2422
u3550:
	line	1230
	
l2418:	
;doprnt.c: 1230: ((*sp++ = ('.')));
	movlw	(02Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2420:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l2422
	
l170:	
	line	1236
	
l2422:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(sprintf@c)^080h,w
	fcall	_scale
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$578)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$578+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?_scale)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_sprintf$578+2)^080h
	
l2424:	
;doprnt.c: 1236: _val._val = (long)(fval * scale(c));
	movf	(_sprintf$578)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$578+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_sprintf$578+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@fval+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___fttol)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val)^080h

	line	1237
;doprnt.c: 1237: while(c--) {
	goto	l2434
	
l172:	
	line	1238
	
l2426:	
;doprnt.c: 1238: unsigned long vd = _val._val/dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u3565:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u3565
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___lldiv@divisor)
	fcall	stringdir
	movwf	(___lldiv@divisor+1)
	fcall	stringdir
	movwf	(___lldiv@divisor+2)
	fcall	stringdir
	movwf	(___lldiv@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___lldiv@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___lldiv@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___lldiv@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	movf	(3+(?___lldiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_151+3)^080h
	movf	(2+(?___lldiv)),w
	movwf	(sprintf@vd_151+2)^080h
	movf	(1+(?___lldiv)),w
	movwf	(sprintf@vd_151+1)^080h
	movf	(0+(?___lldiv)),w
	movwf	(sprintf@vd_151)^080h

	line	1239
	
l2428:	
;doprnt.c: 1239: vd %= 10;
	movlw	0
	movwf	(___llmod@divisor+3)
	movlw	0
	movwf	(___llmod@divisor+2)
	movlw	0
	movwf	(___llmod@divisor+1)
	movlw	0Ah
	movwf	(___llmod@divisor)

	movf	(sprintf@vd_151+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@vd_151+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@vd_151+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@vd_151)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@vd_151+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@vd_151+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@vd_151+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@vd_151)^080h

	line	1240
	
l2430:	
;doprnt.c: 1240: ((*sp++ = ('0' + vd)));
	movf	(sprintf@vd_151)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1241
	
l2432:	
;doprnt.c: 1241: _val._val %= dpowers[c];
	movf	(sprintf@c)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	(02h)-1
u3575:
	clrc
	rlf	(??_sprintf+0)+0,f
	addlw	-1
	skipz
	goto	u3575
	clrc
	rlf	(??_sprintf+0)+0,w
	addlw	low((_dpowers)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(___llmod@divisor)
	fcall	stringdir
	movwf	(___llmod@divisor+1)
	fcall	stringdir
	movwf	(___llmod@divisor+2)
	fcall	stringdir
	movwf	(___llmod@divisor+3)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@_val+3)^080h,w
	movwf	(___llmod@dividend+3)
	movf	(sprintf@_val+2)^080h,w
	movwf	(___llmod@dividend+2)
	movf	(sprintf@_val+1)^080h,w
	movwf	(___llmod@dividend+1)
	movf	(sprintf@_val)^080h,w
	movwf	(___llmod@dividend)

	fcall	___llmod
	movf	(3+(?___llmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@_val+3)^080h
	movf	(2+(?___llmod)),w
	movwf	(sprintf@_val+2)^080h
	movf	(1+(?___llmod)),w
	movwf	(sprintf@_val+1)^080h
	movf	(0+(?___llmod)),w
	movwf	(sprintf@_val)^080h

	goto	l2434
	line	1242
	
l171:	
	line	1237
	
l2434:	
	movlw	(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@c)^080h,f
	movf	((sprintf@c)^080h),w
	xorlw	-1
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l2426
u3580:
	goto	l2442
	
l173:	
	line	1244
;doprnt.c: 1242: }
;doprnt.c: 1244: while(prec) {
	goto	l2442
	
l175:	
	line	1245
	
l2436:	
;doprnt.c: 1245: ((*sp++ = ('0')));
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2438:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	line	1246
	
l2440:	
;doprnt.c: 1246: prec--;
	movlw	low(-1)
	addwf	(sprintf@prec)^080h,f
	skipnc
	incf	(sprintf@prec+1)^080h,f
	movlw	high(-1)
	addwf	(sprintf@prec+1)^080h,f
	goto	l2442
	line	1247
	
l174:	
	line	1244
	
l2442:	
	movf	((sprintf@prec+1)^080h),w
	iorwf	((sprintf@prec)^080h),w
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l2436
u3590:
	goto	l2450
	
l176:	
	line	1254
;doprnt.c: 1247: }
;doprnt.c: 1254: continue;
	goto	l2450
	line	1255
	
l140:	
	line	1447
	
l2444:	
;doprnt.c: 1255: }
;doprnt.c: 1431: {
;doprnt.c: 1447: if(flag & 0x03)
	movlw	low(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_sprintf+0)+0
	movlw	high(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(sprintf@flag+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(??_sprintf+0)+0
	movf	1+(??_sprintf+0)+0,w
	iorwf	0+(??_sprintf+0)+0,w
	skipnz
	goto	u3601
	goto	u3600
u3601:
	goto	l2450
u3600:
	line	1448
	
l2446:	
;doprnt.c: 1448: ((*sp++ = ('-')));
	movlw	(02Dh)
	movwf	(??_sprintf+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(??_sprintf+0)+0,w
	bsf	status, 7	;select IRP bank2
	movwf	indf
	
l2448:	
	movlw	(01h)
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	addwf	(sprintf@sp)^080h,f
	goto	l2450
	
l177:	
	goto	l2450
	line	1542
	
l131:	
	line	545
	
l2450:	
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	addwf	(sprintf@f),f
	movlw	-01h
	addwf	(sprintf@f),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_sprintf+0)+0
	movf	(??_sprintf+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(sprintf@c)^080h
	movf	((sprintf@c)^080h),f
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l2292
u3610:
	goto	l2452
	
l178:	
	goto	l2452
	line	1544
;doprnt.c: 1478: }
;doprnt.c: 1542: }
;doprnt.c: 1544: alldone:
	
l136:	
	line	1547
	
l2452:	
;doprnt.c: 1547: *sp = 0;
	movf	(sprintf@sp)^080h,w
	movwf	fsr0
	bsf	status, 7	;select IRP bank2
	clrf	indf
	goto	l179
	line	1549
	
l2454:	
	line	1550
;doprnt.c: 1549: return 0;
;	Return value of _sprintf is never used
	
l179:	
	return
	opt stack 0
GLOBAL	__end_of_sprintf
	__end_of_sprintf:
	signat	_sprintf,4698
	global	_scale

;; *************** function _scale *****************
;; Defined at:
;;		line 425 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  scl             1    wreg     char 
;; Auto vars:     Size  Location     Type
;;  scl             1   40[BANK0 ] char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___bmul
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	425
global __ptext3
__ptext3:	;psect for function _scale
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	425
	global	__size_of_scale
	__size_of_scale	equ	__end_of_scale-_scale
	
_scale:	
;incstack = 0
	opt	stack 4
; Regs used in _scale: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;scale@scl stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(scale@scl)
	line	428
	
l1946:	
;doprnt.c: 428: if(scl < 0) {
	btfss	(scale@scl),7
	goto	u2651
	goto	u2650
u2651:
	goto	l1968
u2650:
	line	429
	
l1948:	
;doprnt.c: 429: scl = -scl;
	comf	(scale@scl),f
	incf	(scale@scl),f
	line	430
	
l1950:	
;doprnt.c: 430: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2661
	goto	u2660
u2661:
	goto	l1958
u2660:
	line	431
	
l1952:	
;doprnt.c: 431: return _npowers_[scl/100+18] * _npowers_[(scl%100)/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$577)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$577+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$577+2)
;doprnt.c: 431: return _npowers_[scl/100+18] * _npowers_[(scl%100)/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_scale$577),w
	movwf	(___ftmul@f2)
	movf	(_scale$577+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$577+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l123
	
l1954:	
	goto	l123
	
l1956:	
	goto	l1964
	line	432
	
l122:	
	
l1958:	
;doprnt.c: 432: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l1964
u2670:
	line	433
	
l1960:	
;doprnt.c: 433: return _npowers_[scl/10+9] * _npowers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l123
	
l1962:	
	goto	l123
	
l125:	
	goto	l1964
	line	434
	
l124:	
	
l1964:	
;doprnt.c: 434: return _npowers_[scl];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l123
	
l1966:	
	goto	l123
	line	435
	
l121:	
	line	436
	
l1968:	
;doprnt.c: 435: }
;doprnt.c: 436: if(scl>=110)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((06Eh)^80h)
	skipc
	goto	u2681
	goto	u2680
u2681:
	goto	l1976
u2680:
	line	437
	
l1970:	
;doprnt.c: 437: return _powers_[scl/100+18] * _powers_[(scl%100)/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_scale$577)
	movf	(1+(?___ftmul)),w
	movwf	(_scale$577+1)
	movf	(2+(?___ftmul)),w
	movwf	(_scale$577+2)
;doprnt.c: 437: return _powers_[scl/100+18] * _powers_[(scl%100)/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_scale$577),w
	movwf	(___ftmul@f2)
	movf	(_scale$577+1),w
	movwf	(___ftmul@f2+1)
	movf	(_scale$577+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l123
	
l1972:	
	goto	l123
	
l1974:	
	goto	l1982
	line	438
	
l126:	
	
l1976:	
;doprnt.c: 438: else if(scl > 10)
	movf	(scale@scl),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u2691
	goto	u2690
u2691:
	goto	l1982
u2690:
	line	439
	
l1978:	
;doprnt.c: 439: return _powers_[scl/10+9] * _powers_[scl%10];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	movwf	(___awmod@dividend)
	clrf	(___awmod@dividend+1)
	btfsc	(___awmod@dividend),7
	decf	(___awmod@dividend+1),f
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_scale+1)+0
	movf	(??_scale+1)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(scale@scl),w
	movwf	(___awdiv@dividend)
	clrf	(___awdiv@dividend+1)
	btfsc	(___awdiv@dividend),7
	decf	(___awdiv@dividend+1),f
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_scale)
	movf	(1+(?___ftmul)),w
	movwf	(?_scale+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_scale+2)
	goto	l123
	
l1980:	
	goto	l123
	
l128:	
	goto	l1982
	line	440
	
l127:	
	
l1982:	
;doprnt.c: 440: return _powers_[scl];
	movlw	(03h)
	movwf	(??_scale+0)+0
	movf	(??_scale+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(scale@scl),w
	fcall	___bmul
	addlw	low((__powers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_scale)
	fcall	stringdir
	movwf	(?_scale+1)
	fcall	stringdir
	movwf	(?_scale+2)
	goto	l123
	
l1984:	
	line	441
	
l123:	
	return
	opt stack 0
GLOBAL	__end_of_scale
	__end_of_scale:
	signat	_scale,4219
	global	_fround

;; *************** function _fround *****************
;; Defined at:
;;		line 409 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
;; Parameters:    Size  Location     Type
;;  prec            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  prec            1   47[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		___bmul
;;		___ftmul
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	409
global __ptext4
__ptext4:	;psect for function _fround
psect	text4
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\doprnt.c"
	line	409
	global	__size_of_fround
	__size_of_fround	equ	__end_of_fround-_fround
	
_fround:	
;incstack = 0
	opt	stack 4
; Regs used in _fround: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;fround@prec stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(fround@prec)
	line	413
	
l1924:	
;doprnt.c: 413: if(prec>=110)
	movlw	(06Eh)
	subwf	(fround@prec),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l1934
u2630:
	line	414
	
l1926:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(064h)
	movwf	(___awmod@divisor)
	movlw	high(064h)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(0+(?___awmod)),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(064h)
	movwf	(___awdiv@divisor)
	movlw	high(064h)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_fround+4)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	012h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$575)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$575+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$575+2)
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movf	(_fround$575),w
	movwf	(___ftmul@f2)
	movf	(_fround$575+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$575+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$576)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$576+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$576+2)
	
l1928:	
;doprnt.c: 414: return 0.5 * _npowers_[prec/100+18] * _npowers_[(prec%100)/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$576),w
	movwf	(___ftmul@f2)
	movf	(_fround$576+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$576+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l116
	
l1930:	
	goto	l116
	
l1932:	
	goto	l1942
	line	415
	
l115:	
	
l1934:	
;doprnt.c: 415: else if(prec > 10)
	movlw	(0Bh)
	subwf	(fround@prec),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l1942
u2640:
	line	416
	
l1936:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	movwf	(??_fround+1)+0
	clrf	(??_fround+1)+0+1
	movf	0+(??_fround+1)+0,w
	movwf	(___awmod@dividend)
	movf	1+(??_fround+1)+0,w
	movwf	(___awmod@dividend+1)
	movlw	low(0Ah)
	movwf	(___awmod@divisor)
	movlw	high(0Ah)
	movwf	((___awmod@divisor))+1
	fcall	___awmod
	movf	(0+(?___awmod)),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f1)
	fcall	stringdir
	movwf	(___ftmul@f1+1)
	fcall	stringdir
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+3)+0
	movf	(??_fround+3)+0,w
	movwf	(___bmul@multiplicand)
	movlw	low(0Ah)
	movwf	(___awdiv@divisor)
	movlw	high(0Ah)
	movwf	((___awdiv@divisor))+1
	movf	(fround@prec),w
	movwf	(??_fround+4)+0
	clrf	(??_fround+4)+0+1
	movf	0+(??_fround+4)+0,w
	movwf	(___awdiv@dividend)
	movf	1+(??_fround+4)+0,w
	movwf	(___awdiv@dividend+1)
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	addlw	09h
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_fround$575)
	movf	(1+(?___ftmul)),w
	movwf	(_fround$575+1)
	movf	(2+(?___ftmul)),w
	movwf	(_fround$575+2)
	
l1938:	
;doprnt.c: 416: return 0.5 * _npowers_[prec/10+9] * _npowers_[prec%10];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movf	(_fround$575),w
	movwf	(___ftmul@f2)
	movf	(_fround$575+1),w
	movwf	(___ftmul@f2+1)
	movf	(_fround$575+2),w
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l116
	
l1940:	
	goto	l116
	
l118:	
	goto	l1942
	line	417
	
l117:	
	
l1942:	
;doprnt.c: 417: return 0.5 * _npowers_[prec];
	movlw	0x0
	movwf	(___ftmul@f1)
	movlw	0x0
	movwf	(___ftmul@f1+1)
	movlw	0x3f
	movwf	(___ftmul@f1+2)
	movlw	(03h)
	movwf	(??_fround+0)+0
	movf	(??_fround+0)+0,w
	movwf	(___bmul@multiplicand)
	movf	(fround@prec),w
	fcall	___bmul
	addlw	low((__npowers_)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___ftmul@f2)
	fcall	stringdir
	movwf	(___ftmul@f2+1)
	fcall	stringdir
	movwf	(___ftmul@f2+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?_fround)
	movf	(1+(?___ftmul)),w
	movwf	(?_fround+1)
	movf	(2+(?___ftmul)),w
	movwf	(?_fround+2)
	goto	l116
	
l1944:	
	line	418
	
l116:	
	return
	opt stack 0
GLOBAL	__end_of_fround
	__end_of_fround:
	signat	_fround,4219
	global	___ftmul

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 62 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;;  f2              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
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
;;		_main
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
global __ptext5
__ptext5:	;psect for function ___ftmul
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftmul.c"
	line	62
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l1856:	
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
	goto	u2471
	goto	u2470
u2471:
	goto	l1862
u2470:
	line	68
	
l1858:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l519
	
l1860:	
	goto	l519
	
l518:	
	line	69
	
l1862:	
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
	goto	u2481
	goto	u2480
u2481:
	goto	l1868
u2480:
	line	70
	
l1864:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l519
	
l1866:	
	goto	l519
	
l520:	
	line	71
	
l1868:	
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
u2495:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2490:
	addlw	-1
	skipz
	goto	u2495
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
u2505:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u2500:
	addlw	-1
	skipz
	goto	u2505
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
	
l1870:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	77
	
l1872:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	78
	
l1874:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	79
	
l1876:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	134
	
l1878:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1880
	line	135
	
l521:	
	line	136
	
l1880:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1884
u2510:
	line	137
	
l1882:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2521
	addwf	(___ftmul@f3_as_product+1),f
u2521:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2522
	addwf	(___ftmul@f3_as_product+2),f
u2522:

	goto	l1884
	
l522:	
	line	138
	
l1884:	
	movlw	01h
u2535:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2535

	line	139
	
l1886:	
	movlw	01h
u2545:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u2545
	line	140
	
l1888:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l1880
u2550:
	goto	l1890
	
l523:	
	line	143
	
l1890:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l1892
	line	144
	
l524:	
	line	145
	
l1892:	
	btfss	(___ftmul@f1),(0)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l1896
u2560:
	line	146
	
l1894:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u2571
	addwf	(___ftmul@f3_as_product+1),f
u2571:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u2572
	addwf	(___ftmul@f3_as_product+2),f
u2572:

	goto	l1896
	
l525:	
	line	147
	
l1896:	
	movlw	01h
u2585:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u2585

	line	148
	
l1898:	
	movlw	01h
u2595:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u2595

	line	149
	
l1900:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u2601
	goto	u2600
u2601:
	goto	l1892
u2600:
	goto	l1902
	
l526:	
	line	156
	
l1902:	
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
	goto	l519
	
l1904:	
	line	157
	
l519:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
	signat	___ftmul,8315
	global	___bmul

;; *************** function ___bmul *****************
;; Defined at:
;;		line 4 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    6[BANK0 ] unsigned char 
;;  product         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
global __ptext6
__ptext6:	;psect for function ___bmul
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul8.c"
	line	4
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___bmul@multiplier)
	line	6
	
l1686:	
	clrf	(___bmul@product)
	goto	l1688
	line	42
	
l280:	
	line	43
	
l1688:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2021
	goto	u2020
u2021:
	goto	l1692
u2020:
	line	44
	
l1690:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l1692
	
l281:	
	line	45
	
l1692:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	46
	
l1694:	
	clrc
	rrf	(___bmul@multiplier),f

	line	47
	
l1696:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2031
	goto	u2030
u2031:
	goto	l1688
u2030:
	goto	l1698
	
l282:	
	line	50
	
l1698:	
	movf	(___bmul@product),w
	goto	l283
	
l1700:	
	line	51
	
l283:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
	signat	___bmul,8313
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___awmod
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l1746:	
	clrf	(___awmod@sign)
	line	14
	
l1748:	
	btfss	(___awmod@dividend+1),7
	goto	u2141
	goto	u2140
u2141:
	goto	l1754
u2140:
	line	15
	
l1750:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l1752:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l1754
	line	17
	
l398:	
	line	18
	
l1754:	
	btfss	(___awmod@divisor+1),7
	goto	u2151
	goto	u2150
u2151:
	goto	l1758
u2150:
	line	19
	
l1756:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l1758
	
l399:	
	line	20
	
l1758:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2161
	goto	u2160
u2161:
	goto	l1776
u2160:
	line	21
	
l1760:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l1766
	
l402:	
	line	23
	
l1762:	
	movlw	01h
	
u2175:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2175
	line	24
	
l1764:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l1766
	line	25
	
l401:	
	line	22
	
l1766:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l1762
u2180:
	goto	l1768
	
l403:	
	goto	l1768
	line	26
	
l404:	
	line	27
	
l1768:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2195
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2195:
	skipc
	goto	u2191
	goto	u2190
u2191:
	goto	l1772
u2190:
	line	28
	
l1770:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l1772
	
l405:	
	line	29
	
l1772:	
	movlw	01h
	
u2205:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2205
	line	30
	
l1774:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l1768
u2210:
	goto	l1776
	
l406:	
	goto	l1776
	line	31
	
l400:	
	line	32
	
l1776:	
	movf	(___awmod@sign),w
	skipz
	goto	u2220
	goto	l1780
u2220:
	line	33
	
l1778:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l1780
	
l407:	
	line	34
	
l1780:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l408
	
l1782:	
	line	35
	
l408:	
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
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_fround
;;		_scale
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___awdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l1702:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	15
	
l1704:	
	btfss	(___awdiv@divisor+1),7
	goto	u2041
	goto	u2040
u2041:
	goto	l1710
u2040:
	line	16
	
l1706:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l1708:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l1710
	line	18
	
l385:	
	line	19
	
l1710:	
	btfss	(___awdiv@dividend+1),7
	goto	u2051
	goto	u2050
u2051:
	goto	l1716
u2050:
	line	20
	
l1712:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l1714:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l1716
	line	22
	
l386:	
	line	23
	
l1716:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l1718:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2061
	goto	u2060
u2061:
	goto	l1738
u2060:
	line	25
	
l1720:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l1726
	
l389:	
	line	27
	
l1722:	
	movlw	01h
	
u2075:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2075
	line	28
	
l1724:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l1726
	line	29
	
l388:	
	line	26
	
l1726:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2081
	goto	u2080
u2081:
	goto	l1722
u2080:
	goto	l1728
	
l390:	
	goto	l1728
	line	30
	
l391:	
	line	31
	
l1728:	
	movlw	01h
	
u2095:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2095
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2105
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2105:
	skipc
	goto	u2101
	goto	u2100
u2101:
	goto	l1734
u2100:
	line	33
	
l1730:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l1732:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l1734
	line	35
	
l392:	
	line	36
	
l1734:	
	movlw	01h
	
u2115:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2115
	line	37
	
l1736:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l1728
u2120:
	goto	l1738
	
l393:	
	goto	l1738
	line	38
	
l387:	
	line	39
	
l1738:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2130
	goto	l1742
u2130:
	line	40
	
l1740:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l1742
	
l394:	
	line	41
	
l1742:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l395
	
l1744:	
	line	42
	
l395:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
	global	__tdiv_to_l_

;; *************** function __tdiv_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;;  f2              3    3[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        10       6       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
	line	60
global __ptext9
__ptext9:	;psect for function __tdiv_to_l_
psect	text9
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftdivl.c"
	line	60
	global	__size_of__tdiv_to_l_
	__size_of__tdiv_to_l_	equ	__end_of__tdiv_to_l_-__tdiv_to_l_
	
__tdiv_to_l_:	
;incstack = 0
	opt	stack 6
; Regs used in __tdiv_to_l_: [wreg+status,2+status,0]
	line	66
	
l1986:	
	movf	(__tdiv_to_l_@f1),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f1+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f1+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__tdiv_to_l_@exp1)
	movf	((__tdiv_to_l_@exp1)),f
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l1992
u2700:
	line	67
	
l1988:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l495
	
l1990:	
	goto	l495
	
l494:	
	line	68
	
l1992:	
	movf	(__tdiv_to_l_@f2),w
	movwf	((??__tdiv_to_l_+0)+0)
	movf	(__tdiv_to_l_@f2+1),w
	movwf	((??__tdiv_to_l_+0)+0+1)
	movf	(__tdiv_to_l_@f2+2),w
	movwf	((??__tdiv_to_l_+0)+0+2)
	clrc
	rlf	(??__tdiv_to_l_+0)+1,w
	rlf	(??__tdiv_to_l_+0)+2,w
	movwf	(??__tdiv_to_l_+3)+0
	movf	(??__tdiv_to_l_+3)+0,w
	movwf	(__tdiv_to_l_@cntr)
	movf	((__tdiv_to_l_@cntr)),f
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l496
u2710:
	line	69
	
l1994:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l495
	
l1996:	
	goto	l495
	
l496:	
	line	70
	bsf	(__tdiv_to_l_@f1)+(15/8),(15)&7
	line	71
	
l1998:	
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f1+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f1+2),f
	line	72
	
l2000:	
	bsf	(__tdiv_to_l_@f2)+(15/8),(15)&7
	line	73
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2),f
	movlw	0FFh
	andwf	(__tdiv_to_l_@f2+1),f
	movlw	0
	andwf	(__tdiv_to_l_@f2+2),f
	line	74
	movlw	0
	movwf	(__tdiv_to_l_@quot+3)
	movlw	0
	movwf	(__tdiv_to_l_@quot+2)
	movlw	0
	movwf	(__tdiv_to_l_@quot+1)
	movlw	0
	movwf	(__tdiv_to_l_@quot)

	line	75
	
l2002:	
	movlw	low(07Fh)
	subwf	(__tdiv_to_l_@exp1),f
	line	76
	
l2004:	
	movlw	(098h)
	addwf	(__tdiv_to_l_@cntr),w
	movwf	(??__tdiv_to_l_+0)+0
	movf	0+(??__tdiv_to_l_+0)+0,w
	subwf	(__tdiv_to_l_@exp1),f
	line	77
	movlw	(018h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	movwf	(__tdiv_to_l_@cntr)
	goto	l2006
	line	78
	
l497:	
	line	79
	
l2006:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u2725:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u2725
	line	80
	
l2008:	
	movf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),w
	skipz
	goto	u2735
	movf	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),w
	skipz
	goto	u2735
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),w
u2735:
	skipc
	goto	u2731
	goto	u2730
u2731:
	goto	l2014
u2730:
	line	81
	
l2010:	
	movf	(__tdiv_to_l_@f2),w
	subwf	(__tdiv_to_l_@f1),f
	movf	(__tdiv_to_l_@f2+1),w
	skipc
	incfsz	(__tdiv_to_l_@f2+1),w
	subwf	(__tdiv_to_l_@f1+1),f
	movf	(__tdiv_to_l_@f2+2),w
	skipc
	incf	(__tdiv_to_l_@f2+2),w
	subwf	(__tdiv_to_l_@f1+2),f
	line	82
	
l2012:	
	bsf	(__tdiv_to_l_@quot)+(0/8),(0)&7
	goto	l2014
	line	83
	
l498:	
	line	84
	
l2014:	
	movlw	01h
u2745:
	clrc
	rlf	(__tdiv_to_l_@f1),f
	rlf	(__tdiv_to_l_@f1+1),f
	rlf	(__tdiv_to_l_@f1+2),f
	addlw	-1
	skipz
	goto	u2745
	line	85
	
l2016:	
	movlw	low(01h)
	subwf	(__tdiv_to_l_@cntr),f
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l2006
u2750:
	
l499:	
	line	86
	btfss	(__tdiv_to_l_@exp1),7
	goto	u2761
	goto	u2760
u2761:
	goto	l2026
u2760:
	line	87
	
l2018:	
	movf	(__tdiv_to_l_@exp1),w
	xorlw	80h
	addlw	-((-23)^80h)
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l2024
u2770:
	line	88
	
l2020:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l495
	
l2022:	
	goto	l495
	
l501:	
	goto	l2024
	line	89
	
l502:	
	line	90
	
l2024:	
	movlw	01h
u2785:
	clrc
	rrf	(__tdiv_to_l_@quot+3),f
	rrf	(__tdiv_to_l_@quot+2),f
	rrf	(__tdiv_to_l_@quot+1),f
	rrf	(__tdiv_to_l_@quot),f
	addlw	-1
	skipz
	goto	u2785

	line	91
	movlw	(01h)
	movwf	(??__tdiv_to_l_+0)+0
	movf	(??__tdiv_to_l_+0)+0,w
	addwf	(__tdiv_to_l_@exp1),f
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l2024
u2790:
	goto	l2036
	
l503:	
	line	92
	goto	l2036
	
l500:	
	line	93
	
l2026:	
	movlw	(018h)
	subwf	(__tdiv_to_l_@exp1),w
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l2034
u2800:
	line	94
	
l2028:	
	movlw	0
	movwf	(?__tdiv_to_l_+3)
	movlw	0
	movwf	(?__tdiv_to_l_+2)
	movlw	0
	movwf	(?__tdiv_to_l_+1)
	movlw	0
	movwf	(?__tdiv_to_l_)

	goto	l495
	
l2030:	
	goto	l495
	
l505:	
	line	95
	goto	l2034
	
l507:	
	line	96
	
l2032:	
	movlw	01h
	movwf	(??__tdiv_to_l_+0)+0
u2815:
	clrc
	rlf	(__tdiv_to_l_@quot),f
	rlf	(__tdiv_to_l_@quot+1),f
	rlf	(__tdiv_to_l_@quot+2),f
	rlf	(__tdiv_to_l_@quot+3),f
	decfsz	(??__tdiv_to_l_+0)+0
	goto	u2815
	line	97
	movlw	low(01h)
	subwf	(__tdiv_to_l_@exp1),f
	goto	l2034
	line	98
	
l506:	
	line	95
	
l2034:	
	movf	(__tdiv_to_l_@exp1),f
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l2032
u2820:
	goto	l2036
	
l508:	
	goto	l2036
	line	99
	
l504:	
	line	100
	
l2036:	
	movf	(__tdiv_to_l_@quot+3),w
	movwf	(?__tdiv_to_l_+3)
	movf	(__tdiv_to_l_@quot+2),w
	movwf	(?__tdiv_to_l_+2)
	movf	(__tdiv_to_l_@quot+1),w
	movwf	(?__tdiv_to_l_+1)
	movf	(__tdiv_to_l_@quot),w
	movwf	(?__tdiv_to_l_)

	goto	l495
	
l2038:	
	line	101
	
l495:	
	return
	opt stack 0
GLOBAL	__end_of__tdiv_to_l_
	__end_of__tdiv_to_l_:
	signat	__tdiv_to_l_,8316
	global	__div_to_l_

;; *************** function __div_to_l_ *****************
;; Defined at:
;;		line 60 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] unsigned long 
;;  f2              3    3[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quot            4    0[BANK0 ] unsigned long 
;;  exp1            1    5[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:        14       6       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text10,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
	line	60
global __ptext10
__ptext10:	;psect for function __div_to_l_
psect	text10
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fldivl.c"
	line	60
	global	__size_of__div_to_l_
	__size_of__div_to_l_	equ	__end_of__div_to_l_-__div_to_l_
	
__div_to_l_:	
;incstack = 0
	opt	stack 6
; Regs used in __div_to_l_: [wreg-fsr0h+status,2+status,0]
	line	66
	
l2040:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(__div_to_l_@exp1)
	movf	((__div_to_l_@exp1)),f
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l2046
u2830:
	line	67
	
l2042:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l418
	
l2044:	
	goto	l418
	
l417:	
	line	68
	
l2046:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	clrc
	rlf	(??__div_to_l_+0)+2,w
	rlf	(??__div_to_l_+0)+3,w
	movwf	(??__div_to_l_+4)+0
	movf	(??__div_to_l_+4)+0,w
	movwf	(__div_to_l_@cntr)
	movf	((__div_to_l_@cntr)),f
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2052
u2840:
	line	69
	
l2048:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l418
	
l2050:	
	goto	l418
	
l419:	
	line	70
	
l2052:	
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	71
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	72
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	incf	fsr0,f
	movlw	080h
	iorwf	indf,f
	incf	fsr0,f
	movlw	0
	iorwf	indf,f
	line	73
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0FFh
	andwf	indf,f
	incf	fsr0,f
	movlw	0
	andwf	indf,f
	line	74
	
l2054:	
	movlw	0
	movwf	(__div_to_l_@quot+3)
	movlw	0
	movwf	(__div_to_l_@quot+2)
	movlw	0
	movwf	(__div_to_l_@quot+1)
	movlw	0
	movwf	(__div_to_l_@quot)

	line	75
	
l2056:	
	movlw	low(07Fh)
	subwf	(__div_to_l_@exp1),f
	line	76
	
l2058:	
	movlw	(0A0h)
	addwf	(__div_to_l_@cntr),w
	movwf	(??__div_to_l_+0)+0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	(__div_to_l_@exp1),f
	line	77
	
l2060:	
	movlw	(020h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	movwf	(__div_to_l_@cntr)
	goto	l2062
	line	78
	
l420:	
	line	79
	
l2062:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u2855:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u2855
	line	80
	
l2064:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+4)+0+3
	movf	3+(??__div_to_l_+0)+0,w
	subwf	3+(??__div_to_l_+4)+0,w
	skipz
	goto	u2865
	movf	2+(??__div_to_l_+0)+0,w
	subwf	2+(??__div_to_l_+4)+0,w
	skipz
	goto	u2865
	movf	1+(??__div_to_l_+0)+0,w
	subwf	1+(??__div_to_l_+4)+0,w
	skipz
	goto	u2865
	movf	0+(??__div_to_l_+0)+0,w
	subwf	0+(??__div_to_l_+4)+0,w
u2865:
	skipc
	goto	u2861
	goto	u2860
u2861:
	goto	l421
u2860:
	line	81
	
l2066:	
	movlw	low(__div_to_l_@f2)
	movwf	fsr0
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+0
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+1
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+2
	incf	fsr0,f
	movf	indf,w
	movwf	(??__div_to_l_+0)+0+3
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	movf	0+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	1+(??__div_to_l_+0)+0,w
	skipc
	incfsz	1+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	2+(??__div_to_l_+0)+0,w
	skipc
	incfsz	2+(??__div_to_l_+0)+0,w
	subwf	indf,f
	incf	fsr0
	movf	3+(??__div_to_l_+0)+0,w
	skipc
	incf	3+(??__div_to_l_+0)+0,w
	subwf	indf,f
	movlw	3
	subwf	fsr0
	line	82
	
l2068:	
	bsf	(__div_to_l_@quot)+(0/8),(0)&7
	line	83
	
l421:	
	line	84
	movlw	low(__div_to_l_@f1)
	movwf	fsr0
	clrc
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	incf	fsr0,f
	rlf	indf,f
	decf	fsr0,f
	decf	fsr0,f
	decf	fsr0,f
	line	85
	
l2070:	
	movlw	low(01h)
	subwf	(__div_to_l_@cntr),f
	btfss	status,2
	goto	u2871
	goto	u2870
u2871:
	goto	l2062
u2870:
	
l422:	
	line	86
	btfss	(__div_to_l_@exp1),7
	goto	u2881
	goto	u2880
u2881:
	goto	l2080
u2880:
	line	87
	
l2072:	
	movf	(__div_to_l_@exp1),w
	xorlw	80h
	addlw	-((-31)^80h)
	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l2078
u2890:
	line	88
	
l2074:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l418
	
l2076:	
	goto	l418
	
l424:	
	goto	l2078
	line	89
	
l425:	
	line	90
	
l2078:	
	movlw	01h
u2905:
	clrc
	rrf	(__div_to_l_@quot+3),f
	rrf	(__div_to_l_@quot+2),f
	rrf	(__div_to_l_@quot+1),f
	rrf	(__div_to_l_@quot),f
	addlw	-1
	skipz
	goto	u2905

	line	91
	movlw	(01h)
	movwf	(??__div_to_l_+0)+0
	movf	(??__div_to_l_+0)+0,w
	addwf	(__div_to_l_@exp1),f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l2078
u2910:
	goto	l2090
	
l426:	
	line	92
	goto	l2090
	
l423:	
	line	93
	
l2080:	
	movlw	(020h)
	subwf	(__div_to_l_@exp1),w
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l2088
u2920:
	line	94
	
l2082:	
	movlw	0
	movwf	(?__div_to_l_+3)
	movlw	0
	movwf	(?__div_to_l_+2)
	movlw	0
	movwf	(?__div_to_l_+1)
	movlw	0
	movwf	(?__div_to_l_)

	goto	l418
	
l2084:	
	goto	l418
	
l428:	
	line	95
	goto	l2088
	
l430:	
	line	96
	
l2086:	
	movlw	01h
	movwf	(??__div_to_l_+0)+0
u2935:
	clrc
	rlf	(__div_to_l_@quot),f
	rlf	(__div_to_l_@quot+1),f
	rlf	(__div_to_l_@quot+2),f
	rlf	(__div_to_l_@quot+3),f
	decfsz	(??__div_to_l_+0)+0
	goto	u2935
	line	97
	movlw	low(01h)
	subwf	(__div_to_l_@exp1),f
	goto	l2088
	line	98
	
l429:	
	line	95
	
l2088:	
	movf	(__div_to_l_@exp1),f
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l2086
u2940:
	goto	l2090
	
l431:	
	goto	l2090
	line	99
	
l427:	
	line	100
	
l2090:	
	movf	(__div_to_l_@quot+3),w
	movwf	(?__div_to_l_+3)
	movf	(__div_to_l_@quot+2),w
	movwf	(?__div_to_l_+2)
	movf	(__div_to_l_@quot+1),w
	movwf	(?__div_to_l_+1)
	movf	(__div_to_l_@quot),w
	movwf	(?__div_to_l_)

	goto	l418
	
l2092:	
	line	101
	
l418:	
	return
	opt stack 0
GLOBAL	__end_of__div_to_l_
	__end_of__div_to_l_:
	signat	__div_to_l_,8316
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text11,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext11
__ptext11:	;psect for function ___wmul
psect	text11
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l2094:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2096
	line	44
	
l262:	
	line	45
	
l2096:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l263
u2950:
	line	46
	
l2098:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l263:	
	line	47
	movlw	01h
	
u2965:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2965
	line	48
	
l2100:	
	movlw	01h
	
u2975:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2975
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l2096
u2980:
	goto	l2102
	
l264:	
	line	52
	
l2102:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l265
	
l2104:	
	line	53
	
l265:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lltoft

;; *************** function ___lltoft *****************
;; Defined at:
;;		line 35 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
;; Parameters:    Size  Location     Type
;;  c               4    8[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  exp             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text12,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
global __ptext12
__ptext12:	;psect for function ___lltoft
psect	text12
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lltoft.c"
	line	35
	global	__size_of___lltoft
	__size_of___lltoft	equ	__end_of___lltoft-___lltoft
	
___lltoft:	
;incstack = 0
	opt	stack 5
; Regs used in ___lltoft: [wreg+status,2+status,0+pclath+cstack]
	line	38
	
l2228:	
	movlw	(08Eh)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___lltoft@exp)
	line	41
	goto	l2232
	
l596:	
	line	42
	
l2230:	
	movlw	01h
u3285:
	clrc
	rrf	(___lltoft@c+3),f
	rrf	(___lltoft@c+2),f
	rrf	(___lltoft@c+1),f
	rrf	(___lltoft@c),f
	addlw	-1
	skipz
	goto	u3285

	line	43
	movlw	(01h)
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	addwf	(___lltoft@exp),f
	goto	l2232
	line	44
	
l595:	
	line	41
	
l2232:	
	movlw	high highword(-16777216)
	andwf	(___lltoft@c+3),w
	btfss	status,2
	goto	u3291
	goto	u3290
u3291:
	goto	l2230
u3290:
	goto	l2234
	
l597:	
	line	45
	
l2234:	
	movf	(___lltoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lltoft@c+1),w
	movwf	(___ftpack@arg+1)
	movf	(___lltoft@c+2),w
	movwf	(___ftpack@arg+2)
	movf	(___lltoft@exp),w
	movwf	(??___lltoft+0)+0
	movf	(??___lltoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lltoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lltoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lltoft+2)
	goto	l598
	
l2236:	
	line	46
	
l598:	
	return
	opt stack 0
GLOBAL	__end_of___lltoft
	__end_of___lltoft:
	signat	___lltoft,4219
	global	___llmod

;; *************** function ___llmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  counter         1    9[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text13,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
global __ptext13
__ptext13:	;psect for function ___llmod
psect	text13
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\llmod.c"
	line	6
	global	__size_of___llmod
	__size_of___llmod	equ	__end_of___llmod-___llmod
	
___llmod:	
;incstack = 0
	opt	stack 6
; Regs used in ___llmod: [wreg+status,2+status,0]
	line	13
	
l2208:	
	movf	(___llmod@divisor+3),w
	iorwf	(___llmod@divisor+2),w
	iorwf	(___llmod@divisor+1),w
	iorwf	(___llmod@divisor),w
	skipnz
	goto	u3221
	goto	u3220
u3221:
	goto	l2224
u3220:
	line	14
	
l2210:	
	clrf	(___llmod@counter)
	incf	(___llmod@counter),f
	line	15
	goto	l2214
	
l585:	
	line	16
	
l2212:	
	movlw	01h
	movwf	(??___llmod+0)+0
u3235:
	clrc
	rlf	(___llmod@divisor),f
	rlf	(___llmod@divisor+1),f
	rlf	(___llmod@divisor+2),f
	rlf	(___llmod@divisor+3),f
	decfsz	(??___llmod+0)+0
	goto	u3235
	line	17
	movlw	(01h)
	movwf	(??___llmod+0)+0
	movf	(??___llmod+0)+0,w
	addwf	(___llmod@counter),f
	goto	l2214
	line	18
	
l584:	
	line	15
	
l2214:	
	btfss	(___llmod@divisor+3),(31)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l2212
u3240:
	goto	l2216
	
l586:	
	goto	l2216
	line	19
	
l587:	
	line	20
	
l2216:	
	movf	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),w
	skipz
	goto	u3255
	movf	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),w
	skipz
	goto	u3255
	movf	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),w
	skipz
	goto	u3255
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),w
u3255:
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l2220
u3250:
	line	21
	
l2218:	
	movf	(___llmod@divisor),w
	subwf	(___llmod@dividend),f
	movf	(___llmod@divisor+1),w
	skipc
	incfsz	(___llmod@divisor+1),w
	subwf	(___llmod@dividend+1),f
	movf	(___llmod@divisor+2),w
	skipc
	incfsz	(___llmod@divisor+2),w
	subwf	(___llmod@dividend+2),f
	movf	(___llmod@divisor+3),w
	skipc
	incfsz	(___llmod@divisor+3),w
	subwf	(___llmod@dividend+3),f
	goto	l2220
	
l588:	
	line	22
	
l2220:	
	movlw	01h
u3265:
	clrc
	rrf	(___llmod@divisor+3),f
	rrf	(___llmod@divisor+2),f
	rrf	(___llmod@divisor+1),f
	rrf	(___llmod@divisor),f
	addlw	-1
	skipz
	goto	u3265

	line	23
	
l2222:	
	movlw	low(01h)
	subwf	(___llmod@counter),f
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l2216
u3270:
	goto	l2224
	
l589:	
	goto	l2224
	line	24
	
l583:	
	line	25
	
l2224:	
	movf	(___llmod@dividend+3),w
	movwf	(?___llmod+3)
	movf	(___llmod@dividend+2),w
	movwf	(?___llmod+2)
	movf	(___llmod@dividend+1),w
	movwf	(?___llmod+1)
	movf	(___llmod@dividend),w
	movwf	(?___llmod)

	goto	l590
	
l2226:	
	line	26
	
l590:	
	return
	opt stack 0
GLOBAL	__end_of___llmod
	__end_of___llmod:
	signat	___llmod,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] unsigned long 
;;  dividend        4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    9[COMMON] unsigned long 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text14,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
global __ptext14
__ptext14:	;psect for function ___lldiv
psect	text14
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l2184:	
	movlw	0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	15
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u3151
	goto	u3150
u3151:
	goto	l2204
u3150:
	line	16
	
l2186:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l2190
	
l575:	
	line	18
	
l2188:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3165:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3165
	line	19
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l2190
	line	20
	
l574:	
	line	17
	
l2190:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u3171
	goto	u3170
u3171:
	goto	l2188
u3170:
	goto	l2192
	
l576:	
	goto	l2192
	line	21
	
l577:	
	line	22
	
l2192:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u3185:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u3185
	line	23
	
l2194:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u3195
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u3195
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u3195
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u3195:
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l2200
u3190:
	line	24
	
l2196:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	25
	
l2198:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l2200
	line	26
	
l578:	
	line	27
	
l2200:	
	movlw	01h
u3205:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u3205

	line	28
	
l2202:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l2192
u3210:
	goto	l2204
	
l579:	
	goto	l2204
	line	29
	
l573:	
	line	30
	
l2204:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l580
	
l2206:	
	line	31
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   41[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   50[BANK0 ] unsigned long 
;;  exp1            1   54[BANK0 ] unsigned char 
;;  sign1           1   49[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   41[BANK0 ] long 
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text15,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
global __ptext15
__ptext15:	;psect for function ___fttol
psect	text15
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\fttol.c"
	line	44
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
;incstack = 0
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l2140:	
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
	goto	u3051
	goto	u3050
u3051:
	goto	l2146
u3050:
	line	50
	
l2142:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l539
	
l2144:	
	goto	l539
	
l538:	
	line	51
	
l2146:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3065:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3060:
	addlw	-1
	skipz
	goto	u3065
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l2148:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l2150:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l2152:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l2154:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l2156:	
	btfss	(___fttol@exp1),7
	goto	u3071
	goto	u3070
u3071:
	goto	l2166
u3070:
	line	57
	
l2158:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3081
	goto	u3080
u3081:
	goto	l2164
u3080:
	line	58
	
l2160:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l539
	
l2162:	
	goto	l539
	
l541:	
	goto	l2164
	line	59
	
l542:	
	line	60
	
l2164:	
	movlw	01h
u3095:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3095

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l2164
u3100:
	goto	l2176
	
l543:	
	line	62
	goto	l2176
	
l540:	
	line	63
	
l2166:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l2174
u3110:
	line	64
	
l2168:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l539
	
l2170:	
	goto	l539
	
l545:	
	line	65
	goto	l2174
	
l547:	
	line	66
	
l2172:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3125:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3125
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l2174
	line	68
	
l546:	
	line	65
	
l2174:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l2172
u3130:
	goto	l2176
	
l548:	
	goto	l2176
	line	69
	
l544:	
	line	70
	
l2176:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3140
	goto	l2180
u3140:
	line	71
	
l2178:	
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
	goto	l2180
	
l549:	
	line	72
	
l2180:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l539
	
l2182:	
	line	73
	
l539:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftsub

;; *************** function ___ftsub *****************
;; Defined at:
;;		line 18 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
;; Parameters:    Size  Location     Type
;;  f2              3   61[BANK0 ] float 
;;  f1              3   64[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   61[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftadd
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text16,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
global __ptext16
__ptext16:	;psect for function ___ftsub
psect	text16
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftsub.c"
	line	18
	global	__size_of___ftsub
	__size_of___ftsub	equ	__end_of___ftsub-___ftsub
	
___ftsub:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftsub: [wreg+status,2+status,0+pclath+cstack]
	line	23
	
l2134:	
	movlw	080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(___ftsub@f2+2),f
	line	24
	
l2136:	
	movf	(___ftsub@f1),w
	movwf	(___ftadd@f1)
	movf	(___ftsub@f1+1),w
	movwf	(___ftadd@f1+1)
	movf	(___ftsub@f1+2),w
	movwf	(___ftadd@f1+2)
	movf	(___ftsub@f2),w
	movwf	(___ftadd@f2)
	movf	(___ftsub@f2+1),w
	movwf	(___ftadd@f2+1)
	movf	(___ftsub@f2+2),w
	movwf	(___ftadd@f2+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___ftsub)
	movf	(1+(?___ftadd)),w
	movwf	(?___ftsub+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___ftsub+2)
	goto	l535
	
l2138:	
	line	25
	
l535:	
	return
	opt stack 0
GLOBAL	__end_of___ftsub
	__end_of___ftsub:
	signat	___ftsub,8315
	global	___ftadd

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 86 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   48[BANK0 ] float 
;;  f2              3   51[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   60[BANK0 ] unsigned char 
;;  exp2            1   59[BANK0 ] unsigned char 
;;  sign            1   58[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   48[BANK0 ] float 
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
;;		_main
;;		_sprintf
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text17,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
global __ptext17
__ptext17:	;psect for function ___ftadd
psect	text17
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftadd.c"
	line	86
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l1784:	
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
	
l1786:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2230
	goto	l1792
u2230:
	
l1788:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l1796
u2240:
	
l1790:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l1796
u2250:
	goto	l1792
	
l455:	
	line	93
	
l1792:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l456
	
l1794:	
	goto	l456
	
l453:	
	line	94
	
l1796:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2260
	goto	l459
u2260:
	
l1798:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2271
	goto	u2270
u2271:
	goto	l1802
u2270:
	
l1800:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l1802
u2280:
	
l459:	
	line	95
	goto	l456
	
l457:	
	line	96
	
l1802:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l1804:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l460
u2290:
	line	98
	
l1806:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l460:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l461
u2300:
	line	100
	
l1808:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l461:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l1810:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l1812:	
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
	goto	u2311
	goto	u2310
u2311:
	goto	l1824
u2310:
	goto	l1814
	line	109
	
l463:	
	line	110
	
l1814:	
	movlw	01h
u2325:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2325
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l1816:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l1822
u2330:
	
l1818:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l1814
u2340:
	goto	l1822
	
l465:	
	goto	l1822
	
l466:	
	line	113
	goto	l1822
	
l468:	
	line	114
	
l1820:	
	movlw	01h
u2355:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2355

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l1822
	line	116
	
l467:	
	line	113
	
l1822:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l1820
u2360:
	goto	l470
	
l469:	
	line	117
	goto	l470
	
l462:	
	
l1824:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2371
	goto	u2370
u2371:
	goto	l470
u2370:
	goto	l1826
	line	120
	
l472:	
	line	121
	
l1826:	
	movlw	01h
u2385:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2385
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l1828:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2391
	goto	u2390
u2391:
	goto	l1834
u2390:
	
l1830:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l1826
u2400:
	goto	l1834
	
l474:	
	goto	l1834
	
l475:	
	line	124
	goto	l1834
	
l477:	
	line	125
	
l1832:	
	movlw	01h
u2415:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2415

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l1834
	line	127
	
l476:	
	line	124
	
l1834:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l1832
u2420:
	goto	l470
	
l478:	
	goto	l470
	line	128
	
l471:	
	line	129
	
l470:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l1838
u2430:
	line	131
	
l1836:	
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
	goto	l1838
	line	133
	
l479:	
	line	134
	
l1838:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2441
	goto	u2440
u2441:
	goto	l1842
u2440:
	line	136
	
l1840:	
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
	goto	l1842
	line	138
	
l480:	
	line	139
	
l1842:	
	clrf	(___ftadd@sign)
	line	140
	
l1844:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2451
	addwf	(___ftadd@f2+1),f
u2451:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2452
	addwf	(___ftadd@f2+2),f
u2452:

	line	141
	
l1846:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l1852
u2460:
	line	142
	
l1848:	
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
	
l1850:	
	clrf	(___ftadd@sign)
	incf	(___ftadd@sign),f
	goto	l1852
	line	145
	
l481:	
	line	146
	
l1852:	
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
	goto	l456
	
l1854:	
	line	148
	
l456:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
	signat	___ftadd,8315
	global	___ftneg

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text18,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
global __ptext18
__ptext18:	;psect for function ___ftneg
psect	text18
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftneg.c"
	line	15
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l2126:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3041
	goto	u3040
u3041:
	goto	l2130
u3040:
	line	18
	
l2128:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l2130
	
l529:	
	line	19
	
l2130:	
	goto	l530
	
l2132:	
	line	20
	
l530:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
	signat	___ftneg,4219
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
;;		_sprintf
;; This function uses a non-reentrant model
;;
psect	text19,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
global __ptext19
__ptext19:	;psect for function ___ftge
psect	text19
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\ftge.c"
	line	4
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2106:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2991
	goto	u2990
u2991:
	goto	l2110
u2990:
	line	7
	
l2108:	
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
	goto	u3001
	goto	u3002
u3001:
	addwf	(??___ftge+0)+1,f
	
u3002:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3003
	goto	u3004
u3003:
	addwf	(??___ftge+0)+2,f
	
u3004:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2110
	
l511:	
	line	8
	
l2110:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l2114
u3010:
	line	9
	
l2112:	
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
	goto	u3021
	goto	u3022
u3021:
	addwf	(??___ftge+0)+1,f
	
u3022:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3023
	goto	u3024
u3023:
	addwf	(??___ftge+0)+2,f
	
u3024:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2114
	
l512:	
	line	10
	
l2114:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2116:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2118:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3035
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3035
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3035:
	skipnc
	goto	u3031
	goto	u3030
u3031:
	goto	l2122
u3030:
	
l2120:	
	clrc
	
	goto	l513
	
l1640:	
	
l2122:	
	setc
	
	goto	l513
	
l1642:	
	goto	l513
	
l2124:	
	line	13
	
l513:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
	signat	___ftge,8312
	global	_init_I2C_Master

;; *************** function _init_I2C_Master *****************
;; Defined at:
;;		line 50 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text20,local,class=CODE,delta=2,merge=1
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	50
global __ptext20
__ptext20:	;psect for function _init_I2C_Master
psect	text20
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	50
	global	__size_of_init_I2C_Master
	__size_of_init_I2C_Master	equ	__end_of_init_I2C_Master-_init_I2C_Master
	
_init_I2C_Master:	
;incstack = 0
	opt	stack 7
; Regs used in _init_I2C_Master: [wreg+status,2]
	line	51
	
l2252:	
;dumalaganDa_LE7-3.c: 51: TRISC3 = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1083/8)^080h,(1083)&7	;volatile
	line	52
;dumalaganDa_LE7-3.c: 52: TRISC4 = 1;
	bsf	(1084/8)^080h,(1084)&7	;volatile
	line	53
	
l2254:	
;dumalaganDa_LE7-3.c: 53: SSPCON = 0x28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	54
	
l2256:	
;dumalaganDa_LE7-3.c: 54: SSPCON2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(145)^080h	;volatile
	line	56
	
l2258:	
;dumalaganDa_LE7-3.c: 56: SSPSTAT = 0x00;
	clrf	(148)^080h	;volatile
	line	57
;dumalaganDa_LE7-3.c: 57: SSPADD = 0x09;
	movlw	(09h)
	movwf	(147)^080h	;volatile
	line	58
	
l62:	
	return
	opt stack 0
GLOBAL	__end_of_init_I2C_Master
	__end_of_init_I2C_Master:
	signat	_init_I2C_Master,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 32 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text21,local,class=CODE,delta=2,merge=1
	line	32
global __ptext21
__ptext21:	;psect for function _initLCD
psect	text21
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	32
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l2238:	
;dumalaganDa_LE7-3.c: 33: delay_ms(1);
	movlw	low(01h)
	movwf	(delay_ms@ms_Count)
	movlw	high(01h)
	movwf	((delay_ms@ms_Count))+1
	fcall	_delay_ms
	line	34
;dumalaganDa_LE7-3.c: 34: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	35
;dumalaganDa_LE7-3.c: 35: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	36
;dumalaganDa_LE7-3.c: 36: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	37
;dumalaganDa_LE7-3.c: 37: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	38
;dumalaganDa_LE7-3.c: 38: instCtrl(0x0E);
	movlw	(0Eh)
	fcall	_instCtrl
	line	39
	
l56:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 23 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text22,local,class=CODE,delta=2,merge=1
	line	23
global __ptext22
__ptext22:	;psect for function _instCtrl
psect	text22
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	23
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	24
	
l1906:	
;dumalaganDa_LE7-3.c: 24: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	25
	
l1908:	
;dumalaganDa_LE7-3.c: 25: RD0 = 0;
	bcf	(64/8),(64)&7	;volatile
	line	26
	
l1910:	
;dumalaganDa_LE7-3.c: 26: RD1 = 0;
	bcf	(65/8),(65)&7	;volatile
	line	27
	
l1912:	
;dumalaganDa_LE7-3.c: 27: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	28
	
l1914:	
;dumalaganDa_LE7-3.c: 28: delay_ms(1);
	movlw	low(01h)
	movwf	(delay_ms@ms_Count)
	movlw	high(01h)
	movwf	((delay_ms@ms_Count))+1
	fcall	_delay_ms
	line	29
	
l1916:	
;dumalaganDa_LE7-3.c: 29: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	30
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 41 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay_ms
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text23,local,class=CODE,delta=2,merge=1
	line	41
global __ptext23
__ptext23:	;psect for function _dataCtrl
psect	text23
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	41
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	42
	
l2240:	
;dumalaganDa_LE7-3.c: 42: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	43
	
l2242:	
;dumalaganDa_LE7-3.c: 43: RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	44
	
l2244:	
;dumalaganDa_LE7-3.c: 44: RD1 = 0;
	bcf	(65/8),(65)&7	;volatile
	line	45
	
l2246:	
;dumalaganDa_LE7-3.c: 45: RD2 = 1;
	bsf	(66/8),(66)&7	;volatile
	line	46
	
l2248:	
;dumalaganDa_LE7-3.c: 46: delay_ms(1);
	movlw	low(01h)
	movwf	(delay_ms@ms_Count)
	movlw	high(01h)
	movwf	((delay_ms@ms_Count))+1
	fcall	_delay_ms
	line	47
	
l2250:	
;dumalaganDa_LE7-3.c: 47: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7	;volatile
	line	48
	
l59:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 16 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
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
;;		_instCtrl
;;		_initLCD
;;		_dataCtrl
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,local,class=CODE,delta=2,merge=1
	line	16
global __ptext24
__ptext24:	;psect for function _delay_ms
psect	text24
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	16
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 6
; Regs used in _delay_ms: [wreg+status,2]
	line	18
	
l1674:	
;dumalaganDa_LE7-3.c: 17: unsigned int i,j;
;dumalaganDa_LE7-3.c: 18: for(i=0;i<ms_Count;i++) {
	clrf	(delay_ms@i)
	clrf	(delay_ms@i+1)
	goto	l45
	
l46:	
	line	19
	
l1676:	
;dumalaganDa_LE7-3.c: 19: for(j=0;j<1000;j++);
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	
l1678:	
	movlw	high(03E8h)
	subwf	(delay_ms@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u1991
	goto	u1990
u1991:
	goto	l1682
u1990:
	goto	l1684
	
l1680:	
	goto	l1684
	
l47:	
	
l1682:	
	movlw	low(01h)
	addwf	(delay_ms@j),f
	skipnc
	incf	(delay_ms@j+1),f
	movlw	high(01h)
	addwf	(delay_ms@j+1),f
	movlw	high(03E8h)
	subwf	(delay_ms@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u2001
	goto	u2000
u2001:
	goto	l1682
u2000:
	goto	l1684
	
l48:	
	line	18
	
l1684:	
	movlw	low(01h)
	addwf	(delay_ms@i),f
	skipnc
	incf	(delay_ms@i+1),f
	movlw	high(01h)
	addwf	(delay_ms@i+1),f
	
l45:	
	movf	(delay_ms@ms_Count+1),w
	subwf	(delay_ms@i+1),w
	skipz
	goto	u2015
	movf	(delay_ms@ms_Count),w
	subwf	(delay_ms@i),w
u2015:
	skipc
	goto	u2011
	goto	u2010
u2011:
	goto	l1676
u2010:
	goto	l50
	
l49:	
	line	21
	
l50:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
global __ptext25
__ptext25:	;psect for function ___lwtoft
psect	text25
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwtoft.c"
	line	28
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2508:	
	movf	(___lwtoft@c),w
	movwf	(___ftpack@arg)
	movf	(___lwtoft@c+1),w
	movwf	(___ftpack@arg+1)
	clrf	(___ftpack@arg+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	(___ftpack@exp)
	clrf	(___ftpack@sign)
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l648
	
l2510:	
	line	31
	
l648:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 49 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    0[BANK0 ] float 
;;  f1              3    3[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   11[BANK0 ] float 
;;  sign            1   15[BANK0 ] unsigned char 
;;  exp             1   14[BANK0 ] unsigned char 
;;  cntr            1   10[BANK0 ] unsigned char 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text26,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
global __ptext26
__ptext26:	;psect for function ___ftdiv
psect	text26
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\pic\ftdiv.c"
	line	49
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l2466:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
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
	goto	u3631
	goto	u3630
u3631:
	goto	l2472
u3630:
	line	56
	
l2468:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l487
	
l2470:	
	goto	l487
	
l486:	
	line	57
	
l2472:	
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
	goto	u3641
	goto	u3640
u3641:
	goto	l2478
u3640:
	line	58
	
l2474:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l487
	
l2476:	
	goto	l487
	
l488:	
	line	59
	
l2478:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l2480:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l2482:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3655:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3650:
	addlw	-1
	skipz
	goto	u3655
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l2484:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3665:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3660:
	addlw	-1
	skipz
	goto	u3665
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l2486:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l2488:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l2490:	
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
	goto	l2492
	line	69
	
l489:	
	line	70
	
l2492:	
	movlw	01h
u3675:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3675
	line	71
	
l2494:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3685
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3685
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3685:
	skipc
	goto	u3681
	goto	u3680
u3681:
	goto	l2500
u3680:
	line	72
	
l2496:	
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
	
l2498:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l2500
	line	74
	
l490:	
	line	75
	
l2500:	
	movlw	01h
u3695:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3695
	line	76
	
l2502:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l2492
u3700:
	goto	l2504
	
l491:	
	line	77
	
l2504:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l487
	
l2506:	
	line	78
	
l487:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
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
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___lltoft
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text27,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
global __ptext27
__ptext27:	;psect for function ___ftpack
psect	text27
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\float.c"
	line	62
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
;incstack = 0
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l1644:	
	movf	(___ftpack@exp),w
	skipz
	goto	u1880
	goto	l1648
u1880:
	
l1646:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u1891
	goto	u1890
u1891:
	goto	l1654
u1890:
	goto	l1648
	
l436:	
	line	65
	
l1648:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l437
	
l1650:	
	goto	l437
	
l434:	
	line	66
	goto	l1654
	
l439:	
	line	67
	
l1652:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u1905:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1905

	goto	l1654
	line	69
	
l438:	
	line	66
	
l1654:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1911
	goto	u1910
u1911:
	goto	l1652
u1910:
	goto	l441
	
l440:	
	line	70
	goto	l441
	
l442:	
	line	71
	
l1656:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1658:	
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
	
l1660:	
	movlw	01h
u1925:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u1925

	line	74
	
l441:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l1656
u1930:
	goto	l1664
	
l443:	
	line	75
	goto	l1664
	
l445:	
	line	76
	
l1662:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u1945:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u1945
	goto	l1664
	line	78
	
l444:	
	line	75
	
l1664:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u1951
	goto	u1950
u1951:
	goto	l1662
u1950:
	
l446:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u1961
	goto	u1960
u1961:
	goto	l447
u1960:
	line	80
	
l1666:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l447:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1668:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u1975:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u1970:
	addlw	-1
	skipz
	goto	u1975
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1670:	
	movf	(___ftpack@sign),w
	skipz
	goto	u1980
	goto	l448
u1980:
	line	84
	
l1672:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l448:	
	line	85
	line	86
	
l437:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_I2C_Stop

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 72 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,local,class=CODE,delta=2,merge=1
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	72
global __ptext28
__ptext28:	;psect for function _I2C_Stop
psect	text28
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	72
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Stop: [wreg+status,2+status,0+pclath+cstack]
	line	74
	
l2264:	
;dumalaganDa_LE7-3.c: 74: I2C_Wait();
	fcall	_I2C_Wait
	line	76
	
l2266:	
;dumalaganDa_LE7-3.c: 76: PEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7	;volatile
	line	77
	
l74:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
	signat	_I2C_Stop,88
	global	_I2C_Start

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 65 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text29,local,class=CODE,delta=2,merge=1
	line	65
global __ptext29
__ptext29:	;psect for function _I2C_Start
psect	text29
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	65
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Start: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l2260:	
;dumalaganDa_LE7-3.c: 67: I2C_Wait();
	fcall	_I2C_Wait
	line	69
	
l2262:	
;dumalaganDa_LE7-3.c: 69: SEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7	;volatile
	line	70
	
l71:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
	signat	_I2C_Start,88
	global	_I2C_Send

;; *************** function _I2C_Send *****************
;; Defined at:
;;		line 86 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text30,local,class=CODE,delta=2,merge=1
	line	86
global __ptext30
__ptext30:	;psect for function _I2C_Send
psect	text30
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	86
	global	__size_of_I2C_Send
	__size_of_I2C_Send	equ	__end_of_I2C_Send-_I2C_Send
	
_I2C_Send:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Send: [wreg+status,2+status,0+pclath+cstack]
;I2C_Send@data stored from wreg
	movwf	(I2C_Send@data)
	line	88
	
l2272:	
;dumalaganDa_LE7-3.c: 88: I2C_Wait();
	fcall	_I2C_Wait
	line	90
	
l2274:	
;dumalaganDa_LE7-3.c: 90: SSPBUF = data;
	movf	(I2C_Send@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	91
	
l80:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Send
	__end_of_I2C_Send:
	signat	_I2C_Send,4216
	global	_I2C_RepeatedStart

;; *************** function _I2C_RepeatedStart *****************
;; Defined at:
;;		line 79 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text31,local,class=CODE,delta=2,merge=1
	line	79
global __ptext31
__ptext31:	;psect for function _I2C_RepeatedStart
psect	text31
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	79
	global	__size_of_I2C_RepeatedStart
	__size_of_I2C_RepeatedStart	equ	__end_of_I2C_RepeatedStart-_I2C_RepeatedStart
	
_I2C_RepeatedStart:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_RepeatedStart: [wreg+status,2+status,0+pclath+cstack]
	line	81
	
l2268:	
;dumalaganDa_LE7-3.c: 81: I2C_Wait();
	fcall	_I2C_Wait
	line	83
	
l2270:	
;dumalaganDa_LE7-3.c: 83: RSEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7	;volatile
	line	84
	
l77:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_RepeatedStart
	__end_of_I2C_RepeatedStart:
	signat	_I2C_RepeatedStart,88
	global	_I2C_Receive

;; *************** function _I2C_Receive *****************
;; Defined at:
;;		line 93 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;  ack             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ack             1    1[COMMON] unsigned char 
;;  temp            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_I2C_Wait
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text32,local,class=CODE,delta=2,merge=1
	line	93
global __ptext32
__ptext32:	;psect for function _I2C_Receive
psect	text32
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	93
	global	__size_of_I2C_Receive
	__size_of_I2C_Receive	equ	__end_of_I2C_Receive-_I2C_Receive
	
_I2C_Receive:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Receive: [wreg+status,2+status,0+pclath+cstack]
;I2C_Receive@ack stored from wreg
	movwf	(I2C_Receive@ack)
	line	95
	
l2276:	
;dumalaganDa_LE7-3.c: 94: unsigned char temp;
;dumalaganDa_LE7-3.c: 95: I2C_Wait();
	fcall	_I2C_Wait
	line	96
	
l2278:	
;dumalaganDa_LE7-3.c: 96: RCEN = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7	;volatile
	line	97
;dumalaganDa_LE7-3.c: 97: I2C_Wait();
	fcall	_I2C_Wait
	line	98
	
l2280:	
;dumalaganDa_LE7-3.c: 98: temp = SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Receive+0)+0
	movf	(??_I2C_Receive+0)+0,w
	movwf	(I2C_Receive@temp)
	line	99
	
l2282:	
;dumalaganDa_LE7-3.c: 99: I2C_Wait();
	fcall	_I2C_Wait
	line	100
	
l2284:	
;dumalaganDa_LE7-3.c: 100: ACKDT = (ack)?0:1;
	movf	(I2C_Receive@ack)
	skipnz
	goto	u3301
	goto	u3300
	
u3301:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7	;volatile
	goto	u3314
u3300:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7	;volatile
u3314:
	line	101
	
l2286:	
;dumalaganDa_LE7-3.c: 101: ACKEN = 1;
	bsf	(1164/8)^080h,(1164)&7	;volatile
	line	102
;dumalaganDa_LE7-3.c: 102: return temp;
	movf	(I2C_Receive@temp),w
	goto	l83
	
l2288:	
	line	103
	
l83:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Receive
	__end_of_I2C_Receive:
	signat	_I2C_Receive,4217
	global	_I2C_Wait

;; *************** function _I2C_Wait *****************
;; Defined at:
;;		line 60 in file "D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_RepeatedStart
;;		_I2C_Send
;;		_I2C_Receive
;; This function uses a non-reentrant model
;;
psect	text33,local,class=CODE,delta=2,merge=1
	line	60
global __ptext33
__ptext33:	;psect for function _I2C_Wait
psect	text33
	file	"D:\JinBus\CpE 3201\Practical Activity #7\CpE 3201-LE7-3\dumalaganDa_LE7-3.c"
	line	60
	global	__size_of_I2C_Wait
	__size_of_I2C_Wait	equ	__end_of_I2C_Wait-_I2C_Wait
	
_I2C_Wait:	
;incstack = 0
	opt	stack 6
; Regs used in _I2C_Wait: [wreg+status,2]
	line	62
	
l1918:	
;dumalaganDa_LE7-3.c: 62: while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
	goto	l1920
	
l66:	
	goto	l1920
	
l65:	
	
l1920:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(145)^080h,w	;volatile
	andlw	01Fh
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l1920
u2610:
	
l1922:	
	btfsc	(148)^080h,(2)&7	;volatile
	goto	u2621
	goto	u2620
u2621:
	goto	l1920
u2620:
	goto	l68
	
l67:	
	line	63
	
l68:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Wait
	__end_of_I2C_Wait:
	signat	_I2C_Wait,88
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
