clear
clc 
//Método de eliminação de Gauss-Jordan
a= [ 5 5 0 15
     2 4 1 10 
     3 4 0 11 ];
[m,n]=size(a); //Obtém a quantidade de linha m e coluna n da matriz a
//Pivotizando a matriz
for j=1:m-1
    for z=2:m
        if a(j,j)==0
            t=a(1,:);a(1,:)=a(z,:); 
            a(z,:)=t;
            end
end
//Converte os elementos abaixo da diagonal principal em zeros
for i=j+1:m
    a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
end
end
//Converte os elementos acima da diagonal principal em zeros
for j=m:-1:2
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end
//Converte os elementos da diagonal principal em 1
for s=1:m
    a(s,:)=a(s,:)/a(s,s);
    X(s)=a(s,n)
end
disp('métode de Gauss-Jordan');
disp(a);
disp(X);
