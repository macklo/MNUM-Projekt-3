function [ x, iter ] = mm2( x, eps, imax )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    iter = 0;
    while(abs(f2(x))>eps)
        if(iter>=imax)
            break;
        end
        
        pier = sqrt((f2p(x))^2 - 2* f2(x)*f2b(x));
        if(abs(f2p(x) + pier) > abs(f2p(x) - pier))
            z = (-2*f2(x))/ (f2p(x) + pier);
        else
            z = (-2*f2(x))/ (f2p(x) - pier);
        end
        x = x + z;
        iter = iter+1;
    end

end

