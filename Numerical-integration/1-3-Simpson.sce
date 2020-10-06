clear, clc
function F = f(x)
   F = sin(x)/x
endfunction
a=0.01;
b=1;
N=1;
n=2*N;
h = (b-a)/n;
x=a:h:b;
soma=4*f(x(2));
printf("Para x%d -> f(x%d) = %c\n", 0,0, string(f(a)));
printf("Para x%d -> f(x%d) = %c\n", 1,1, string(f(x(2))));
for i=3:n
    if(pmodulo(i,2)==0)
        soma = soma + 4*f(x(i));
    else 
        soma = soma +2*f(x(i));
    end   
    printf("Para x%d -> f(x%d) = %c\n", i-1,i-1,  string(f(x(i))));
end
printf("Para x%d -> f(x%d) = %c\n", n,n, string(f(b)));
disp('Resultado com 1/3 de Simpson : ')
intt = (h/3)*(f(a) + soma + f(b)); 
disp(intt);

