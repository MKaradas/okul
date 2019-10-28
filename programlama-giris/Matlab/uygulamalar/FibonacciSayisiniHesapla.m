function sonuc=FibonacciSayisiniHesapla(indis)
if indis<1
    sonuc=-1;
elseif indis==1
    sonuc=0;
elseif indis==2
    sonuc=1;
else 
    ikiOncekiSayi=0;
    birOncekiSayi=1;
       
    for i=3:indis 
    sonuc=birOncekiSayi+ikiOncekiSayi;
    ikiOncekiSayi=birOncekiSayi; %AMAÇ ÖNCEKÝ, 2SAYIYI TUTMAK
    birOncekiSayi=sonuc;
        end
end