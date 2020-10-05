
function Y = lagrange(xn, yn)
//Exemplo:
//xn = [1, 3, 4, 5];// VALORES DE X
//yn =[0 6 24 60]; //VALORES DOS PONTOS X APLICADO A FUNCAO
// Y  = lagrange(xn, yn);

x = poly(0, "x"); 
//interpolação: formula de lagrange
n=length(xn); 
if length(yn)~=n //Verificar se a quantidade de pontos dos vetores xn e  é a mesma
    disp('A quantidade de pontos deve ser a mesma')
end
Y=0;
//calcular os n fatores de lagrange
for i=1:n
//cada fator é o produto de (x-xj)/(xi-xj) onde i~=j
L = 1;
for j=1:n
    if i~=j 
        L= L*(x-xn(j))/(xn(i)-xn(j));
    end
end
disp(L)
//printf("L%g :",i-1); disp(L); 
Y = Y + yn(i)*L; //Polinomio de interpolacao
end
disp('O polinomio de interpolação é: ')
disp(Y)
endfunction
