#include <iostream>//cout ve endl
#include <stdlib.h>// srand, rand 
#include <time.h>
using namespace std;
struct tarihKontrol
{
  int gun,ay,yil;
};

bool operator==(const tarihKontrol& tarih1,const tarihKontrol& tarih2)
{
  if(tarih1.gun == tarih2.gun && tarih1.ay == tarih2.ay && tarih1.yil == tarih2.yil)
  {
    return true;
  }
  else
  {
    return false;
  }
}

int rastgeleSayiUret(int maksDeger)
{
  return rand() % maksDeger;
}
int rastgeleSayiUret(int minDeger,int maksDeger)
{
  return rand()% (maksDeger-minDeger + 1) + minDeger;
}
int main()
{
  srand(time(NULL));
  bool deger;
/*
Ders sununmunda olduğu gibi (function overloading), bu uygulamada sizde öncelikle rasgeleSayiUret adında bir fonksiyon yazmanız istenmektedir.
Bu fonksiyon, int rasgeleSayiUret(int MaxValue) şeklinde çağrılırsa 0 ile MaxValue sayı arasında bir rasgele sayı üretebilmelidir.
Aynı şekilde int rasgeleSayiUret(int MinValue, int MaxValue) şeklinde çağrılırsa girilen aralıkta da herhangi bir rasgele sayı üretebilmelidir.
Bir diğer uygulamada (operatör overloading) kompleks sayıların toplamına benzer olarak,
aşağıda kod yapısı verilen struct yapısına uygun olarak verilen iki tarih’in eşitliğini kontrol ediniz.
Verilen tarihler eşit ise true değilse false döndürecek bir operatör overloading yazınız.
Yazdığınız tüm fonksiyonları aşağıdaki kod yapısındaki gibi çağırarak test ediniz.
*/
tarihKontrol tarih1{19,3,2019}, tarih2{19,3,2019};
deger = tarih1 == tarih2;
if(deger)
{
  cout<<"Tarihler birbirine esittir...\n";
}
else
{
  cout<<"Tarihler birbirine esit degildir...\n";
}

cout<<"-> "<<rastgeleSayiUret(10,20)<<endl;
cout<<"----------"<<endl;
cout<<"rastgeleSayiUret(10) -> "<<rastgeleSayiUret(10)<<endl;
  return 0;
}
