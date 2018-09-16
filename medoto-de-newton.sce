// Método de Newton para Zeros de Funções 
clc, clear
function [y]=f(x)
    y=4*cos(x)-exp(x)
endfunction

// Pontos iniciais
x0=input ('Digite o intervalo inicial: ');
e = input('Informe a tolerancia ');
ff = numderivative(f,x0); //Derivada
xi = x0 - f(x0)/ff;
while abs(((xi-x0)/xi))>e
   x0=xi;
   xi = x0 - f(x0)/numderivative(f,x0); 
   disp(xi); 
end

