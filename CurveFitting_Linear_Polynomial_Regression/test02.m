clc;
close all;
clear all;

d=input('Enter the order of the polynomial (d): ')
x=input('Please enter x as a vector:')
y=input('Please enter y as a vector with same length as x:')

if length(x) ~= length(y)
    error('x and y must be the same length.');
end

n = length(x);
A = zeros(d+1);
B = zeros(d+1, 1);

for m = 0:d
    for s = 0:d
        A(m+1,s+1) = sum(x.^(m+s-2));
    end
    B(m+1) = sum((x.^m).*y);
end
% =================================

n=order +1;
A=zeros(n,n);
B=zeros(n,1);

for i = 1:n
    for j =1:n
        A(i,j) =sum(x.^(i+j-2));
    end
    B(i)= sum((x.^(i-1)).*y);
end


% =====================






a=A\B 

e=a'
e=fliplr(e)
ym= polyval(e,x);

plot(x,y, 'o--', 'DisplayName', 'Orig
plot(x,y, 'o--', 'DisplayName', 'Original Data')
hold on;

plot(x,ym, '*--', 'DisplayName', 'Fitted Polynomial model' )
hold on;

error= abs(y-ym);
plot(x,error, 'r-o', 'DisplayName', 'Absolute Error')