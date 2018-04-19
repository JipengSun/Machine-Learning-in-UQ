function [ label ] = mindist( cen, data )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
label = [];
for i = 1:length(data)
    dist = [];
    min = inf;
    for j = 1:length(cen)
        dis = edist(cen(j),data(i));
        if dis<min
            min = dis;
            inx = j;
        end
    end
    label = [label,inx];
end

end

