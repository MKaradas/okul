function sonuc=Proje3_Soru1_Muhammed_Karadas(n,i)%Fonksiyonun imzasý veya prototipidir.
for degisken=2:i %for döngü deðiþkenidir 2den iye kadar 1er 1er artar.
    if mod(n,2)==0 %if þartlý deyimdir
          n=(n/2); %n deðerinin iþlemde yerine koyup n deðiþkeni olarak tanýmlanýr.
    else %diðer durumlarda bu iþleme girer.
        n=(3*n+1); %n deðerinin iþlemde yerine koyup n deðiþkeni olarak tanýmlanýr.
    end
end
sonuc=n;%sonuc deðikenini n olarak atadýk.