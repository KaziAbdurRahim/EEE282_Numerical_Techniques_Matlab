function [coeffs]= poly_interpol2(x,y) 
sum = 0; 
n=length(x); 
for i = 1:1:n 
   num=1; 
   den=1; 
   
   for j=1:1:n 
       if i~=j 
           poly_num = poly(x(j)); 
           num=conv(num,poly_num); 
           den= den*(x(i)-x(j)); 
       end 
   end 
   divided=num/den; 
   mult = divided*y(i); 
   sum =sum+mult; 
   
end 
coeffs=sum; 
end