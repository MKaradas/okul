tasinacakMobilya=input('L�tfen ta��nacak mobilya say�s�n� giriniz:'); %input komutu kullan�c�dan say�sal veya metinselveri temini sa�lar.
if tasinacakMobilya<=0 %if �artl� deyimi belirlenen �art�n sa�lanmas�na ba�l� olarak if-end aras�ndaki i�lemleri sa�lar.
    fprintf('�nce mobilya ta��ma i�lemini yap�n�z.\n');
elseif tasinacakMobilya<=3 %elseif �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
    ucret=75+35*(tasinacakMobilya);
    fprintf('Toplam �deyece�iniz tutar= %.1f TL\n',ucret);%fprint ve disp ekrana yazd�rma komutudur.
elseif tasinacakMobilya==4 || tasinacakMobilya==5
    ucret=80+25*(tasinacakMobilya);
    fprintf('Toplam �deyece�iniz tutar= %.1f TL\n',ucret);
else  %else �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
    ucret=90+15*(tasinacakMobilya);
    fprintf('Toplam �deyece�iniz tutar= %.1f TL\n',ucret);
end