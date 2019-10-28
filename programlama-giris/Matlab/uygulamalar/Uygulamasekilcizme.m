a=input('Piramit deðerini giriniz:');
b=1;
for i=1:a
    fprintf('\n');
    for j=1:a-1
        fprintf(' ');
    end
for j=1:b
    fprintf('*')
end
b=b+1;
a=a+1;
end