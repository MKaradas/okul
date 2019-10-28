function sayac=MatrisElemanininMayinIcerenKomsularininSayisiniBul
sayac=0;
if MatrisElemanininKuzeyKomsusuVarMi(M,m,n)&&(M(m-1,n)='@')
    sayac=sayac+1;
end
if MatrisElemanininKuzeyBatiKomsusuVarMi(M,m,n)&&(M(m-1,n-1)=='@')
    sayac=sayac+1;
end
if MatrisElemanininBatiKomsusuVarmi(M,m,n)&&(M(m,n-1)=='@')
   sayac=sayac+1;
end
if MatrisElemanininGuneyBatiKomsusuVarmi(M,m,n)&&(M(m+1,n-1)=='@')
    sayac=sayac+1;
end
if MatrisElemanininGuneyKomsusuVarMi(M,m,n)&&(M(m+1,n)=='@')
    sayac=sayac+1;
end
if 
    sayac=sayac+1;
end
if
    sayac=sayac+1;
end
if
    sayac=sayac+1;
end