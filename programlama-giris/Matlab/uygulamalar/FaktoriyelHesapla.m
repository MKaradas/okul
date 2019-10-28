function sonuc=FaktoriyelHesapla(n)
if  n<0
  sonuc=0;
else
  sonuc=1;  
for  i=1:n
  sonuc=sonuc*i;
end
end
