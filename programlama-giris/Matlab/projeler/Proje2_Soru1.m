ilacinIlkVerimi=100; %sayac�m�z� 100 de�erinden ba�latt�m daha rahat olmas� a��s�ndan katlar� �eklindede d���nebiliriz �rne�in 1000,... gibi. 
imhaSiniri=50; %sayac�m�za de�er ekleyip istedi�imiz sonucu elde etmek i�in i�lemlerde kullan�r�z bunun i�in atama yapar�z.
ay=0; %yukar�da bahsetti�im gibi ay de�erini 0 ba�latmam�z�n sebebi ilac� ald���m�z g�nden itibaren etkiyi ekleyip sonucu bulmak.
while ilacinIlkVerimi>imhaSiniri %while d�ng�s� burda ko�ulla uyguland��� i�in program�n daha rahat i�lemesini sa�lar.
    ilacinIlkVerimi=ilacinIlkVerimi-ilacinIlkVerimi*0.04; %etkiyi hesaplamak i�in gerekli i�lemler.
    ay=ay+1; %ilac�m�z�n ne kadar ay sonra t�kenece�ini hesaplamam�z i�in gerekli i�lemler.
end %program� bitirmeye yarar.
disp([' �lac�n�z ' num2str(ay) ' ay sonra imha edilmesi gerekiyor ']); %program� ekrana yazd�rmaya yarar.