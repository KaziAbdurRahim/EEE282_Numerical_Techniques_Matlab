function yi = linear_interp(x, y, xi)

% x, y : known data points
% xi   : input query point(s)
% yi   : interpolated value(s)

    yi = zeros(size(xi));
    for k = 1:length(xi)
        for i = 1:length(x)-1
            if xi(k) >= x(i) && xi(k) <= x(i+1)
                slope = (y(i+1) - y(i)) / (x(i+1) - x(i));
                yi(k) = y(i) + slope * (xi(k) - x(i));
                break;
            end
        end
    end
end
