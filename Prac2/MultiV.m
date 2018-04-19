load fisheriris
%plotmatrix(meas)
data = [meas(:,1) meas(:,3)]
%figure
%plot(data(1:50,1),data(1:50,2),'k.')
hold on
plot(data(51:100,1),data(51:100,2),'.')
plot(data(101:150,1),data(101:150,2),'g.')
m1 = mean(data(101:150,:))
c1 = cov(data(101:150,:))
c1 = eye*diag(c1)'
[X1,X2] = meshgrid(linspace(0,8,50)',linspace(0,8,50)');
X = [X1(:) X2(:)];
p = mvnpdf(X,m1,c1)
figure
surf(X1,X2,reshape(p,50,50));
m2 = mean(data(51:100,:));
c2 = cov(data(51:100,:));
c2 = eye*diag(c2)';
hold on
p2 = mvnpdf(X,m2,c2);
surf(X1,X2,reshape(p2,50,50));