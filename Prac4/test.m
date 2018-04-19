
S = [a;b];
lamda = 1;
T = S;
newT = T;
nowT = T;
old = T+1;
%while sum(old ~= newT)~=[0,0]
for j = 1:5
    for i = 1:length(nowT)
        newT(i,:) = newmean(nowT(i,:),nowT,lamda);
    end
    old = nowT;
    nowT = newT;
    figure;
    plot(nowT(:,1),nowT(:,2),'.','Markersize',12)
end