sayi=input('Lütfen sayi deðerini giriniz:');  %input komutu kullanýcýdan sayýsal veya metinselveri temini saðlar.
altLimit=input('Lütfen altLimit deðerini giriniz:');
ustLimit=input('Lütfen ustLimit deðerini giriniz:');
if sayi<altLimit; %if þartlý deyimi belirlenen þartýn saðlanmasýna baðlý olarak if-end arasýndaki iþlemleri saðlar.
    fprintf('Parçalý fonksiyonda altlimit deðerine karþýlýk gelmektedir %d\n',altLimit);
elseif sayi>ustLimit; %elseif þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    fprintf('Parçalý fonksiyonda ustLimit deðerine karþýlýk gelmektedir %d\n',ustLimit);
else %else þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    fprintf('Parçalý fonksiyonda sayi deðerine karþýlýk gelmektedir %d\n',sayi); %fprint ve disp ekrana yazdýrma komutudur.
end     %end programý bitirmeye yarar.                        