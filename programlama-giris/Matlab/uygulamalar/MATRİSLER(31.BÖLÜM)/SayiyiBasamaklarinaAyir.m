function [vektor basamakSayisi]=SayiyiBasamaklarinaAyir(n)
if n==0
    vektor=0;
    basamakSayisi=1;
else
    vektor=[];%Ba�lang��ta Bo� Bir Sat�r Vekt�r�
    basamakSayisi=0;
    while n>0%n 0 Dan B�y�yk M�ddet�e
        birlerBasamagi=mod(n,10);
        basamakSayisi=basamakSayisi+1;
        %D�KKAT.Basama�� Vekt�r�n Sonuna De�il Ba��na Ekle
        vektor=[birlerBasamagi vektor];
        %vektor=[vektor birlerBasamagi];
        n=fix(n/10);%n yi Bir Basamak K���lt
    end
end