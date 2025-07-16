clc;
clear all;
close all;

% if hard codded
% x=[0 1 2 3 4]; 
% y=[1 2 1.3 3.7 2.25];
% order=2

%  User Inputs
order = input('Enter the order of the polynomial (e.g., 2): ');
x = input('Enter x values as a vector (e.g., [0 1 2 3 4]): ');
y = input('Enter y values as a vector of same length (e.g., [1 2 1.3 3.7 2.25]): ');

%  Validation
if length(x) ~= length(y)
    error('❌ x and y must be the same length.');
end

% Polynomial Regression
coeffs = universal_poly_regression(x, y, order);
xp = linspace(min(x), max(x), 100);
yp = zeros(size(xp));

for i = 1:length(coeffs)
    yp = yp + coeffs(i) * xp.^(i - 1);
end

% Plotting
plot(x, y, 'ro', 'DisplayName', 'Data Points');
hold on;
plot(xp, yp, 'b-', 'DisplayName', 'Fitted Curve');
legend('Location', 'best');
title(['Polynomial Regression (Order ' num2str(order) ')']);
xlabel('x');
ylabel('y');
grid on;
