function [ x, y ] = secant( xnp, xn, imax )
    %sprawdzamy obszar izolacji
    if(f(xnp)*f(xn)>0)
        error('Brak obszaru izolacji');
    end
    for i = 1:imax+1
        %obliczamy wartość kolenego przybliżenie miejsca zerowego
        xnn = (xnp*f(xn) - xn*f(xnp))/ (f(xn) - f(xnp));
        x(i) = xnn;
        y(i) = f(xnn);
        %Przechodzimy do kolejnego przedziału
        xnp = xn;
        xn = xnn;
    end
    x = x';
    y = y';
end

