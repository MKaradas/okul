A = [];
disp('Lutfen dizi boyutunu giriniz:\n');
diziBoyutu=input('Lutfen dizi boyutunu giriniz:');
[satirSayisi sutunSayisi]=size(M);



aldiginizUrunMiktari=input('Ald���n�z �r�n miktar�n� giriniz:'); %input komutu kullan�c�dan say�sal veya metinselveri temini sa�lar.
aldiginizUrununFiyati=input('Ald���n�z �r�n�n fiyat�n� giriniz:');
hediye=fix(aldiginizUrunMiktari/4);
netUrun=aldiginizUrunMiktari-hediye;
ucret=netUrun*aldiginizUrununFiyati;
if netUrun<0 %if �artl� deyimi belirlenen �art�n sa�lanmas�na ba�l� olarak if-end aras�ndaki i�lemleri sa�lar.
    disp('�nce �r�n sat�n al�n�z!');
else %else �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
    disp([num2str(aldiginizUrunMiktari) ' ald���n�z �r�n�n �creti= ' num2str(ucret) 'TL']);
end  %end program� bitirmeye yarar.
--
function A=SatirlarinMaksimumlariniBul(M)
A=[];%Ba�lang��ta Bo� Bir Sat�r Vekt�r�
[satirSayisi sutunSayisi]=size(M);
for i=1:satirSayisi
    %Mevcut Sat�r�n �lk Eleman�n� B�y�k Kabul Et
    satirMaksimumu=M(i,1);%Kabul Et
    for j=2:sutunSayisi%Sat�r�n Kalan Elemanlar�n� Tara
        if M(i,j)>satirMaksimumu
            satirMaksimumu=M(i,j);
        end
    end
    %Mevcut Sat�r�n Maksimumunu Depo Vekt�r�n
    A=[A satirMaksimumu];%
end
    --
    function N=Matrisi90DereceSagaDondur(M)
N=[];%Ba�lang��ta bir bo� matris kabul edelim.
[satirSayisi sutunSayisi]=size(M);
for i=1:sutunSayisi
    for j=1:satirSayisi
        N(i,j)=M(satirSayisi-j+1,i);
    end
end
---
function sonuc=DiziElemanlariBirbirindenFarkliMi(A)
sonuc=1;%Dizide Tekrarl� Eleman Olmad���n� Kabul Et
diziBoyutu=length(A);
for i=1:(diziBoyutu-1)
    for j=(i+1):diziBoyutu
        %Ayn� Dizi Eleman�ndan En Az 2 Adet Var ise
        if A(i)==A(j)
            sonuc=0;%Kabul� De�i�tir
            %Daha Fazla Kontrole Gerek Yok
            return;%Program� Ani Sonland�r
        end
    end
end
--




