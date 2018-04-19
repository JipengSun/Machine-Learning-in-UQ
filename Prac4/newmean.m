function [ shift ] = newmean( center, data, lamda )
set = [];
for i = 1:length(data)
    if lamda > edist(center,data(i,:))
        set = [set;data(i,:)];
    end
end
shift = mean(set);
end

