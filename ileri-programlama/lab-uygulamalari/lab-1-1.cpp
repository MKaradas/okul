/*
Soru1: Belirli bir sayıya kadar Fibonacci dizisini oluşturan C++ Programını yazınız.
Örnek:
            Bir sayı giriniz: 10
    (çıktı) Fibonacci serisi: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 
*/
#include <iostream>
using namespace std;
int main() 
{

    int olusacakSayi=0,sayac=0,oncekiDegisken=0,sonrakiDegisken=1,toplam=0;

    cout<<"Lutfen dizinin hangi sayıya kadar üretileceğini giriniz: \n";
    cin>>olusacakSayi;
    cout<<"Fibonacci Serisi: "<<oncekiDegisken<<" "<<sonrakiDegisken<<" ";
    while(sayac<olusacakSayi-2)
    {	
        toplam=oncekiDegisken+sonrakiDegisken;
        oncekiDegisken=sonrakiDegisken;
        sonrakiDegisken=toplam;
        cout<<sonrakiDegisken<<" ";
        sayac++;
    }

    return 0;
}
