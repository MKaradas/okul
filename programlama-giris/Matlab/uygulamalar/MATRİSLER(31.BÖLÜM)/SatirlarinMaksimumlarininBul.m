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
    