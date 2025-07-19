clc 
clear all 
close all 

x = [0.4, 0.8, 1.2, 1.6, 2, 2.3] ; 
y = [800, 975, 1500, 1950, 2900, 3600]; 

xp = linspace(min(x), max(x), 100);
yp = arrayfun(@(xi) poly_interp01(x, y, xi), xp);

plot(x, y, 'ro', xp, yp, 'b-', 'LineWidth', 2);
hold on;
legend('Given Data', 'Interpolated Polynomial');
title('Lagrange Polynomial Interpolation');
xlabel('x'); ylabel('y'); grid on;

%------------------Alterante way ------------------

x = [0.4, 0.8, 1.2, 1.6, 2, 2.3] ; 
y = [800, 975, 1500, 1950, 2900, 3600]; 
xp=2.1 ; 
coeffs = poly_interpol2(x,y); 
y_est = [] 
for x = 0.4:0.01:2.3 
   yp = polyval(coeffs, x); 
y_est = [y_est,yp] ; 
end 
x_est=0.4:0.01:2.3 
figure;
plot(x_est,y_est) 
axis([0.4 2.4 500 4000]) % defining the axis range
xlabel('x') 
ylabel('y') 
title('Plot of largerange interpolayion') 
legend('data-points' )
