function coeffs = universal_poly_regression(x,y, order)

%array or cell

n=order +1;
A=zeros(n,n);
B=zeros(n,1);

for i = 1:n
    for j =1:n
        A(i,j) =sum(x.^(i+j-2));
    end
    B(i)= sum((x.^(i-1)).*y);
end

coeffs= A\B;


end