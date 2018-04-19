function [ number, index ] = unique1( d )
[B,I] = sort(d);
B;
val = B(1);
for i = 2:length(B)
    if B(i) ~= B(i-1)
        val = [val,B(i)];
    end
end
val
number = length(val);
c = 1:number;
val1 = [];
val1 = [val;c];
index = [];
for i = 1:length(d)
    for j = 1:length(val1(1,:))
        if val(1,j)==d(i)
           index(i) = val1(2,j);
        end
    end
end
end

