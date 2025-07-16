clc;
clear all;
close all;
% universal
x=[0 1 2 3 4];
y=[1 2 1.3 3.7 2.25];

coeffs = universal_poly_regression(x,y, 2);
xp = linspace(min(x), max(x),100);
yp= zeros(size(xp));

for i = 1:length(coeffs)
    yp = yp+coeffs(i)*xp.^(i-1);
end
% yp = a0 + a1 * xp + a2 * xp.^2;

plot(x, y, 'ro', xp, yp, 'b-');
hold on;
legend('Data Points', 'fitted curve');
title('Poly Regression');
xlabel('x'); ylabel('y');
grid on;
    

