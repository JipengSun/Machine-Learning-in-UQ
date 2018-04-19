function [nowT] = meanshift( S, lamda )
hold on
T = S;
newT = T;
nowT = T;
old = T+1;
while sum(old ~= newT)~=[0,0]
    for i = 1:length(nowT)
        newT(i,:) = newmean(nowT(i,:),nowT,lamda);
    end
    old = nowT;
    nowT = newT;
end
plot(nowT(:,1),nowT(:,2),'kx','LineWidth',3,'Markersize',15)
end

