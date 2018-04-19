a = importdata('prac1_q4.dat')
x = a(:,1)
y = a(:,2)
x1 = a(:,3)
y1 = a(:,4)
scatter(x,y,'b','o')
hold on
scatter(x1,y1,'r','s'),xlabel('input'),ylabel('output')
hold off