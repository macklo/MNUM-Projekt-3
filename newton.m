function [ x, y ] = newton( xn, imax )
    for i = 1:imax
        %obliczamy kolejne przybli¿enie miejsca zerowego
        xn = xn - (f2(xn))/(f2p(xn));
        x(i) = xn;
        y(i) = f2(xn);
    end
    x=x';
    y=y';
end

