function [ err ] = calculateerr( trainx,trainy,validx,validy,order)
sum = 0;
p = polyfit(trainx,trainy,order);
ye = polyval(p,validx);
for i = [1:length(validx)]
    a = ye(i)-validy(i);
    sum = sum + a * a;
end
err = sum/length(trainx);
end

