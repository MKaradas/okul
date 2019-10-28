function sonuc=KombinasyonHesapla(m,n)
if (n>=0) && (m>=n) 
    sonuc=FaktoriyelHesapla(m)/FaktoriyelHesapla(n)*FaktoriyelHesapla(m-n);
else
    sonuc=0;
end