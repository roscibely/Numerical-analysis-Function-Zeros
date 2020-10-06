function y= f(x)
    y = x^2
endfunction
function integral= simpson38(a,b,n)
    h=(b-a)/(3*n)
    x=a:h:b
    y=f(x)
    soma=0
    for i = 1:n
        soma = soma + y(3*i-2)+3*y(3*i-1)+3*y(3*i)+y(3*i+1)
    end
    integral = (3*h/8)*soma
endfunction
