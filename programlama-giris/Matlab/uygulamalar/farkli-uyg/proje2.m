ay=input('Lütfen Ayý Giriniz:');%Ay'ý kullanýcýdan aldýk.
gun=input('Lütfen Günü Giriniz:');%Günü Kullanýcýdan aldýk.
if ay==1 || ay==2 || ay==3 || ay==4 || ay==5 || ay==6 || ay==7 || ay==8 || ay==9 || ay==10 ||  ay==11 || ay==12 %Þartlarýmýzý belirttik.
    if  gun<31 && gun>1 %Þartlarýmýzý belirttik.
    gecenGun = 31 + gun; %Toplam Gunu Hesapladýk.
     fprintf('Geçen Gün Sayýsý = %d ',gecenGun); % Ekrana toplam kaç gün olduðunu bastýrdýk.
    else
    fprintf('Lutfen ay aralýðýn 1-12 arasýnda ,gün aralýðýný 1-31 arasýnda giriniz!\n');
    end
   else
    fprintf('Lutfen ay aralýðýn 1-12 arasýnda ,gün aralýðýný 1-31 arasýnda giriniz!\n');
end
   