function yi = newton(x, y)
//Interpolação de Newton
//x Digite os pontos
//y Digite os valores dos pontos na função
xi = poly(0, "x");
n = length(x);
b = zeros(n,n);
b(:,1) = y(:); //A coluna 1 de b vai armazenar os valores das diferenças divididas de ordem 0
//Tabela de diferenças divididas
for j=2:n
    for i=1:n-j+1
        b(i,j)= (b(i+1,j-1) -b(i,j-1))/(x(i+j-1)-x(i));
    end
end
disp(b)
//Calculo da interpolação
xt=1;
yi=b(1,1);
for j=1:n-1
    xt=xt.*(xi-x(j));
    yi=yi+b(1,j+i)*xt;
end

//disp('Tabela de diferença dividida:')
//disp(b)
end

