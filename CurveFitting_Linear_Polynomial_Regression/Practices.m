%oil viscosity
clc;
close all;
clear all;

% x = [26.67 93.33 148.89 315.56];
% y = [1.35 0.085 0.012 0.00075];
% 
% % Try log transform for linearity
% log_y = log(y);
% 
% [a1, a0] = linear_regression(x, log_y);
% 
% xp = linspace(min(x), max(x), 100);
% yp = exp(a0 + a1 * xp);
% 
% semilogy(x, y, 'ro', xp, yp, 'b-');
% legend('Original Data', 'Log-linear Fit');
% title('Exponential Fit using Linear Regression on log(y)');
% xlabel('Temperature (°C)'); ylabel('Viscosity (N·s/m^2)');
% grid on;



%Bacteria growth
x = [0 4 8 12 16 20];
y = [67 84 98 125 149 185];

% Linear Fit
[a1_l, a0_l] = linear_regression(x, y);
% Polynomial Fit
[a0_q, a1_q, a2_q] = second_order_regression(x, y);

xp = linspace(0, 40, 200);
yp_l = a0_l + a1_l * xp;
yp_q = a0_q + a1_q * xp + a2_q * xp.^2;

plot(x, y, 'ro', xp, yp_l, 'b-', xp, yp_q, 'g--');
legend('Data', 'Linear Fit', 'Quadratic Fit');
xlabel('Day'); ylabel('Bacteria Count (×10^6)');
title('Bacterial Growth Fit Comparison');
grid on;

