;
; merhabaDunya.asm
;
; Created: 28.11.2019 01:18:00
; Author : Muhammed
;

; Replace with your application code

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;Turn the led on and off for 1 second using Timer 1 in Normal Mode;
;Clock frequency (Fcpu)=16 MHz, Prescaler=1024					  ;
;Led connected to Digital Pin 13 (PORTB.5)						  ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


.INCLUDE "m328pdef.inc";Header for ATMEGA328P
setup:
	LDI R16,0x20			;LoaD Immeadiate value to R16
	OUT DDRB,R16			;Set PORTB.5 as output
	LDI R16,0x00			;LoaD Immeadiate value to R16
	OUT PORTB,R16			;Turn led off
							;No action is required for Normal Mode
	LDI R16,0x05			;Turn CS12 and CS10 on
	STS TCCR1B,R16			;STore direct to data Space
							;Set Timer 1 prescaler as Fcpu/1024
loop:
	LDI R17,HIGH(49911)		;Load 0xC2 to R17
	LDI R16,LOW(49911)		;Load 0xF7 to R16
	STS TCNT1H,R17			;STore direct to data Space 
	STS TCNT1L,R16			;STore direct to data Space
pollingLabel:
	IN R16,TIFR1			;Read the flags
	ANDI R16,0x01			;Chech if the TOV1 flag is 0
	BREQ pollingLabel		;BRanch EQual
	IN R16,TIFR1			;Read the flags
	ORI R16,0x01			;OR Immediate
	OUT TIFR1,R16			;Clear TOV1 flag by setting
	IN R16,PORTB			;Read PORTB pins
	LDI R17,0x20			;LoaD Immeadiate value to R17
	EOR R16,R17				;Exclusive OR
	OUT PORTB,R16			;Toggle Pin 13
	RJMP loop				;Relative JuMP

