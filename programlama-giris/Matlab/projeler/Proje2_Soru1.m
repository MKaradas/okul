ilacinIlkVerimi=100; %sayacýmýzý 100 deðerinden baþlattým daha rahat olmasý açýsýndan katlarý þeklindede düþünebiliriz örneðin 1000,... gibi. 
imhaSiniri=50; %sayacýmýza deðer ekleyip istediðimiz sonucu elde etmek için iþlemlerde kullanýrýz bunun için atama yaparýz.
ay=0; %yukarýda bahsettiðim gibi ay deðerini 0 baþlatmamýzýn sebebi ilacý aldýðýmýz günden itibaren etkiyi ekleyip sonucu bulmak.
while ilacinIlkVerimi>imhaSiniri %while döngüsü burda koþulla uygulandýðý için programýn daha rahat iþlemesini saðlar.
    ilacinIlkVerimi=ilacinIlkVerimi-ilacinIlkVerimi*0.04; %etkiyi hesaplamak için gerekli iþlemler.
    ay=ay+1; %ilacýmýzýn ne kadar ay sonra tükeneceðini hesaplamamýz için gerekli iþlemler.
end %programý bitirmeye yarar.
disp([' Ýlacýnýz ' num2str(ay) ' ay sonra imha edilmesi gerekiyor ']); %programý ekrana yazdýrmaya yarar.