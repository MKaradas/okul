function MayinTarlasi(str,stn,mayin)
if (str>=1)&&(stn>=1)&&(mayin<=(str*stn))
    M=MatrisinIciniRastgeleMayinlarDoldur(str,stn,mayin);
    N=MatrisinIciniYildizlarlaDoldur(str,stn);%Ýpucu Matrisi
    while 1%sonsuz Döngü
        tahminStr=input('Satýr Ýndisi?:');
        tahminStn=input('Sütun Ýndisi?:');
        while (tahminStr<1)||(tahminStn<1)||(tahminStr>str)||(tahminStn>stn)
            tahminStr=input('BOYUT HATASI.Satýr Ýndisi: ');
            tahminStn=input('BOYUT HATASI.Sütun Ýndisi: ');
        end
        if M(tahminStr,tahminStn)=='@'
            disp('BOOOMM.Mayýna Bastýnýz:)Game Over.');
            break;%Sonsuz Döngüyü Bitir
        end
        sayac=...
            MatrisElemanininMayinIcerernKomsularininSayisiniBul(M,tahminStr,tahminStn);
        %Sayacý Karaktere Çevir ve Ýpucu Matrisini Yazdýr
        %Ýlgili Elemaný Ata
        N(tahminStr,tahminStn)=num2str(sayac);
        disp(N);%Her Tahmin Sonrasý Ýpucu Matrisini Yazdýr
    end
    disp(M);%Oyun Bitince Mayýn Tarlasý Matrisini Yazdýr
else
    disp('Hatalý Parametre Giriþi.Oyun Sonlandýrýlýyor.');
end