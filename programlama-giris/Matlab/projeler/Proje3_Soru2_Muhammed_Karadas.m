function sonuc=Proje3_Soru2_Muhammed_Karadas(n) %Fonksiyonun imzas� veya prototipidir.
if n==1 || n==2 %if �artl� deyimdir,|| sembol� veya demektir.
    sonuc=1; %sonucu 1 olarak atad�k.
elseif n==3 %elseif de bir �artl� deyim.
    sonuc=2; %sonucu bu seferde 2 olarak atad�k.
elseif n>=4 %elseif de bir �artl� deyim.
   sonuc=Proje3_Soru2_Muhammed_Karadas(n-1)+Proje3_Soru2_Muhammed_Karadas(n-2)+Proje3_Soru2_Muhammed_Karadas(n-3); 
   %sonucu girilen de�ere g�re yap�lan i�lemlerden ��kan de�er olarak,
   %atad�k.
end 