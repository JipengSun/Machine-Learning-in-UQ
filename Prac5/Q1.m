%load mnist_train;
c = cov(train_X);
[V,D] = eig(c);
l = diag(D);
w = V(:,[783,784]);
a = train_X * w;

%color = rand(10,3);
bound = [];
for i = 2:length(train_labels)
    if train_labels(i) ~= train_labels(i-1)
        bound = [bound,i];
    end
end
bound = [1,bound];
bound = [bound,length(train_labels)];
hold on
    for j = 2:length(bound)
        plot(a([bound(j-1):bound(j)],1),a([bound(j-1):bound(j)],2),'.');
    end
title 'PCA on MNIST dataset'
xlabel('Projected First Dim')
ylabel('Projected Second Dim')
%for i = 1:length(index)
%    plot(d(index==i,1),d(index==i,2),'.','Markersize',12);
%end
