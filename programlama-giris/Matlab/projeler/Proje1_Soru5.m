disp('Merhaba.�SG Havaliman�na Ho� Geldiniz.'); %fprint ve disp ekrana yazd�rma komutudur.
disp('Arac�n�z�n cinsi otomobil ise 1 de�erini giriniz.');
disp('Arac�n�z�n cinsi pikap ise 2 de�erini giriniz.');
disp('Arac�n�z�n cinsi midib�s ise 3 de�erini giriniz.');
disp('Arac�n�z�n cinsi minib�s ise 4 de�erini giriniz.');
disp('Arac�n�z�n cinsi kamyon ise 5 de�erini giriniz.');
disp('Arac�n�z�n cinsi kamyonet ise 6 de�erini giriniz.');
disp('Arac�n�z�n cinsi otob�s ise 7 de�erini giriniz.');
aracinCinsi=input('L�tfen arac�n cinsini giriniz: ');  %input komutu kullan�c�dan say�sal veya metinselveri temini sa�lar.
sure=input('L�tfen park s�resini dakika cinsinden giriniz:');

if aracinCinsi==1 || aracinCinsi==2 || aracinCinsi==3  %if �artl� deyimi belirlenen �art�n sa�lanmas�na ba�l� olarak if-end aras�ndaki i�lemleri sa�lar.
    if sure<=60
        ucret=12.5;
    elseif sure>60 && sure<=180 %elseif �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
        ucret=16;
    elseif sure>180 && sure<=360
        ucret=25;
    elseif sure>360 && sure<=720
        ucret=30;
    elseif sure>720 && sure<=1440
        ucret=40;
    else %else �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
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
    end %end program� bitirmeye yarar.
end
fprintf('%d  kald���n�z dakika i�in park �cretiniz= %.1f TL',sure,ucret);