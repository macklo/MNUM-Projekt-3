function [ x, y ] = bisection(a,b,imax)
    %sprawdzamy obszar izolacji
    if(f(a)*f(b)>0)
        error('Brak obszaru izolacji');
    end
    for i = 1:imax
        %obszar jes dzielony na pó³
        c = (a+b)/2;
        %sprawdzamy warunki iloczynu i wybieramy kolejny przedzia³
        if(f(c) * f(a)<0)
            b = c;
        else
            a = c;
        end
        x(i) = c;
        y(i) = f(c);
    end
    x = x';
    y = y';
end

