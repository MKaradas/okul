#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>
/*
  PORTB 8-13 Dijital pinler
  PORTC Analog
  PORTD 0-7 Dijital pinler
*/

int main()
{
  
  for(int i=2;i<8;i++)
  {
    DDRD |= (1<<i);
  }
  for(int i=0;i<6;i++)
  {
    DDRB |= (1<<i);
  }
  while(1)
  {
      
   for(int j=5;j>=0;j--)
    {
      PORTB |= (1<<j);
      _delay_ms(83);
      PORTB &= ~(1<<j);
    }
    for(int j=7;j>1;j--)
    {
      PORTD |= (1<<j);
      _delay_ms(83);
      PORTD &= ~(1<<j);
    }
    for(int z=2;z<8;z++)
    {
      PORTD |= (1<<z);
      _delay_ms(83);
      PORTD &= ~(1<<z);
    }
    for(int z=0;z<6;z++)
    {
      PORTB |= (1<<z);
      _delay_ms(83);
      PORTB &= ~(1<<z); 
    }
  }


  return 0;
}
