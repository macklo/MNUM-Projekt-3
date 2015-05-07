function [ w, iter ] = secant( a, b, eps, imax )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    iter = 1;
    if(f(a)*f(b)>0)
        error('Brak obszaru izolacji');
    end
    xnp = a;
    xn = b;
    
end

