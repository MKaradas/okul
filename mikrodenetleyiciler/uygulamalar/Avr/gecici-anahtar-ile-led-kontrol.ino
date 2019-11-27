/*
  Led connected to Digital Pin 13 (PORTB.5)
  Pushbutton switch connected to Digital Pin 2 (PORTD.2)
*/
#include <avr/io.h>
int main()
{
  /*Setup Kısmı*/
  DDRB |= (1 << 5);//Set PORTB.5 as output
  PORTB &= ~(1 << 5);//Turn led off
  DDRD &= ~(1 << 2);//Set PORTD.2 as input
  /*Loop Kısmı*/
  while(1)
  {
    if((PIND & (1 << 2)) == 0)
      PORTB &= ~(1 << 5);//Turn led off
    else
      PORTB |= (1 << 5);//Turn led on
  }
  return 0;
}
