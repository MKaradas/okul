/*
Kullanıcıdan ad, soyad, doğum tarihi bilgisini ise sırasıyla gün, ay, yıl olacak şekilde ayrı ayrı alınız.
Bu bilgileri aldıktan sonra kullanıcının kaç yaşında olduğunu, Kisi sınıfına yazacağınız GetDogumYil() fonksiyonunu kullanarak hesaplayınız.
Ekrana kaç yaşında olduğu bilgisini yazdırınız.
Benzer şekilde GetAd, SetAd, GetSoyad, SetSoyad, GetDogumGun, SetDogumGun, GetDogumAy, SetDogumAy, GetDogumYil, SetDogumYil fonksiyonlarını (prototiplerini-gövdelerini) yazınız.
Yürütücü içerisinden DogumTarihiniStandartBicimYazdir() fonksiyonu ile kullanıcıdan aldığınız tarihi formatlı şu şekilde yazdırınız.
Örneğin dd-mm-yyyy şeklinde: 24-11-1982
Ayrıca, yürütücü içerisinden DogumTarihiniEvrenselBicimYazdir() fonksiyonu ile kullanıcıdan aldığınız tarihi formatlı şu şekilde yazdırınız.
Örneğin: yyyy-mm-dd şeklinde: 1982-11-24
*/
#include <iostream>
#include <string>
using namespace std;
class Kisi{
public:
  void SetAd(string adi){ad = adi;};
  string GetAd(){return ad;};
  void SetSoyad(string soyadi){soyad = soyadi;};
  string GetSoyad(){return soyad;};
  void SetDogumAy(int Day){ay = Day;};
  int  GetDogumAy(){return ay;};
  void SetDogumGun(int Dgun){gun = Dgun;};
  int  GetDogumGun(){return gun;};
  void SetDogumYil(int Dyil){yil = Dyil;};
  int  GetDogumYil(){return yil;};
  void DogumTarihiniEvrenselBicimdeYazdir(){cout<<yil<<"-"<<ay<<"-"<<gun<<endl;};
  void DogumTarihiniStandartBicimdeYazdir(){cout<<gun<<"-"<<ay<<"-"<<yil<<endl;};
private:
  int gun,ay,yil;
  string ad,soyad;
};

int main()
{
  Kisi k;
  string ad,soyad;
  int gun,ay,yil;
  cout<<"Adinizi Giriniz: ";
  cin>>ad;
  k.SetAd(ad);
  cout<<"\nSoyadinizi Giriniz: ";
  cin>>soyad;
  k.SetSoyad(soyad);

  cout<<"Lutfen Sirasiyla Dogum Tarihini Giriniz(gun ay yil):  ";
  cin>>gun>>ay>>yil;
  k.SetDogumAy(ay);
  k.SetDogumGun(gun);
  k.SetDogumYil(yil);
  cout<<"Standart Bicim -> ";
  k.DogumTarihiniStandartBicimdeYazdir();
  cout<<"Evrensel Bicim -> ";
  k.DogumTarihiniEvrenselBicimdeYazdir();
  cout<<2019-k.GetDogumYil()<<" Yasindasiniz..."<<endl;



  return 0;
}
