function [ xn, iter ] = newton( a, eps, imax )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    iter = 0;
    xn = a;
    while(abs(f2(xn))>eps)
        xn = xn - (f2(xn))/(f2p(xn));
        if(iter>imax)
            error('osiagnieto imax')
        end
        iter = iter +1;
    end

end

