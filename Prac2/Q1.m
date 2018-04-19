clear
clc
hold off
sigma = 2;
datax = [0.125:0.125:5];
a = randperm(40,40);
trainx = datax(a(1:20));
validx = datax(a(21:40));
trainy = 2*sin(1.5*trainx)+normrnd(0,sigma,[1,20]);
validy = 2*sin(1.5*validx)+normrnd(0,sigma,[1,20]);
%scatter(trainx,trainy)
x = [];
tey = [];
vey = [];
for i = 1:9
    x = [x,i];
    tey = [tey,calculateerr(trainx,trainy,trainx,trainy,i)];
    vey = [vey,calculateerr(trainx,trainy,validx,validy,i)];
end
plot (x,tey)
hold on
plot (x,vey,'--')
xlabel('Polynomial Order')
ylabel('Error')
title('Error vs. Polynomial Order with Bias Sigma = 2')
legend('Train Error','Valid Error')