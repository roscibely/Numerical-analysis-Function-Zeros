clear, clc
function z = f(x,y)
    z = -y+x+2;
endfunction
a=0;
b=0.3;
h=0.00001
x=a:h:b;
y(1)=2; //y0
for k=1:length(x)
    y(k+1)= y(k)+h*f(x(k),y(k))
end
plot(y,'r'); plot(exp(-x)+x+1, 'b--')
