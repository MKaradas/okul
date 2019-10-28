function N=Matrisi90DereceSagaDondur(M)
N=[];%Baþlangýçta bir boþ matris kabul edelim.
[satirSayisi sutunSayisi]=size(M);
for i=1:sutunSayisi
    for j=1:satirSayisi
        N(i,j)=M(satirSayisi-j+1,i);
    end
end