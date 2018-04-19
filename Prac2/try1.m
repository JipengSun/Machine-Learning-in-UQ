hold off
x = [0:0.1:5];
y = 2*sin(1.5*x);
y1 = [];
valid = [];
%plot (x,y);
sigma = 1;
del1 = [];
hold on
x1 = [0.25:0.25:5];
for i =[0.25:0.25:5]
    yi = 2*sin(1.5*i)+normrnd(0,sigma);
   % scatter(i,yi);
    y1 = [y1,yi];
    y2 = normrnd(0,sigma);
    valid = [valid,y2];
end
for j = [1:9]
    [p,sp] = polyfit(x1,y1,j);
    [yp,delta] = polyval(p,rand(),sp);
    %plot(x1,yp);
    del1 = [del1,delta];
end
plot([1:9],del1)
