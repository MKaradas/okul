kilo=input('Lütfen Kilonuzu Giriniz:'); %input komutu kullanýcýdan sayýsal veya metinselveri temini saðlar.
 
if  kilo<=0 %if þartlý deyimi belirlenen þartýn saðlanmasýna baðlý olarak if-end arasýndaki iþlemleri saðlar.
    disp('Kilo deðerini yeniden giriniz.');
elseif kilo>80 %elseif þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    kalpRahatsizligi=input('Kalp rahatsýzlýðýnýz varmý(eðer varsa 1 deðerini giriniz yoksa 0 deðerini giriniz):');
if kalpRahatsizligi==0; 
       disp('Standa kabul edildiniz');
end; %end programý bitirmeye yarar.
if  kalpRahatsizligi==1; 
        disp('Malesef standa kabul edilmediniz');
end; 
else %else þartlý deyimide if ile ayný iþlevi görür þart saðlanýnca.
    disp('Standa kabul edildiniz');
end

        
