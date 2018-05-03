sweep = [10,50:50:300];                 % parameter values to test
scores = zeros(length(sweep), 1);       % pre-allocation
models = cell(length(sweep), 1);        % pre-allocation
x = mnistInputs;                             % inputs
t = mnistTargets;                             % targets
trainFcn = 'trainscg';                  % scaled conjugate gradient
%for i = 1:length(sweep)
%for i = 1:9
    %hiddenLayerSize = sweep(i);
    hiddenLayerSize = 250;        % number of hidden layer neurons
    net = patternnet(hiddenLayerSize,trainFcn);% cvvfcx pattern recognition network
    net.layers{1}.transferFcn = 'tansig';
    %net.performFcn = 'mse';
    net.trainParam.mc = 0.9;
    net.performParam.regularization = 0.5;
    net.divideParam.trainRatio = 70/100;% 70% of data for training
    net.divideParam.valRatio = 15/100;  % 15% of data for validation
    net.divideParam.testRatio = 15/100; % 15% of data for testing
    net = train(net, x, t);             % train the network
    %models{i} = net;                    % store the trained network
    p = net(testinput);                     % predictions
    [~, p] = max(p);                    % predicted labels
    %scores(i) = sum(test_labels == p') /length(test_labels);    % categorization accuracy
%end       
%end