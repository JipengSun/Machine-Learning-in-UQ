clc;
clear;
load('heightWeight.mat');
%weight = heightWeightData(:,2);
%height = heightWeightData(:,3);
%plot (weight,height,'.')
X = heightWeightData(:,[2,3])
[idx,C] = kmeans(X,2);
plot(X(idx==1,1),X(idx==1,2),'r.','Markersize',12);
hold on
plot(X(idx==2,1),X(idx==2,2),'b.','Markersize',12);
plot(C(:,1),C(:,2),'kx',...
     'MarkerSize',15,'LineWidth',3)
legend('Cluster 1','Cluster 2','Centroids',...
       'Location','NW')
title 'Cluster Assignments and Centroids'
hold off
