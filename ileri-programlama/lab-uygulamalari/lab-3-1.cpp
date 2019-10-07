/*
Soru1:  Ders sunumunda olduğu gibi Pointer to Pointer (Pointer gösteren pointer) yapısıyla iki boyutlu bir matris tanımı yapmanız istenmektedir.
Uygulamasında ise, kullanıcıdan ilk matrisi, ikinci matrisi doldurmasını isteyiniz.
Bu iki matrisi toplayarak sonuç matrisini ekrana yazdırınız.
Aşağıdaki kod yapısına uygun olarak gerekli yerleri doldurunuz.
matrisDoldur, matrisYazdir, matrisleriTopla fonksiyonları ile istenilen işlemleri C++ kodu ile gerçekleştiriniz.
			//Ekran Çıktısı\\
			1.matrisi giriniz:
			1 2 3
			4 5 6
			7 8 9
			2.matrisi giriniz:
			9 8 7
			6 5 4
			3 2 1
			Sonuc Matrisi:
			10 10 10
			10 10 10
			10 10 10
			//------------------------------------------\\
*/
#include <iostream>
using namespace std;

#define SATIR 3
#define SUTUN 3

void matrisDoldur(double **);
void matrisYazdir(double **);
void matrisleriTopla(double **, double **, double **);

int main()
{
	
	double ** matris1, ** matris2, ** sonucMatris;
	
	matris1 = new double*[SATIR];
	for(int i=0;i<SATIR;i++)
		matris1[i] = new double[SUTUN];
		
	matris2 = new double*[SATIR];
	for(int i=0;i<SATIR;i++)
		matris2[i] = new double[SUTUN];
		
	sonucMatris = new double*[SATIR];
	for(int i=0;i<SATIR;i++)
		sonucMatris[i] = new double[SUTUN];
		
	cout<<"ilk matrisi giriniz: "<<endl;
	matrisDoldur(matris1);
	cout<<"ikinci matrisi giriniz: "<<endl;
	matrisDoldur(matris2);
	cout<<"Sonuc Matrisi: "<<endl;
	matrisleriTopla(matris1, matris2, sonucMatris);
	matrisYazdir(sonucMatris);
	

	return 0;
}
void matrisDoldur(double ** dizi)
{
	double deger=0;
	
	for(int i=0;i<SATIR;i++)
	{
		for(int j=0;j<SUTUN;j++)
		{
			cout<<" ";
			cin>>deger;
			dizi[i][j] = deger;
		}
	}
	
}
void matrisYazdir(double ** sonuc)
{
	for(int i=0;i<SATIR;i++)
	{
		for(int j=0;j<SUTUN;j++)
		{
			cout<<sonuc[i][j]<<" ";
		}
		cout<<endl;
	}
}
void matrisleriTopla(double ** ilkMatris ,double ** ikinciMatris ,double ** sonucMatrisi)
{
	for(int i=0;i<SATIR;i++)
	{
		for(int j=0;j<SUTUN;j++)
		{
			sonucMatrisi[i][j] = ilkMatris[i][j]+ikinciMatris[i][j];
		}
	}
	

}
