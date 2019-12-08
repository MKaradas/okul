//Turn the led on and off for 1 second using Timer 1 in Normal Mode
//Clock Frequency (Fcpu)=16 MHz, Prescaler=1024
#include <avr/io.h>
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
  //DDRB|=(1<<5);//Set Pin 13 as OUTPUT
  //PORTB&=~(1<<5);//Set Pin 13 as LOW  
  TCCR1B|=((1<<CS12)|(1<<CS10));//Set Timer 1 scaler as Fcpu/1024
  while(1)
  {
    TCNT1=49911;//65536-15625
    while((TIFR1&(1<<TOV1))==0);//Polling
    TIFR1|=(1<<TOV1);//Clear the overflow flag?
    //PORTB^=(1<<5);//Toogle pin 13
    for(int j=5;j>=0;j--)
    {
      PORTB |= (1<<j);
      _delay_ms(50);
      PORTB &= ~(1<<j);
    }
  }
  return 0;
}
