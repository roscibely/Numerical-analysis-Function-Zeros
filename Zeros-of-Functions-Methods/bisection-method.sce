clc, clear

function y = f(x)
    y = x^3-9*x+3
endfunction

a=input('Digite o valor de a: ');
b=input('Digite o valor de b: ');
e=input('Digite a tolerancia: '); 
i =0; 
while((b-a)/2>e)
    x=(a+b)/2;
    if(f(a)*f(x)<0)
        b=x; 
    else 
        a=x;
    end
    printf('O valor de x %g é %g \n ',i,x);
    i=i+1;  
end 
