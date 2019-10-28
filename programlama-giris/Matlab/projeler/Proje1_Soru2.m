tasinacakMobilya=input('Lütfen taþýnacak mobilya sayýsýný giriniz:'); %input komutu kullanýcýdan sayýsal veya metinselveri temini saðlar.
if tasinacakMobilya<=0 %if þartlý deyimi belirlenen þartýn saðlanmasýna baðlý olarak if-end arasýndaki iþlemleri saðlar.
    fprintf('Önce mobilya taþýma iþlemini yapýnýz.\n');
elseif tasinacakMobilya<=3 %elseif þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    ucret=75+35*(tasinacakMobilya);
    fprintf('Toplam ödeyeceðiniz tutar= %.1f TL\n',ucret);%fprint ve disp ekrana yazdýrma komutudur.
elseif tasinacakMobilya==4 || tasinacakMobilya==5
    ucret=80+25*(tasinacakMobilya);
    fprintf('Toplam ödeyeceðiniz tutar= %.1f TL\n',ucret);
else  %else þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    ucret=90+15*(tasinacakMobilya);
    fprintf('Toplam ödeyeceðiniz tutar= %.1f TL\n',ucret);
end