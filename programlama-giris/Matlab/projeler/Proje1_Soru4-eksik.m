aldiginizUrunMiktari=input('Ald���n�z �r�n miktar�n� giriniz:'); %input komutu kullan�c�dan say�sal veya metinselveri temini sa�lar.
aldiginizUrununFiyati=input('Ald���n�z �r�n�n fiyat�n� giriniz:');
hediye=fix(aldiginizUrunMiktari/4);
netUrun=aldiginizUrunMiktari-hediye;
ucret=netUrun*aldiginizUrununFiyati;
if netUrun<0 %if �artl� deyimi belirlenen �art�n sa�lanmas�na ba�l� olarak if-end aras�ndaki i�lemleri sa�lar.
    disp('�nce �r�n sat�n al�n�z!');
else %else �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
    disp([num2str(aldiginizUrunMiktari) ' ald���n�z �r�n�n �creti= ' num2str(ucret) 'TL']);
end  %end program� bitirmeye yarar.



