clc
clear
A = [-5 -10; 6 5]; //Define a matriz A
b = [-10 19]; //Define o vetor b
n = length(b); //Define a ordem do sistema
L = zeros(n,n); //Inicializa a matriz L triangular inferior
U = zeros(n,n); //Inicializa a matriz U triangula superior

for j=1:n
    L(j,j) = 1;
     for i=1:j
        soma = 0;
         for k=1:i-1
        soma = soma + L(i,k)*U(k,j);
         end
         U(i,j) = A(i,j) - soma; //Obtem os valores para matriz U
     end
     for i=j+1:n
        soma = 0;
         for k=1:j-1
        soma = soma + L(i,k)*U(k,j);
         end
       L(i,j) = (A(i,j)-soma)/U(j,j); //Obtem os valores para matriz L
     end
end
disp('Matriz L: ')
disp(L)
disp('Matriz U: ')
disp(U)
disp('Matriz LU = A: ')
disp(L*U)
disp('Matriz A: ')
disp(A)
// Trinagular inferior resolve Ly = b
y = zeros(1,n);
y(1) = b(1)/L(1,1);
for i=2:n
    soma = 0;
     for j=1:i-1
        soma = soma + L(i,j)*y(j);
     end
     y(i) = (b(i)-soma)/L(i,i);
end
// Triangular superior: resolve Ux = y
x(n) = y(n)/U(n,n);
for i=n-1:-1:1
 soma = 0;
 for j=i+1:n
 soma = soma + U(i,j)*x(j);
 end
 x(i) = (y(i)-soma)/U(i,i);
end
disp('Resultado: ')
disp(x)
