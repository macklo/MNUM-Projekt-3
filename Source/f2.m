function [ w ] = f2( x )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
    w = 0;
    a = [-1 3 -6 0.9 1];
    for i = 1:5
        w = w + a(i)*x^(i-1);
    end
end

