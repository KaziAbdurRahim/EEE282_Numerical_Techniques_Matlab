clc;
clear all;
close all;

% -----------------------------
% GIVEN DATA POINTS
% -----------------------------
x = [0.4, 0.8, 1.2, 1.6, 2, 2.3]; 
y = [800, 975, 1500, 1950, 2900, 3600];

% ---------------------------------------
% METHOD 1: Lagrange Polynomial Interpolation using custom function
% Function: poly_interp01()
% ---------------------------------------
% Generating 100 interpolated x-points between min and max
xp = linspace(min(x), max(x), 100);

% Interpolating each xp using custom Lagrange function
yp = arrayfun(@(xi) poly_interp01(x, y, xi), xp);

% Plotting the interpolated polynomial
figure;
plot(x, y, 'ro', xp, yp, 'b-', 'LineWidth', 1);
legend('Given Data', 'Interpolated Polynomial');
title('Lagrange Polynomial Interpolation (poly_interp01)');
xlabel('x'); ylabel('y'); grid on;

% ------------------------------------------------------------------------
% METHOD 2: Alternate way using Polynomial Coefficients from poly_interpol2()
% ------------------------------------------------------------------------
% Fit polynomial to all data points
coeffs = poly_interpol2(x, y);

% Evaluate the polynomial for many values using polyval()
x_est = 0.4:0.01:2.3;
y_est = polyval(coeffs, x_est);

% Plotting the curve
figure;
plot(x_est, y_est, 'b-', 'LineWidth', 2); 
hold on;
plot(x, y, 'ro', 'MarkerFaceColor', 'r');  % original data
axis([0.4 2.4 500 4000]); %fixeing the axis range x, y
xlabel('x'); ylabel('y');
title('Polynomial Interpolation using polyfit + polyval (poly_interpol2)');
legend('Interpolated Curve', 'Data Points');
grid on;

% ------------------------------------------
% METHOD 3: Built-in Functions (spline and pchip)
% ------------------------------------------

xi = 0.4:0.01:2.3;

% Interpolation using spline (smooth curve)
yi_spline = interp1(x, y, xi, 'spline');

% Interpolation using pchip (preserves shape)
yi_pchip = interp1(x, y, xi, 'pchip');

% Plot comparison
figure;
plot(x, y, 'ro', xi, yi_spline, 'b--', xi, yi_pchip, 'g-', 'LineWidth', 1);
legend('Original Data', 'Spline', 'PCHIP');
title('Built-in Interpolation: Spline vs PCHIP');
xlabel('x'); ylabel('y'); grid on;
