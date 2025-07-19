clc 
clear all 
close all 

% ---------------------------------------------------
% GIVEN DATA POINTS (x vs y)
% ---------------------------------------------------
x = [0, 2, 4, 6, 9, 11, 12, 15, 17, 19];
y = [5, 6, 7, 6, 9, 8, 7, 10, 12, 12];


% ---------------------------------------------------
% METHOD 1: Linear Interpolation using Custom Function linear_interp()
% ---------------------------------------------------
xi = [2.5 10];                   % Point at which to interpolate
yi = linear_interp(x, y, xi);   % Custom function that performs linear interpolation

% Plot the result
figure;
plot(x, y, 'ro-', 'LineWidth', 2);   % Original data points with line
hold on;
plot(xi, yi, 'bs', 'MarkerSize', 10, 'MarkerFaceColor', 'b');  % Interpolated point
legend('Original Data', 'Interpolated Point');
title('Linear Interpolation using linear\_interp()');
xlabel('x'); ylabel('y'); grid on;

% ---------------------------------------------------
% METHOD 2: Alternate Custom Function linear_interpol()
% ---------------------------------------------------
xp = 2.5 ;                  % Same interpolation point only one point
yp = linear_interpol(x, y, xp);         % Another custom method

% Plot the result
figure;
plot(x, y, '-*k', 'LineWidth', 1.5);     % Original data points
hold on;
plot(xp, yp, 'bs', 'MarkerSize', 10, 'MarkerFaceColor', 'b');  % Interpolated point
axis([0 20 5 14]);                      % Set axis range
xlabel('x'); ylabel('y');
title('Linear Interpolation using linear\_interpol()');
legend('Data Points', 'Interpolated Point');
grid on;


% ---------------------------------------------------
% METHOD 3: Using MATLAB Built-in interp1() Function
% ---------------------------------------------------
% Interpolate at the same xi using MATLAB's built-in 'linear' method
yp = interp1(x, y, xi, 'linear');

% Plot the result
figure;
plot(x, y, 'g-*', 'LineWidth', 1.5);     % Original data
hold on;
plot(xi, yp, 'bs', 'MarkerSize', 10, 'MarkerFaceColor', 'b');  % Interpolated point
axis([0 20 5 14]);
xlabel('x'); ylabel('y');
title('Linear Interpolation using Built-in interp1()');
legend('Data Points', 'Interpolated Point');
grid on;