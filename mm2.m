function [ x, y ] = mm2( xn, imax )
    for i = 1:imax
        pier = sqrt((f2p(xn))^2 - 2* f2(xn)*f2b(xn));
        %zgodnie z teori¹ wybiermay pierwiastek o mniejszym module
        if(abs(f2p(xn) + pier) > abs(f2p(xn) - pier))
            z = (-2*f2(xn))/ (f2p(xn) + pier);
        else
            z = (-2*f2(xn))/ (f2p(xn) - pier);
        end
        %obliczmy kolejne przybli¿enie miejsca zerowego
        xn = xn + z;
        x(i) = xn;
        y(i) = f2(xn);
    end
    x=x';
    y=y';
end

