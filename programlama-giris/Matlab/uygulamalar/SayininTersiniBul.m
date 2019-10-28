function nTers=SayininTersiniBul(n)
nTers=0;
while n>0
    birlerBasamagi=mod(n,10);
    nTers=10*nTers+birlerBasamagi;
    n=fix(n/10);
end