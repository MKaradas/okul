/*
 * GccApplication1.c
 *
 * Created: 27.11.2019 23:58:30
 * Author : Muhammed
 */ 
#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>

int main(void)
{
    DDRB |= (1<<5);//Define digital pin13/PORTB5 as an output so we can blink out led
	while (1)//for(;;)//Infinite loop 
    {
		PORTB |= (1<<5);//Turn led on (the led included in the Arduino (digital pin 13))
		_delay_ms(1000);//Wait 1 second	
		PORTB &= ~(1<<5);//Turn led off
		_delay_ms(1000);//Wait another second
    }
	return 0;
}
/*
*Arduinonun 13.pininin 1 saniye aralikla yanip sonmesi
*/
