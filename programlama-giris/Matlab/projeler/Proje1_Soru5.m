disp('Merhaba.ÝSG Havalimanýna Hoþ Geldiniz.'); %fprint ve disp ekrana yazdýrma komutudur.
disp('Aracýnýzýn cinsi otomobil ise 1 deðerini giriniz.');
disp('Aracýnýzýn cinsi pikap ise 2 deðerini giriniz.');
disp('Aracýnýzýn cinsi midibüs ise 3 deðerini giriniz.');
disp('Aracýnýzýn cinsi minibüs ise 4 deðerini giriniz.');
disp('Aracýnýzýn cinsi kamyon ise 5 deðerini giriniz.');
disp('Aracýnýzýn cinsi kamyonet ise 6 deðerini giriniz.');
disp('Aracýnýzýn cinsi otobüs ise 7 deðerini giriniz.');
aracinCinsi=input('Lütfen aracýn cinsini giriniz: ');  %input komutu kullanýcýdan sayýsal veya metinselveri temini saðlar.
sure=input('Lütfen park süresini dakika cinsinden giriniz:');

if aracinCinsi==1 || aracinCinsi==2 || aracinCinsi==3  %if þartlý deyimi belirlenen þartýn saðlanmasýna baðlý olarak if-end arasýndaki iþlemleri saðlar.
    if sure<=60
        ucret=12.5;
    elseif sure>60 && sure<=180 %elseif þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
        ucret=16;
    elseif sure>180 && sure<=360
        ucret=25;
    elseif sure>360 && sure<=720
        ucret=30;
    elseif sure>720 && sure<=1440
        ucret=40;
    else %else þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    end
end
if aracinCinsi==4 || aracinCinsi==5 || aracinCinsi==6 || aracinCinsi==7
    if sure<=60
        ucret=13;
    elseif sure>60 && sure<=180
        ucret=18;
    elseif sure>180 && sure<=360
        ucret=22.5;
    elseif sure>360 && sure<=720
        ucret=28;
    elseif sure>720 && sure<=1440
        ucret=38;
    else
    end %end programý bitirmeye yarar.
end
fprintf('%d  kaldýðýnýz dakika için park ücretiniz= %.1f TL',sure,ucret);