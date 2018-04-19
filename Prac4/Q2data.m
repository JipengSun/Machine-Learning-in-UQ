clc;
clear;
a = randn(200,2);
b = a+4;
c = a;
c(:,1) = 3*c(:,1);
c = c-4;
d = [a;b];
e = [a;b;c];
%plot(a(:,1),a(:,2),'+');
hold all
%plot(b(:,1),b(:,2),'o');
%plot(c(:,1),c(:,2),'*');
nowT = meanshift(d,1);
%[ number, index1 ] = unique1(nowT(:,1));
cen = unique(nowT,'rows');
index = mindist(cen,d);
for i = 1:length(index)
    plot(d(index==i,1),d(index==i,2),'.','Markersize',12);
end
title 'Mean Shift in Dataset d with lamda = 1'