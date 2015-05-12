function [ w, iter ] = bisection(a,b,eps,imax)
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    iter = 0;
    if(f(a)*f(b)>0)
        error('Brak obszaru izolacji');
    end
    c = (a+b)/2;
    while(abs(f(c))>eps)
        if(iter>=imax)
            error('osiagnieto imax');
        end
        
        if(f(c) * f(a)<0)
            b = c;
        else
            a = c;
        end
        c = (a+b)/2;
        iter = iter+1;
     end
    w = c;
end

