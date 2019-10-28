A = [];
disp('Lutfen dizi boyutunu giriniz:\n');
diziBoyutu=input('Lutfen dizi boyutunu giriniz:');
[satirSayisi sutunSayisi]=size(M);



aldiginizUrunMiktari=input('Aldýðýnýz ürün miktarýný giriniz:'); %input komutu kullanýcýdan sayýsal veya metinselveri temini saðlar.
aldiginizUrununFiyati=input('Aldýðýnýz ürünün fiyatýný giriniz:');
hediye=fix(aldiginizUrunMiktari/4);
netUrun=aldiginizUrunMiktari-hediye;
ucret=netUrun*aldiginizUrununFiyati;
if netUrun<0 %if þartlý deyimi belirlenen þartýn saðlanmasýna baðlý olarak if-end arasýndaki iþlemleri saðlar.
    disp('Önce ürün satýn alýnýz!');
else %else þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    disp([num2str(aldiginizUrunMiktari) ' aldýðýnýz ürünün ücreti= ' num2str(ucret) 'TL']);
end  %end programý bitirmeye yarar.
--
function A=SatirlarinMaksimumlariniBul(M)
A=[];%Baþlangýçta Boþ Bir Satýr Vektörü
[satirSayisi sutunSayisi]=size(M);
for i=1:satirSayisi
    %Mevcut Satýrýn Ýlk Elemanýný Büyük Kabul Et
    satirMaksimumu=M(i,1);%Kabul Et
    for j=2:sutunSayisi%Satýrýn Kalan Elemanlarýný Tara
        if M(i,j)>satirMaksimumu
            satirMaksimumu=M(i,j);
        end
    end
    %Mevcut Satýrýn Maksimumunu Depo Vektörün
    A=[A satirMaksimumu];%
end
    --
    function N=Matrisi90DereceSagaDondur(M)
N=[];%Baþlangýçta bir boþ matris kabul edelim.
[satirSayisi sutunSayisi]=size(M);
for i=1:sutunSayisi
    for j=1:satirSayisi
        N(i,j)=M(satirSayisi-j+1,i);
    end
end
---
function sonuc=DiziElemanlariBirbirindenFarkliMi(A)
sonuc=1;%Dizide Tekrarlý Eleman Olmadýðýný Kabul Et
diziBoyutu=length(A);
for i=1:(diziBoyutu-1)
    for j=(i+1):diziBoyutu
        %Ayný Dizi Elemanýndan En Az 2 Adet Var ise
        if A(i)==A(j)
            sonuc=0;%Kabulü Deðiþtir
            %Daha Fazla Kontrole Gerek Yok
            return;%Programý Ani Sonlandýr
        end
    end
end
--




