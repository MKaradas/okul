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