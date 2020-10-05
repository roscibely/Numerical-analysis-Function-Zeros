clc
clear
A =[10 2 1;1 5 1;2 3 10];
b =[7; -8; 6];
x =[0.7; -1.6; 0.6];
tol= 0.05;
N=100;

function [x,deltax]=gauss_seidel(A,b,x,tol,N)
n=size(A,1)
xnew=x
convergiu=%F

k=1
while k<=N & ~convergiu
  xnew(1)=(b(1)-A(1,2:n)*x(2:n))/A(1,1)
  for i=2:n-1
    xnew(i)=(b(i)-A(i,1:i-1)*xnew(1:i-1)-A(i,i+1:n)*x(i+1:n) )/A(i,i)
  end
  xnew(n)=(b(n)-A(n,1:n-1)*xnew(1:n-1))/A(n,n)

  deltax=max(abs(x-xnew))
  if deltax<tol then 
     convergiu=%T
  end
  k=k+1
  x=xnew 
  disp([k,x',deltax])
end
if ~convergiu then
    error('Nao convergiu')
end

endfunction

sl  =gauss_seidel(A,b,x,tol,N)


