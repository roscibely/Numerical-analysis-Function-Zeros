clear, clc
function F = f(x, y)
F= 4 - 2*y
endfunction
N =2// Numero de iteracoes
b =0.2; //Intervalo superior
a =0; //Intervalo inferior
h=(b-a)/N; // Passo
x=a:h:b;
y (1) =4; // Valor inicial
ye(1)=y(1); 

yr4(1) = y(1);
for i =1:N
k1= f(x(i), y(i)); //Runge-Kutta 2
k2=f(x(i)+h, y(i)+h*k1);
y(i+1) = y(i) + (h/2)*(k1+k2)

ye(i +1) = ye(i) + h*f(x(i), ye(i)); //Formula de Euler
end

//FIGURAS
plot(x,y) //Apresenta o gráfico da solução numerica
plot(x,ye, 'g') // Euler
//plot(exp(-x)+x+1, 'r--') //Apresenta o gráfico da solução analitica
legend('Método de Runge-Kutta 2','Método de Euler','Solução Analitica');
title('Gráfico da EDO: dy/dx +y-x-2 ');
