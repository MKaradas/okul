ay=input('L�tfen Ay� Giriniz:');%Ay'� kullan�c�dan ald�k.
gun=input('L�tfen G�n� Giriniz:');%G�n� Kullan�c�dan ald�k.
if ay==1 || ay==2 || ay==3 || ay==4 || ay==5 || ay==6 || ay==7 || ay==8 || ay==9 || ay==10 ||  ay==11 || ay==12 %�artlar�m�z� belirttik.
    if  gun<31 && gun>1 %�artlar�m�z� belirttik.
    gecenGun = 31 + gun; %Toplam Gunu Hesaplad�k.
     fprintf('Ge�en G�n Say�s� = %d ',gecenGun); % Ekrana toplam ka� g�n oldu�unu bast�rd�k.
    else
    fprintf('Lutfen ay aral���n 1-12 aras�nda ,g�n aral���n� 1-31 aras�nda giriniz!\n');
    end
   else
    fprintf('Lutfen ay aral���n 1-12 aras�nda ,g�n aral���n� 1-31 aras�nda giriniz!\n');
end
   