function[yp] = linear_interpol(x,y,xp) 

    for i =1:1:(length(x)-1) 
        if (xp  > x(i)) && (xp<x(i+1)) 
            yp = ((xp -x(i+1))*y(i)/(x(i)-x(i+1))) + ((xp - x(i))*y(i+1)/(x(i+1)-x(i))); 
        end 
    end 
end