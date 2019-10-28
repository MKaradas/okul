clear all; clc;

A=[1 19 29 23 10; 18 2 20 21 6; 17 28 3 22 7; 27 16 30 4 8; 15 26 25 24 9; 14 13 12 11 15]
[m, n] = size(A);
for say=1:3
    % Soldan saða
    a = say; b = say; bb = n+1-say;
    i = a;
    for j=b:bb
        A(i,j);
    end
    
    % Yukarýdan aþaðý
    a = say+1; aa=m+1-say; b = n+1-say;
    
    j = b;
    for i=a:aa
        A(i,j);
    end
    
    % Saðdan Sola
    a = m+1-say; b = n; bb = say;
    
    i = a;
    for j=b:-1:bb
        A(i,j);
    end
    
    % Aþaðýdan Yukarý
    a = m-say; aa=say+1; b = say; bb=n+1-say;
    
    j = b;
    for i=a:-1:aa
        A(i,j);
    end
end