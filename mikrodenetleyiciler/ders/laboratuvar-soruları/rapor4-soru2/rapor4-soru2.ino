#include <avr/io.h>
int counter=0;
int main()
{
setup:
  DDRB |= (1 << 1);
  TCCR1B |= (1 << WGM12); 
  TCCR1B |= (1 << CS12); 
  OCR1A = 62500; 
loop:
  while (1)
  {
    if (OCR1A == 62500)
    {
      while ((TIFR1 & (1 << OCF1A)) == 0);
      counter++;
      TIFR1 |= (1 << OCF1A);
    }
    if (counter == 10) 
    {
      PORTB ^= (1 << 1);
      counter = 0;
    }
  }
  return 0;
}
