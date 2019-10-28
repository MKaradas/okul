function A=SutunlarinMinimumlariniBul(M)
A=[];%Baþlangýçta Boþ Bir Satýr Vektörü
[satirSayisi sutunSayisi]=size(M);
for j=1:sutunSayisi
    %Mevcut Sütunun Ýlk Elemanýný En Küçük
    sutunMinimumu=M(1,j);%Kabul Et
    for i=2:satirSayisi%Sütunun Kalan Elemanlarýný Tara
        if M(i,j)<sutunMinimumu
            sutunMinimumu=M(i,j);
        end
    end
    %Mevcut Sütunun Minimumunu Depo Vektörün
    A=[A sutunMinimumu];%Sonuna Ekle
end
