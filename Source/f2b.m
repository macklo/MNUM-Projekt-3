function [ w ] = f2b( x )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    w = 0;
    a = [-12 5.4 12];
    for i = 1:3
        w = w + a(i)*x^(i-1);
    end

end

