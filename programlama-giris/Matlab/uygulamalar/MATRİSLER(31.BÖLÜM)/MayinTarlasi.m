function MayinTarlasi(str,stn,mayin)
if (str>=1)&&(stn>=1)&&(mayin<=(str*stn))
    M=MatrisinIciniRastgeleMayinlarDoldur(str,stn,mayin);
    N=MatrisinIciniYildizlarlaDoldur(str,stn);%�pucu Matrisi
    while 1%sonsuz D�ng�
        tahminStr=input('Sat�r �ndisi?:');
        tahminStn=input('S�tun �ndisi?:');
        while (tahminStr<1)||(tahminStn<1)||(tahminStr>str)||(tahminStn>stn)
            tahminStr=input('BOYUT HATASI.Sat�r �ndisi: ');
            tahminStn=input('BOYUT HATASI.S�tun �ndisi: ');
        end
        if M(tahminStr,tahminStn)=='@'
            disp('BOOOMM.May�na Bast�n�z:)Game Over.');
            break;%Sonsuz D�ng�y� Bitir
        end
        sayac=...
            MatrisElemanininMayinIcerernKomsularininSayisiniBul(M,tahminStr,tahminStn);
        %Sayac� Karaktere �evir ve �pucu Matrisini Yazd�r
        %�lgili Eleman� Ata
        N(tahminStr,tahminStn)=num2str(sayac);
        disp(N);%Her Tahmin Sonras� �pucu Matrisini Yazd�r
    end
    disp(M);%Oyun Bitince May�n Tarlas� Matrisini Yazd�r
else
    disp('Hatal� Parametre Giri�i.Oyun Sonland�r�l�yor.');
end