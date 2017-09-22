opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F887
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
	FNCALL	_main,_cmd
	FNCALL	_main,_dat
	FNCALL	_dat,_Latch
	FNCALL	_cmd,_Latch
	FNCALL	_Latch,_delay
	FNROOT	_main
	global	_PORTB
psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_RC1
_RC1	set	57
	global	_RCIF
_RCIF	set	101
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_ANSELH
_ANSELH	set	393
	file	"matlab.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_Latch
?_Latch:	; 0 bytes @ 0x0
	global	?_cmd
?_cmd:	; 0 bytes @ 0x0
	global	?_dat
?_dat:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@i
delay@i:	; 4 bytes @ 0x0
	ds	4
	global	??_delay
??_delay:	; 0 bytes @ 0x4
	ds	4
	global	??_Latch
??_Latch:	; 0 bytes @ 0x8
	global	??_cmd
??_cmd:	; 0 bytes @ 0x8
	global	??_dat
??_dat:	; 0 bytes @ 0x8
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
	global	main@ch
main@ch:	; 1 bytes @ 0x9
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _Latch->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0      45
;;                                              8 COMMON     2     2      0
;;                                _cmd
;;                                _dat
;; ---------------------------------------------------------------------------------
;; (1) _dat                                                  0     0      0      15
;;                              _Latch
;; ---------------------------------------------------------------------------------
;; (1) _cmd                                                  0     0      0      15
;;                              _Latch
;; ---------------------------------------------------------------------------------
;; (2) _Latch                                                0     0      0      15
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                8     4      4      15
;;                                              0 COMMON     8     4      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _cmd
;;     _Latch
;;       _delay
;;   _dat
;;     _Latch
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 467 in file "E:\aidifico\PROJECT\attempt4.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  ch              1    9[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_cmd
;;		_dat
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"E:\aidifico\PROJECT\attempt4.c"
	line	467
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	469
	
l2768:	
;attempt4.c: 468: char ch;
;attempt4.c: 469: ANSELH=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(393)^0180h	;volatile
	line	470
;attempt4.c: 470: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	471
;attempt4.c: 471: PORTB=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	472
	
