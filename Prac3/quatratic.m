function [ label ] = quatratic( x, prior0, m0, c0, prior1, m1, c1)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
p1 = mvnpdf(x,m1,c1);
p0 = mvnpdf(x,m0,c0);
post1 = p1 * prior1/(p1+p0);
post0 = p0 * prior0/(p1+p0);
if post1 > post0
    label = 1;
else
    label = 0;
end
end

