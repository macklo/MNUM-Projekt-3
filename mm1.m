function [ x3, iter ] = mm1( x0, x1, x2, eps, imax )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    iter = 0;
    while(abs(f2(x2))>eps)
        z0 = x0 - x2;
        z1 = x1 - x2;
        
        %e0 = f2(x0)-f2(x2);
        %e1 = f2(x1)-f2(x2);
        
        c = f2(x2);
        A = [z0^2 , z0; z1^2, z1];
        B = [f2(x0) - c; f2(x1) - c];
        [w] = linsolve(A,B);

        a = w(1,1);
        b = w(2,1);
        
        %det1 = z0*z1*(z0-z1);
        %a1  = (e0*z1 - z0*e1)/det1
        %b1  = (z0^2*e1 - z1^2*e0)/det1
        
        if(abs(b + sqrt(b^2 - 4*a*c)) >= abs(b - sqrt(b^2 - 4*a*c)))
            zmin = (-2*c)/(b + sqrt(b^2 - 4*a*c));
        else
            zmin = (-2*c)/(b - sqrt(b^2 - 4*a*c));
        end
        x3 = x2 + zmin;
        
        d0 = abs(x3-x0);
        d1 = abs(x3-x1);
        d2 = abs(x3-x2);
        
        if(d1 < d0)
            u = x1;
            x1 = x0;
            x0 = u;
        end
        if(d2<d1)
            u = x2;
            x2 = x1;
            x1 = u;
        end
        
        x2 = x3;
        if(iter>imax)
            error('osiagnieto imax')
        end
        iter = iter +1;

    end

end

