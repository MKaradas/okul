aldiginizUrunMiktari=input('Aldýðýnýz ürün miktarýný giriniz:'); %input komutu kullanýcýdan sayýsal veya metinselveri temini saðlar.
aldiginizUrununFiyati=input('Aldýðýnýz ürünün fiyatýný giriniz:');
hediye=fix(aldiginizUrunMiktari/4);
netUrun=aldiginizUrunMiktari-hediye;
ucret=netUrun*aldiginizUrununFiyati;
if netUrun<0 %if þartlý deyimi belirlenen þartýn saðlanmasýna baðlý olarak if-end arasýndaki iþlemleri saðlar.
    disp('Önce ürün satýn alýnýz!');
else %else þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    disp([num2str(aldiginizUrunMiktari) ' aldýðýnýz ürünün ücreti= ' num2str(ucret) 'TL']);
end  %end programý bitirmeye yarar.



