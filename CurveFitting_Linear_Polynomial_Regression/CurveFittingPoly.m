% second order regression line
clc;
close all;
clear all;

 %Define Data Points
x = [0, 1, 2, 3, 4, 5];
y = [2.1, 7.7, 13.6, 27.2, 40.9, 61.1];

[a1, a0] = linear_regression(x, y); %Implements simple least square linear regression
% linspace(start, end, N) → Generates N linearly spaced points from start to end
xp = linspace(min(x), max(x), 100);
yp = a0 + a1 * xp;

plot(x, y, 'ro', xp, yp, 'b-');
hold on;
legend('Data Points', 'Linear Fit');
title('Linear Regression');
xlabel('x'); ylabel('y');
grid on;

[a0, a1, a2] = second_order_regression(x, y); %Call second order regression function
xp = linspace(min(x), max(x), 100);
yp = a0 + a1 * xp + a2 * xp.^2;

plot(x, y, 'ro', xp, yp, 'g-', 'LineWidth', 2);
legend('Data Points', 'Quadratic Fit');
title('Second Order Polynomial Regression');
xlabel('x'); ylabel('y');
grid on;
