/*
 Öz yinemeli (rekursif) olacak şekilde  Faktöriyel hesabı yapacak C++ programını yazınız.
 Örnek: 1*2*3*4*5*6 = 720
 Bir sayı giriniz: 6
 6’nın faktoriyeli = 720
*/
#include <iostream>
using namespace std;
int faktoriyelHesapla(int);
int main()
{
	int sayi=0;
	cout<<"Bir sayi giriniz: "<<endl;
	cin>>sayi;

	if(sayi<0)
	{
		cout<<"Lutfen pozitif bir sayi giriniz! "<<endl;
		return 0;
	}
		
	cout<<"faktoriyel ["<<sayi<<"] = "<<faktoriyelHesapla(sayi);
		
	return 0;
}
int faktoriyelHesapla(int sayi)
{
	if(sayi>1)
		return sayi * faktoriyelHesapla(sayi-1);
	else
		return 1;
}
