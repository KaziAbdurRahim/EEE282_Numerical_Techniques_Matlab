clc 
clear all 
close all 

% x = [1 2 3 4 5];
% y = [2 4 1 3 7];
x = [0, 2, 4, 6, 9, 11, 12, 15, 17, 19] ; 
y = [5, 6, 7, 6, 9, 8, 7, 10, 12, 12]; 
 
xi = 5;
yi = linear_interp(x, y, xi);
plot(x, y, 'ro-', 'LineWidth', 2); 
hold on;
plot(xi, yi, 'bs', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
legend('Original Data', 'Interpolated Point');
title('Linear Interpolation');
grid on; xlabel('x'); ylabel('y');


% --------Alternate way-------------------

x = [0, 2, 4, 6, 9, 11, 12, 15, 17, 19] ; 
y = [5, 6, 7, 6, 9, 8, 7, 10, 12, 12]; 
xp=5 ; 
yp=linear_interpol(x, y, xp) ; 

plot(x,y, '-*','LineWidth', 4) 
axis([0 20 5 14]) 
xlabel('x') 
ylabel('y') 
title('Plot of linear interpolayion') 
legend('actual dada-points' )