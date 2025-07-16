clc;
clear all;
close all;

x = [1 2 3 4 5 6 7];
y = [0.5 2.5 2.0 4.0 3.5 6.0 5.5];

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