l2770:	
;attempt4.c: 472: TRISC=0x81;
	movlw	(081h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	473
	
l2772:	
;attempt4.c: 473: PORTC=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	474
;attempt4.c: 474: TRISD=0xF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	475
	
l2774:	
;attempt4.c: 475: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	476
	
l2776:	
;attempt4.c: 476: TXSTA=0x20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	477
	
l2778:	
;attempt4.c: 477: RCSTA=0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	478
	
l2780:	
;attempt4.c: 478: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	479
	
l2782:	
;attempt4.c: 479: cmd();
	fcall	_cmd
	line	480
	
l2784:	
;attempt4.c: 480: PORTB=0x38;
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	481
	
l2786:	
;attempt4.c: 481: cmd();
	fcall	_cmd
	line	482
	
l2788:	
;attempt4.c: 482: PORTB=0x0C;
	movlw	(0Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	483
	
l2790:	
;attempt4.c: 483: cmd();
	fcall	_cmd
	line	484
	
l2792:	
;attempt4.c: 484: PORTB=0x01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	485
	
l2794:	
;attempt4.c: 485: cmd();
	fcall	_cmd
	line	486
	
l2796:	
;attempt4.c: 486: PORTB=0x80;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	487
	
l2798:	
;attempt4.c: 487: cmd();
	fcall	_cmd
	goto	l2800
	line	488
;attempt4.c: 488: while(1)
	
l1297:	
	line	490
	
l2800:	
;attempt4.c: 489: {
;attempt4.c: 490: RCIF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(101/8),(101)&7
	line	491
;attempt4.c: 491: while(RCIF==0);
	goto	l1298
	
l1299:	
	
l1298:	
	btfss	(101/8),(101)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l1298
u2730:
	goto	l2802
	
l1300:	
	line	492
	
l2802:	
;attempt4.c: 492: ch=RCREG;
	movf	(26),w	;volatile
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	line	493
;attempt4.c: 493: PORTB=ch;
	movf	(main@ch),w
	movwf	(6)	;volatile
	line	494
	
l2804:	
;attempt4.c: 494: dat();
	fcall	_dat
	line	495
	
l2806:	
;attempt4.c: 495: RD1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(65/8),(65)&7
	line	496
	
l2808:	
;attempt4.c: 496: RD2=1;
	bsf	(66/8),(66)&7
	goto	l2800
	line	501
	
l1301:	
	line	488
	goto	l2800
	
l1302:	
	line	502
	
l1303:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_dat
psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:

;; *************** function _dat *****************
;; Defined at:
;;		line 313 in file "E:\aidifico\PROJECT\attempt4.c"
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
;;		_Latch
;; This function is called by:
;;		_main
;;		_trans
;; This function uses a non-reentrant model
;;
psect	text139
	file	"E:\aidifico\PROJECT\attempt4.c"
	line	313
	global	__size_of_dat
	__size_of_dat	equ	__end_of_dat-_dat
	
_dat:	
	opt	stack 5
; Regs used in _dat: [wreg+status,2+status,0+pclath+cstack]
	line	314
	
l2764:	
;attempt4.c: 314: RD2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	315
	
l2766:	
;attempt4.c: 315: Latch();
	fcall	_Latch
	line	316
	
l1163:	
	return
	opt stack 0
GLOBAL	__end_of_dat
	__end_of_dat:
;; =============== function _dat ends ============

	signat	_dat,88
	global	_cmd
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:

;; *************** function _cmd *****************
;; Defined at:
;;		line 308 in file "E:\aidifico\PROJECT\attempt4.c"
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
;;		_Latch
;; This function is called by:
;;		_main
;;		_trans
;; This function uses a non-reentrant model
;;
psect	text140
	file	"E:\aidifico\PROJECT\attempt4.c"
	line	308
	global	__size_of_cmd
	__size_of_cmd	equ	__end_of_cmd-_cmd
	
_cmd:	
	opt	stack 5
; Regs used in _cmd: [wreg+status,2+status,0+pclath+cstack]
	line	309
	
l2760:	
;attempt4.c: 309: RD2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	310
	
l2762:	
;attempt4.c: 310: Latch();
	fcall	_Latch
	line	311
	
l1160:	
	return
	opt stack 0
GLOBAL	__end_of_cmd
	__end_of_cmd:
;; =============== function _cmd ends ============

	signat	_cmd,88
	global	_Latch
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:

;; *************** function _Latch *****************
;; Defined at:
;;		line 301 in file "E:\aidifico\PROJECT\attempt4.c"
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
;;		_delay
;; This function is called by:
;;		_cmd
;;		_dat
;; This function uses a non-reentrant model
;;
psect	text141
	file	"E:\aidifico\PROJECT\attempt4.c"
	line	301
	global	__size_of_Latch
	__size_of_Latch	equ	__end_of_Latch-_Latch
	
_Latch:	
	opt	stack 5
; Regs used in _Latch: [wreg+status,2+status,0+pclath+cstack]
	line	302
	
l2754:	
;attempt4.c: 302: RD3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	303
	
l2756:	
;attempt4.c: 303: delay(50);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	032h
	movwf	(?_delay)

	fcall	_delay
	line	304
	
l2758:	
;attempt4.c: 304: RD3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	305
;attempt4.c: 305: delay(100);
	movlw	0
	movwf	(?_delay+3)
	movlw	0
	movwf	(?_delay+2)
	movlw	0
	movwf	(?_delay+1)
	movlw	064h
	movwf	(?_delay)

	fcall	_delay
	line	306
	
l1157:	
	return
	opt stack 0
GLOBAL	__end_of_Latch
	__end_of_Latch:
;; =============== function _Latch ends ============

	signat	_Latch,88
	global	_delay
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:

;; *************** function _delay *****************
;; Defined at:
;;		line 3 in file "E:\aidifico\PROJECT\attempt4.c"
;; Parameters:    Size  Location     Type
;;  i               4    0[COMMON] unsigned long 
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
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Latch
;;		_dit
;;		_daa
;; This function uses a non-reentrant model
;;
psect	text142
	file	"E:\aidifico\PROJECT\attempt4.c"
	line	3
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	4
	
l1672:	
;attempt4.c: 4: while(i--);
	goto	l1674
	
l1026:	
	goto	l1674
	
l1025:	
	
l1674:	
	movlw	01h
	movwf	((??_delay+0)+0)
	movlw	0
	movwf	((??_delay+0)+0+1)
	movlw	0
	movwf	((??_delay+0)+0+2)
	movlw	0
	movwf	((??_delay+0)+0+3)
	movf	0+(??_delay+0)+0,w
	subwf	(delay@i),f
	movf	1+(??_delay+0)+0,w
	skipc
	incfsz	1+(??_delay+0)+0,w
	goto	u15
	goto	u16
u15:
	subwf	(delay@i+1),f
u16:
	movf	2+(??_delay+0)+0,w
	skipc
	incfsz	2+(??_delay+0)+0,w
	goto	u17
	goto	u18
u17:
	subwf	(delay@i+2),f
u18:
	movf	3+(??_delay+0)+0,w
	skipc
	incfsz	3+(??_delay+0)+0,w
	goto	u19
	goto	u10
u19:
	subwf	(delay@i+3),f
u10:

	movlw	0FFh
	xorwf	((delay@i+3)),w
	skipz
	goto	u25
	movlw	0FFh
	xorwf	((delay@i+2)),w
	skipz
	goto	u25
	movlw	0FFh
	xorwf	((delay@i+1)),w
	skipz
	goto	u25
	movlw	0FFh
	xorwf	((delay@i)),w
u25:
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1674
u20:
	goto	l1028
	
l1027:	
	line	5
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
