kilo=input('L�tfen Kilonuzu Giriniz:'); %input komutu kullan�c�dan say�sal veya metinselveri temini sa�lar.
 
if  kilo<=0 %if �artl� deyimi belirlenen �art�n sa�lanmas�na ba�l� olarak if-end aras�ndaki i�lemleri sa�lar.
    disp('Kilo de�erini yeniden giriniz.');
elseif kilo>80 %elseif �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
    kalpRahatsizligi=input('Kalp rahats�zl���n�z varm�(e�er varsa 1 de�erini giriniz yoksa 0 de�erini giriniz):');
if kalpRahatsizligi==0; 
       disp('Standa kabul edildiniz');
end; %end program� bitirmeye yarar.
if  kalpRahatsizligi==1; 
        disp('Malesef standa kabul edilmediniz');
end; 
else %else �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
    disp('Standa kabul edildiniz');
end

        
