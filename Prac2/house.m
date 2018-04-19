housing = importdata('housing.data');
x = housing(:,6);
y = housing(:,14);
err = []
err1 = []
figure(1)
for i = 1:5
    a = calculateerr(x,y,x,y,i)
    err1 = [err1,a]
end
plot([1:5],err1)
x1 = x(1:253);
x2 = x(254:506);
y1 = y(1:253);
y2 = y(254:506);
for i = 1:5
    a = calculateerr(x1,y1,x2,y2,i)
    err = [err,a]
end
figure(2)
plot([1:5],err);


