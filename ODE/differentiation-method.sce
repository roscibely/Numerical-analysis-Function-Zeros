function F = f(x)
    F = x^4 
endfunction

//Derivada de terceira ordem
x=input('Insira o valor para x');
h=input('Insira o valor do passo');
a = -f(x + 3*h);
b = 8 * f(x + 2*h);
c = -13 * f(x + h);
d = 13 * f(x - h);
e = -8 * f(x - 2*h);
ff = f(x - 3*h);
diff3 = (a + b + c + d + e + ff)/(8*h^3);
//Derivada de quarta ordem
a = f(x);
b = -4 * f(x - h);
c = 6 * f(x - 2*h);
d = -4 * f(x - 3*h);
e = f(x - 4*h);
diff4 = (a + b + c + d + e) /(h^4)
  
