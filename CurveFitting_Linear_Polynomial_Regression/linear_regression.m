function [a1, a0] = linear_regression(x, y)
    n = length(x);
    sum_x = sum(x);
    sum_y = sum(y);
    sum_xy = sum(x .* y);
    sum_x2 = sum(x.^2);

    a1 = (n * sum_xy - sum_x * sum_y) / (n * sum_x2 - sum_x^2);
    a0 = (sum_y / n) - a1 * (sum_x / n);
end
