function yi = poly_interp01(x, y, xi)
% LAGRANGE_INTERP - Computes the interpolated value using Lagrange polynomial

    n = length(x);
    yi = 0;

    for i = 1:n
        L = 1;
        for j = 1:n
            if j ~= i
                L = L * (xi - x(j)) / (x(i) - x(j));
            end
        end
        yi = yi + y(i) * L;
    end
end
