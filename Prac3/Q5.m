hold off
x = [randn(30,1);5+randn(30,1)];
h = histogram(x,20,'Normalization','pdf');
[f1,xi,bw1] = ksdensity(x);
[f2,xi] = ksdensity(x,xi,'width',bw1/2);
hold on
%plot(xi,f1);
%plot(xi,f2,'--');
V = h.Values;
B = h.BinEdges;
W = h.BinWidth;
ph = [];
for i  = 1:length(xi)
    ph = [ph, histestimate(x,xi(i))];
end
%plot(xi,ph)
md = 0.5*normpdf(xi,0,1)+ 0.5*normpdf(xi,5,1);
%plot (xi,md);
ph = ph+ ones(1,100)*eps;
KLMH1 = sum( md.*log(md./ph))
KLMK1 = sum( md.*log(md./f1))
KLMK2 = sum( md.*log(md./f2))
