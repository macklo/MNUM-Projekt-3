function [ xnn, iter ] = secant( a, b, eps, imax )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    iter = 0;
    if(f(a)*f(b)>0)
        error('Brak obszaru izolacji');
    end
    
    xnp = a;
    xn = b;
    xnn = (xnp*f(xn) - xn*f(xnp))/ (f(xn) - f(xnp));
    
    while(abs(f(xnn)) > eps)
        if(iter>=imax)
            error('osiagnieto imax');
        end
        xnp = xn;
        xn = xnn;
        xnn = (xnp*f(xn) - xn*f(xnp))/ (f(xn) - f(xnp));
        iter = iter+1;
    end
    
end

