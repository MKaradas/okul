function A=SutunlarinMinimumlariniBul(M)
A=[];%Ba�lang��ta Bo� Bir Sat�r Vekt�r�
[satirSayisi sutunSayisi]=size(M);
for j=1:sutunSayisi
    %Mevcut S�tunun �lk Eleman�n� En K���k
    sutunMinimumu=M(1,j);%Kabul Et
    for i=2:satirSayisi%S�tunun Kalan Elemanlar�n� Tara
        if M(i,j)<sutunMinimumu
            sutunMinimumu=M(i,j);
        end
    end
    %Mevcut S�tunun Minimumunu Depo Vekt�r�n
    A=[A sutunMinimumu];%Sonuna Ekle
end
