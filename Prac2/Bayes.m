hold off
clc
clear
iris = importdata('iris.txt',',');
for i = 150:-1:1
    if iris(i,5) == 2;
        iris(i,:) = [];
    end
end
iris = iris(:,[1,5]);
iris0 = [];
iris1 = [];
for i = 1:length(iris)
    if iris(i,2) ==0
        iris0 = [iris0;iris(i,1)];
    else
        iris1 = [iris1;iris(i,1)];
    end
end
m0 = mean(iris0);
s0 = std(iris0);
m1 = mean(iris1);
s1 = std(iris1);
hold on
figure(1)
x = 3:0.01:9;
y0 = normpdf(x,m0,s0*s0);
y1 = normpdf(x,m1,s1*s1);
plot(x,y0)
plot(x,y1,'--')
grid on
title('Likelihoods')
ylabel('p(x|Ci)')
legend('Likelihoods of C1','Likelihoods of C2')
%hist(iris0,10)
%hist(iris1,10)
p0 = y0*(1/2)./(y0*(1/2)+y1*(1/2));
p1 = y1*(1/2)./(y0*(1/2)+y1*(1/2));
%g0 = -log(m0)-(x-m0).^2/2/(s0.^2);
%g1 = -log(m1)-(x-m1).^2/2/(s1.^2);
figure(2)
hold on
plot(x,p0)
plot(x,p1,'--')
title('Posteriors of Ci with equal priors')
ylabel('p(Ci|x)')
legend('Posteriors of C1','Posteriors of C2')
grid on



