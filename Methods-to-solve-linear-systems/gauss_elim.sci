clear //Comando para limpar o workspace 
clc // Comando para eliminar todas as variaveis armazenas no navegador de variaveis
A = [5 2 1; 3 1 4; 1 1 3];
b = [0; -7; -5]; //Define o vetor b do sistema 
[m,n] = size(A); //Obtem a quantidade de linha m e coluna n da matriz A 
if m~=n, error('A Matriz deve ser quadrada'); end //Verifica se a quantidade de linha e coluna são diferentes
nb = n+1; 
a = [A b]; //Concatena a matriz A com o vetor b, isto é, a armazenara a matriz ampliada do sistema
// operacoes elementares sobre as linhas
for k = 1:n-1
    for i = k+1:n
        mult = a(i,k)/a(k,k);
        a(i,k:nb) = a(i,k:nb)-mult*a(k,k:nb);
        disp(a)
    end
end
//Resolve o sistema triangular superior 
x = zeros(n,1);
x(n) = a(n,nb)/a(n,n);
for i = n-1:-1:1
    x(i) = (a(i,nb)-a(i,i+1:n)*x(i+1:n))/a(i,i);
end
disp('O vetor solução é ');
disp(x)
