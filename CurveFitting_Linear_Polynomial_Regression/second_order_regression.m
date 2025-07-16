function [a0, a1, a2] = second_order_regression(x, y)
    n = length(x);
    A = [n, sum(x), sum(x.^2);
         sum(x), sum(x.^2), sum(x.^3);
         sum(x.^2), sum(x.^3), sum(x.^4)];
    b = [sum(y); sum(x.*y); sum(x.^2 .* y)];
    coeffs = A \ b;

    a0 = coeffs(1);
    a1 = coeffs(2);
    a2 = coeffs(3);
end
