function sonuc=BirimMatrisMi(M)
[satirSayisi sutunSayisi]=size(M);
if satirSayisi==sutunSayisi
    sonuc=1;%Birim Matris Oldugunu Kabul Et
    for i=1:satirSayisi
        for j=1:sutunSayisi%Veya satirSayisi
            if i==j%Ana Kosegen Uzerindeki Elemanlar
                if M(i,j)~=1
                    sonuc=0;
                    return;
                end
            else
                if M(i,j)~=0
                    sonuc=0;
                    return;
                end
            end
        end
    end
else
    sonuc=0;%Matrisin Once Kare Matris Olmasi Lazim
end