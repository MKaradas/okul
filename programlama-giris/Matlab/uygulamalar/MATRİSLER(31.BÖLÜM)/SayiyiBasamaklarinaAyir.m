function [vektor basamakSayisi]=SayiyiBasamaklarinaAyir(n)
if n==0
    vektor=0;
    basamakSayisi=1;
else
    vektor=[];%Baþlangýçta Boþ Bir Satýr Vektörü
    basamakSayisi=0;
    while n>0%n 0 Dan Büyüyk Müddetçe
        birlerBasamagi=mod(n,10);
        basamakSayisi=basamakSayisi+1;
        %DÝKKAT.Basamaðý Vektörün Sonuna Deðil Baþýna Ekle
        vektor=[birlerBasamagi vektor];
        %vektor=[vektor birlerBasamagi];
        n=fix(n/10);%n yi Bir Basamak Küçült
    end
end