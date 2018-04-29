plot([1:10:300],error)
plot([1:10:300],error,'color','k','LineStyle','-','Marker','+','MarkerSize',5);
xlabel('Iterations') % x-axis label
ylabel('Error') % y-axis label
title('Error plot in each iteration up to 300 iterations in steps of 10')