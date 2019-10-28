function EkranaYildizBas()%!!!imzaya dikkat!!!
for i=1:9
    for j=1:9
        if ((j>=i) && (i+j)<=10) || ((i+j>=10) && (j<=i))
            fprintf('*')%ekranayýldýz bas
        else
            fprintf(' ')%ekrana bosluk bas
        end
    end
    fprintf('n\')%bir sonraki satirin basina git
end