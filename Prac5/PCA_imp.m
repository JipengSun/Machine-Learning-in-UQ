function [ project, percentage ] = PCA_imp( data, dim )
%Implement PCA by myself
%   Return the projection of the desired dim and the percentage of the
%   desired eigenvalues.
covx = cov(data);
[vector,value] = eig(covx);
pv = vector(:,[(length(vector)-dim+1):length(vector)]);
pl = diag(value);
%value
c = sum(pl);
d = sum(pl([(length(vector)-dim+1):length(vector)],:));
percentage = d/c;
project = data*pv;
end

