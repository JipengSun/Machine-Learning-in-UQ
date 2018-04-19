pos = [];
neg = [];
data = importdata('diabetes.csv');
trainset = data([1:500],:);
testset = data([501:768],:);
for i = 1:1:500
    if trainset(i,9) == 1
        pos = [pos;trainset(i,[1:8])];
    else
        neg = [neg;trainset(i,[1:8])];
    end
end
prior1 = length(pos)/length(trainset);
prior0 = length(neg)/length(trainset);
m1 = mean(pos);
m0 = mean(neg);
c1 = cov(pos);
c0 = cov(neg);

testerr = 0;
for j = 1:length(testset(:,[1:8]))
    if testset(j,9) ~= quatratic(testset(j,[1:8]),prior0, m0, c0, prior1, m1, c1)
        testerr = testerr+1;
    end
end
testerror = testerr/length(testset)

trainerr = 0;
for k = 1:length(trainset(:,[1:8]))
    if trainset(k,9) ~= quatratic(trainset(k,[1:8]),prior0, m0, c0, prior1, m1, c1)
        trainerr = trainerr+1;
    end
end
trainerror = trainerr/length(trainset)


        
