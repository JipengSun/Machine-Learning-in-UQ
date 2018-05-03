testtargets = sim(net,testinput);
[~,testtargets] = max(testtargets);
accuracy = sum(test_labels == testtargets') / length(test_labels)
%0.8253