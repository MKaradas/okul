function EkranaSekilCiz14()%!!!IMZAYA DIKKAT!!!
for i=1:9
    for j=1:9
        if ((j>=i) && (i+j)<=10) || ((i+j>=10) && (j<=i)) 
            fprintf('*');%Ekrana Yildiz Bas
        else
            fprintf(' ');%Ekrana Bosluk Bas
        end
    end
    fprintf('\n');%Bir Sonraki Satirin Basina Git
end