function mT=MatrisinTranspozunuAl(M)
mT=[];%Ba�lang��ta Bo� Bir Matris kabul et
[satirSayisi sutunSayisi]=size(M);
%mT nin Sat�r Say�s� M nin S�tun Say�s� Kadard�r ve 
%S�tun Say�s� da M nin Sat�r Say�s� Kadard�r
for i=1:sutunSayisi%!!Dikkat!!
    for j=1:satirSayisi%!!Dikkat!!
        mT(i,j)=M(j,i);
    end
end