function sonuc=Proje3_Soru1_Muhammed_Karadas(n,i)%Fonksiyonun imzas� veya prototipidir.
for degisken=2:i %for d�ng� de�i�kenidir 2den iye kadar 1er 1er artar.
    if mod(n,2)==0 %if �artl� deyimdir
          n=(n/2); %n de�erinin i�lemde yerine koyup n de�i�keni olarak tan�mlan�r.
    else %di�er durumlarda bu i�leme girer.
        n=(3*n+1); %n de�erinin i�lemde yerine koyup n de�i�keni olarak tan�mlan�r.
    end
end
sonuc=n;%sonuc de�ikenini n olarak atad�k.