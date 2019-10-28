function [satirNo sutunNo]=MatrisinSatirSutunNumarasiniBelirle(siraNo,M)
[satirSayisi sutunSayisi]=size(M);
if siraNo<=(satirSayisi*sutunSayisi)
    satirNo=ceil(siraNo/sutunSayisi);
    sutunNo=mod(siraNo,sutunSayisi);
    if sutunNo==0
        sutunNo=sutunSayisi;
    end
else
    satirNo=0;
    sutunNo=0;
end