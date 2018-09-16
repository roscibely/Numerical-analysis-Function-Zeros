//Método da Secante para Zeros de Funções
clear, clc
function y = f(x)
    y = x^3 -2*x^2 +2*x -5;
endfunction

xn_1 = input('Informe o intervalo ');
xn = input('Informe o intervalo ');
e = input('Digite a tolerancia ');
N = input('Informe o numero de iteração '); 

for i=1:N
    x = (f(xn)*xn_1 - xn*f(xn_1))/(f(xn) - f(xn_1));
    if (abs((x-xn)/x)<e) //Verificar se o criterio de para foi satisfeito
        printf('O valor da raiz para um erro < %g é %g \n', e, x);
        break;
    else if(i==N)
           printf('Não foi possível encontrar a raiz para um erro < %g e %g iterações \n', e, i);  
        end 
    end 
    xn_1 = xn; 
    xn = x;
end
