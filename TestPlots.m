var = 2;
x = [15,3000000,1000,140000,3000000,0];
y = x(var);
d = y/2:y/1000:3*y/2;
f = zeros(size(d));
for i = 1:length(d)
    f(i) = myObjective(x(1),d(i),x(3),x(4),x(2)+x(5)-d(i),x(6));
end
plot(d,f)