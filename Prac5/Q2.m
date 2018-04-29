percentage = (l(783)+l(784))/sum(l,2);
c = l(end:-1:1);
x = [1:784];
plot(x,c,'color','k','LineStyle','-','Marker','+','MarkerSize',5);
xlabel('Eigenvectors') % x-axis label
ylabel('Eigenvalues') % y-axis label
title('Scree graph for MNIST')