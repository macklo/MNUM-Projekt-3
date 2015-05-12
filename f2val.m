function [ w ] = f2val(a,b,inter )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    iter = 1;
    %w = zeros(a-b,1);
    for i = a:inter:b
        w(iter,1) = f2(i);
        iter = iter + 1;
    end
end

