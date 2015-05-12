function [ w ] = f2p( x )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
    w = 0;
    a = [3 -12 2.7 4];
    for i = 1:4
        w = w + a(i)*x^(i-1);
    end
end