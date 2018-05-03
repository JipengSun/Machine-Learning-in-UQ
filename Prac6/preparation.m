load('mnist_train.mat');
%idx = unidrnd(60000,6000,1);
%x = train_X(idx,:);
load('mnist_test.mat');
labels = [];
testlabels = [];
for i = 1:10
    labels = [labels, train_labels == i];
    testlabels = [testlabels, test_labels == i];
end
mnistTargets = labels';
mnistInputs = train_X';
testlabels = testlabels';
testinput = test_X';