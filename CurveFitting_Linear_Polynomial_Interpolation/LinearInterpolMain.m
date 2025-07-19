clc 
clear all 
close all 

x = [0, 2, 4, 6, 9, 11, 12, 15, 17, 19] ; 
y = [5, 6, 7, 6, 9, 8, 7, 10, 12, 12]; 



% ------------Custom function: linear_interp()------------
 
xi = 5;
yi = linear_interp(x, y, xi); % used function: linear_interp
plot(x, y, 'ro-', 'LineWidth', 2); 
hold on;
plot(xi, yi, 'bs', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
legend('Original Data', 'Interpolated Point');
title('Linear Interpolation with linear_interp');
grid on; xlabel('x'); ylabel('y');


% --------Alternate way function: linear_interpol()-------------------

xp=5 ; 
yp=linear_interpol(x, y, xp) ; % used function: linear_interpol
figure;
plot(x,y, '-*') 
hold on;
plot(xp, yp, 'bs', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
axis([0 20 5 14])  % axis range x , y
xlabel('x') 
ylabel('y') 
title('Plot of linear interpolayion with linear_interpol') 
legend('actual dada-points' ) 

% ------------inbuilt function: interp1 ------------------
yp = interp1(x, y, xi, 'linear');
figure;
plot(x,y, 'g-*') 
hold on;
plot(xp, yp, 'bs', 'MarkerSize', 10, 'MarkerFaceColor', 'b');
axis([0 20 5 14])  % axis range x , y
xlabel('x') 
ylabel('y') 
title('Plot of linear interpolayion using Built in fuction') 
legend('actual dada-points' ) 