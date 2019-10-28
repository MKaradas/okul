function sonuc=SayininRakamlariFarkliMi(n)
sonuc=0;%n nin Rakamlarýnýn Farklý Olmadýðýný Kabul Et
if n>=1
    %1. Alt Fonksiyon Ýse Basamaklar Vektörünün Elde Et
    [vektor,~]=SayiyiBasamaklarinaAyir(n);
    %Geriye 1/0 Döndüren 2.Alt Fonksiyonu Çaðýr
    if DiziElemanlariBirbirlerindenFarkliMi(vektor)
        sonuc=1;%Kabulü Deðiþtir
    end
end

