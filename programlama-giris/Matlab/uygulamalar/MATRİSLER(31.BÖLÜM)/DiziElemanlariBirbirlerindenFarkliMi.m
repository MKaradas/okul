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