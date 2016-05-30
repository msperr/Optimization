x = [15,3000000,1000,140000,3000000,0];
y = x(6);
a = -1000000;
b = 1000000;
c = (b-a)/1000;
d = a:c:b;
e = zeros(size(d));
for i = 1:length(d)
    e(i) = myObjective(100,x(2),x(3),x(4),x(5),d(i));
end
plot(d,e)