pSayac=0; %pozitif saya� 0 dan ba�lamal�ki �st�ne ekleyerek gidebilsin yani cevab� do�ru ��ks�n.
pToplam=0;%ayn� �ekilde pozitif toplamda sonucun do�ru olmas� i�in 0dan ba�lmal�.
hSayac=0;%ayn� �ekilde harmonik saya�da sonucun do�ru olmas� i�in 0dan ba�lmal�.
hToplam=0;%ayn� �ekilde harmonik toplamda sonucun do�ru olmas� i�in 0dan ba�lmal�.
nSayac=0;%ayn� �ekilde negatif saya�da sonucun do�ru olmas� i�in 0dan ba�lmal�.
nToplam=1;%negatif toplam 0dan ba�larsa sayi hep 0 olur dolay�s�yla 1 ile ba�lamal�d�r.
enKucukSayi=100; %daha rahat olmas� a��s�ndan.
enBuyukSayi=100;
while 1 %d�ng� olmas�n� sa�lar yan�nda kesin olarak ko�ul olmas� gerekir.
sayi=input('L�tfen bir sayi giriniz:'); %kullan�c�dan veri alamak i�in kullan�l�r
if sayi==-1 %yan�na �artl� deyim yaz�labilen ve end ile kesinlikle kapat�lan �artl� deyim.
break; %program� aniden kesme komutudur.
end %if ile aras�ndaki i�lemleri s�n�rlama ve program� sonland�rmaya yarar.
if sayi>0 && sayi==fix(sayi) 
pToplam=pToplam+sayi; %�art bozulana kadar d�ng�n�n ger�ekle�tirilmesi i�in gerekli i�lemler.
pSayac=pSayac+1;
end
if sayi<0 && sayi==fix(sayi)%fix fonksiyonu say�y� 0 a do�ru yuvarlar.
nToplam=nToplam*sayi;
nSayac=nSayac+1;
end
if sayi>0 && mod(sayi,2)==1 && sayi==fix(sayi)
hToplam=hToplam+(1/sayi);
hSayac=hSayac+1;
elseif sayi>0 && mod(sayi,2)==0 %if gibi �artl� deyimdir
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
aOrtalama=(pToplam/pSayac); %a.o. bulmaki�in gerekli i�lemler.
gOrtalama=nthroot(nToplam,nSayac);%g.o. bulmaki�in gerekli i�lemler.
hOrtalama=(hSayac/hToplam); %h.o. bulmaki�in gerekli i�lemler.
fprintf('En b�y�k ondal�kl� say� =%g\n',enBuyukSayi); %ekrana yazd�rmada kullan�l�r.
fprintf('En k���k pozitif �ift say� sonucu =%d\n',enKucukSayi);
fprintf('Pozitif say�lar�n aritmetik ortalamas� sonucu %d\n',aOrtalama);
fprintf('Negatif  say�lar�n geometrik ortalamas� sonucu %d\n',gOrtalama);
fprintf('Pozitif tek say�lar�n harmonik ortalamas� sonucu%g\n',hOrtalama);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

