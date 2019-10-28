pSayac=0; %pozitif sayaç 0 dan baþlamalýki üstüne ekleyerek gidebilsin yani cevabý doðru çýksýn.
pToplam=0;%ayný þekilde pozitif toplamda sonucun doðru olmasý için 0dan baþlmalý.
hSayac=0;%ayný þekilde harmonik sayaçda sonucun doðru olmasý için 0dan baþlmalý.
hToplam=0;%ayný þekilde harmonik toplamda sonucun doðru olmasý için 0dan baþlmalý.
nSayac=0;%ayný þekilde negatif sayaçda sonucun doðru olmasý için 0dan baþlmalý.
nToplam=1;%negatif toplam 0dan baþlarsa sayi hep 0 olur dolayýsýyla 1 ile baþlamalýdýr.
enKucukSayi=100; %daha rahat olmasý açýsýndan.
enBuyukSayi=100;
while 1 %döngü olmasýný saðlar yanýnda kesin olarak koþul olmasý gerekir.
sayi=input('Lütfen bir sayi giriniz:'); %kullanýcýdan veri alamak için kullanýlýr
if sayi==-1 %yanýna þartlý deyim yazýlabilen ve end ile kesinlikle kapatýlan þartlý deyim.
break; %programý aniden kesme komutudur.
end %if ile arasýndaki iþlemleri sýnýrlama ve programý sonlandýrmaya yarar.
if sayi>0 && sayi==fix(sayi) 
pToplam=pToplam+sayi; %þart bozulana kadar döngünün gerçekleþtirilmesi için gerekli iþlemler.
pSayac=pSayac+1;
end
if sayi<0 && sayi==fix(sayi)%fix fonksiyonu sayýyý 0 a doðru yuvarlar.
nToplam=nToplam*sayi;
nSayac=nSayac+1;
end
if sayi>0 && mod(sayi,2)==1 && sayi==fix(sayi)
hToplam=hToplam+(1/sayi);
hSayac=hSayac+1;
elseif sayi>0 && mod(sayi,2)==0 %if gibi þartlý deyimdir
if sayi<=enKucukSayi
enKucukSayi=sayi;
end
end
end  
if sayi~=fix(sayi)
if sayi>enBuyukSayi
enBuyukSayi=sayi1;
end
end
aOrtalama=(pToplam/pSayac); %a.o. bulmakiçin gerekli iþlemler.
gOrtalama=nthroot(nToplam,nSayac);%g.o. bulmakiçin gerekli iþlemler.
hOrtalama=(hSayac/hToplam); %h.o. bulmakiçin gerekli iþlemler.
fprintf('En büyük ondalýklý sayý =%g\n',enBuyukSayi); %ekrana yazdýrmada kullanýlýr.
fprintf('En küçük pozitif çift sayý sonucu =%d\n',enKucukSayi);
fprintf('Pozitif sayýlarýn aritmetik ortalamasý sonucu %d\n',aOrtalama);
fprintf('Negatif  sayýlarýn geometrik ortalamasý sonucu %d\n',gOrtalama);
fprintf('Pozitif tek sayýlarýn harmonik ortalamasý sonucu%g\n',hOrtalama);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

