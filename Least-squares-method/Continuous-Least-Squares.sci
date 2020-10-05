clear
clc
tm=2//ordem do sistema para regressão

A=zeros(tm,tm);
B=zeros(1,2);
//[m,n] = size(A);

function y = f(x,w,z)
    y=(x^(w-1))*(x^(z-1))
endfunction

function h = fh(x,w)
    h=(4*(x^3))*(x^(w-1))//////Função a ser regredida
endfunction

for j=1:tm
    for i=1:tm
        A(i,j)= intg(0,1,list(f, i, j))
    end
    B(j)=intg(0,1,list(fh,j))
end

disp("Matriz:")
disp(A)
disp("Vetor:")
disp(B)

l=inv(A)*B'
tl = size(l)

printf("P(x)= ")
printf("%g", l(1))
for m=2:tl(1)
    printf(" +(%gX^%g)",l(m), m-1)
end
