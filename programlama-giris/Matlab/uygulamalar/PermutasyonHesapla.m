function sonuc=PermutasyonHesapla(m,n)
if (n>=0) && (m>=n) 
sonuc=FaktoriyelHesapla(m)/FaktoriyelHesapla(m-n);
else    
sonuc=0;
end


