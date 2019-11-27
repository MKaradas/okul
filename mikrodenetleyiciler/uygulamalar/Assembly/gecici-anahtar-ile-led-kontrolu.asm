;
; AssemblerApplication1.asm
;
; Created: 28.11.2019 00:13:27
; Author : MuhammedK
;
; Replace with your application code
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;When the button is pressed, the led is turned on		;
;Led connected to Digital Pin 13 (PORTB.5)				;
;Pushbutton switch connected to Digital Pin 2 (PORTD.2)	;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

.INCLUDE "m328pdef.inc";Header for ATMEGA328P
setup:
	LDI R16,0x20	   ;LoaD Immeadiate value to R16
	OUT DDRB,R16	   ;Set PORTB.5 as output
	LDI R16,0x00	   ;LoaD Immeadiate value to R16
	OUT PORTB,R16	   ;Turn led off
	OUT DDRD,R16	   ;Set PORTB.2 as input
loop:
	IN R16,PIND		   ;Read PORTD pin values and store them in R16
	ANDI R16,0x04	   ;AND Immediate
	BRNE elseLabel	   ;BRanch Not Equal
ifLabel:
	LDI R16,0x00	   ;LoaD Immeadiate value to R16
	OUT PORTB,R16	   ;Turn led off
	RJMP ifEndLabel	   ;Relative JuMP
elseLabel:
	LDI R16,0x20	   ;LoaD Immeadiate value to R16
	OUT PORTB,R16	   ;Turn led on
ifEndLabel:
	RJMP loop		   ;Relative JuMP
