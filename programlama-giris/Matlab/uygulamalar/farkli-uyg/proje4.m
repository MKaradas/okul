satir=input('Lutfen satir sayisini giriniz : ');
sutun=input('Lutfen sutun sayisini giriniz : ');
A=[];
A=rand(satir,sutun);
fprintf('%.2f\n',A);
b=round(A);
fprintf('%.2f\n',b);
toplam=0;
sayac=0;

    c=(satir*sutun);
    for satir=1: satir
        for sutun=1:sutun
        
        sayac=(sayac+1);
        end
        toplam=(toplam+b);
        
    end
    
    fprintf('Toplam = %d \n',toplam);
    ortalama=(toplam/c);
    fprintf('Ortalama = %.2f\n',ortalama);  
    fprintf('Sayac = %d\n',sayac);