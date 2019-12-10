#define F_CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>
int main()
{

  DDRD |= (1<<2);
  while(1)
  {
      PORTD |= (1<<2);
      _delay_ms(1000);
      PORTD &=~(1<<2);
      _delay_ms(1000);
  }



  return 0;
}
