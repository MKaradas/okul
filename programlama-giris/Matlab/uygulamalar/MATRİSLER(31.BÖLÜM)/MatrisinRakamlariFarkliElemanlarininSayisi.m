function sayac=MatrisinRakamlariFarkliElemanlarininSayisi(M)
sayac=0;
[satirSayisi sutunSayisi]=size(M);
for i=1:satirSayisi
    for j=1:sutunSayisi
        %Geriye 1/0 Döndüren Alt Fonksiyon Çaðýr
   if SayininRakamlariFarkliMi(M(i,j))
       sayac=sayac+1;
       end
    end
end
 