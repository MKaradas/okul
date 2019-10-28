function mT=MatrisinTranspozunuAl(M)
mT=[];%Baþlangýçta Boþ Bir Matris kabul et
[satirSayisi sutunSayisi]=size(M);
%mT nin Satýr Sayýsý M nin Sütun Sayýsý Kadardýr ve 
%Sütun Sayýsý da M nin Satýr Sayýsý Kadardýr
for i=1:sutunSayisi%!!Dikkat!!
    for j=1:satirSayisi%!!Dikkat!!
        mT(i,j)=M(j,i);
    end
end