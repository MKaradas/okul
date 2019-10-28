function sonuc=Proje3_Soru2_Muhammed_Karadas(n) %Fonksiyonun imzasý veya prototipidir.
if n==1 || n==2 %if þartlý deyimdir,|| sembolü veya demektir.
    sonuc=1; %sonucu 1 olarak atadýk.
elseif n==3 %elseif de bir þartlý deyim.
    sonuc=2; %sonucu bu seferde 2 olarak atadýk.
elseif n>=4 %elseif de bir þartlý deyim.
   sonuc=Proje3_Soru2_Muhammed_Karadas(n-1)+Proje3_Soru2_Muhammed_Karadas(n-2)+Proje3_Soru2_Muhammed_Karadas(n-3); 
   %sonucu girilen deðere göre yapýlan iþlemlerden çýkan deðer olarak,
   %atadýk.
end 