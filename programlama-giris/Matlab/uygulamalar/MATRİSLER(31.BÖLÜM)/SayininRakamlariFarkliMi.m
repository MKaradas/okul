function sonuc=SayininRakamlariFarkliMi(n)
sonuc=0;%n nin Rakamlar�n�n Farkl� Olmad���n� Kabul Et
if n>=1
    %1. Alt Fonksiyon �se Basamaklar Vekt�r�n�n Elde Et
    [vektor,~]=SayiyiBasamaklarinaAyir(n);
    %Geriye 1/0 D�nd�ren 2.Alt Fonksiyonu �a��r
    if DiziElemanlariBirbirlerindenFarkliMi(vektor)
        sonuc=1;%Kabul� De�i�tir
    end
end

