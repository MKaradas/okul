function [i j]=Proje4_Soru3(n,a)
for i=1:1:3
    for j=1:1:3
        if i~=2
            A(i,j)=A(i,(3-(j-1)));
        end
    end
end
a=round(n/2);
for i=1:1:n
    for  j=1:1:n
        disp('*')
    end
end