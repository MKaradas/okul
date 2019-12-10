/*
2 numaralı dijital girişe bağlı bir geçici anahtara basıldığında 13 numaralı dijital çıkışa bağlı ledi yakan,
aksi takdirde söndüren AVR C programını Arduino IDE üzerinde yazınız, derleyiniz ve çalıştırınız.

*/
#define F CPU 16000000UL
#include <avr/io.h>
#include <util/delay.h>
int main()
{
  DDRB |= (1<<5);//13 numaralı pini çıkış yap
  /*//DDRD &= ~(1<<2);//2 numaralı pini giriş yap
  başlar başlamaz zaten direk 0 yani giriş yapmasanda olur*/
  while(1)
  {
    if((PIND&=(1<<2))==0)
      PORTB &= ~(1<<5 );//13 numaralı pini söndür  
    else
      PORTB |= (1<<5);//13 numaralı pini yak
  }



  return 0;
}
