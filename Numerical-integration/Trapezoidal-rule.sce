clear, clc
function F = f(x)
   F= (2*exp(x^2)*x + 1)^(-1/2);
   disp(F);
endfunction
a=0;
b=1;
n=2;
h = (b-a)/n;
x=a:h:b;
soma=0;
for i=2:n
    soma = soma + 2*f(x(i))
end
intt = (h/2)*(f(x(1)) + soma + f(x($))); 
disp(intt);

