sayi=input('L�tfen sayi de�erini giriniz:');  %input komutu kullan�c�dan say�sal veya metinselveri temini sa�lar.
altLimit=input('L�tfen altLimit de�erini giriniz:');
ustLimit=input('L�tfen ustLimit de�erini giriniz:');
if sayi<altLimit; %if �artl� deyimi belirlenen �art�n sa�lanmas�na ba�l� olarak if-end aras�ndaki i�lemleri sa�lar.
    fprintf('Par�al� fonksiyonda altlimit de�erine kar��l�k gelmektedir %d\n',altLimit);
elseif sayi>ustLimit; %elseif �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
    fprintf('Par�al� fonksiyonda ustLimit de�erine kar��l�k gelmektedir %d\n',ustLimit);
else %else �artl� deyimide if ile ayn� i�levi g�r�r �art sa�lan�nca.
    fprintf('Par�al� fonksiyonda sayi de�erine kar��l�k gelmektedir %d\n',sayi); %fprint ve disp ekrana yazd�rma komutudur.
end     %end program� bitirmeye yarar.                        