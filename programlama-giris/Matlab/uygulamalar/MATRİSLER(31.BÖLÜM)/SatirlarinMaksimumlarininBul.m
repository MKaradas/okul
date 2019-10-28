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
    