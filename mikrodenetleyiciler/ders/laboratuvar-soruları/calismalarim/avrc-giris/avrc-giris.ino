#define F_CPU 16000000UL
#include <avr/io.h>

int main()
{
  int counter=0; 
  DDRD |= (1<<5);//5 numarali pini output olarak ayarladik. 
  //PORTD&=~(1<<5); de yapabilirdik ama zaten default 0.
  TCCR1B|=((1<<CS12)|(1<<CS10));//prescaler 1024 olarak ayarladik.
  
  while(1)
  {
    TCNT1=49911;//tasma durumunu anlamak icin -> 65536-15625 = 49911
    if(TCNT1 == 49911)
    {
      while((TIFR1 & (1<<TOV1))==0);//bayrak 1 mi ?
      counter++;
      TIFR1 |= (1<<TOV1);//sorumluluk bizde oldugu icin TOV1(bayrak) i  sıfırlarız.
    }
    if(counter == 8)//8 saniye istendigi icin.
    {
      PORTD ^= (1<<5);//5v varsa 0v,0v ise 5v seklinde ayarlariz.
      counter=0;
    }
  }
  return 0;
}
