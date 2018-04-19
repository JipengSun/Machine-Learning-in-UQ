function [ ph ] = histestimate( x, xi )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
h = histogram(x,20,'Normalization','pdf');
V = h.Values;
B = h.BinEdges;
W = h.BinWidth;
if xi < B(1) | xi > B(21)
    ph = 0;
else
    ph = V(ceil((xi - B(1))/W));

end

