function N=Matrisi90DereceSagaDondur(M)
N=[];%Ba�lang��ta bir bo� matris kabul edelim.
[satirSayisi sutunSayisi]=size(M);
for i=1:sutunSayisi
    for j=1:satirSayisi
        N(i,j)=M(satirSayisi-j+1,i);
    end
end