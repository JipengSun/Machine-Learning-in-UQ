a = [1,2,3,4,5];
b = 2;
d = [];
m = mod(length(a),b);
if length(a)< b
    disp(a);
elseif mod(length(a),b)==0
    for i = fix(length(a)/b):-1:1
        d = [d,a((i-1)*b+1:i*b)];
    end
    disp(d)
else
    for i = fix(length(a)/b):-1:1
        d = [d,a((i-1)*b+1+m:i*b+m)];
    end
    d = [d,a(1:m)]
end