n = 101;
x = [15,3000000,1000,140000];
d = [linspace(5,25,n);linspace(2000000,4000000,n);linspace(0,2000,n);linspace(120000,160000,n)];
f = zeros(size(d));
for i = 1:n
    f(1,i) = objective(d(1,i),x(2),x(3),x(4));
    f(2,i) = objective(x(1),d(2,i),x(3),x(4));
    f(3,i) = objective(x(1),x(2),d(3,i),x(4));
    f(4,i) = objective(x(1),x(2),x(3),d(4,i));
end

figure
plot(d(1,1:n),f(1,1:n))
title('Inertia Engine')
grid on

figure
plot(d(2,1:n),f(2,1:n))
title('Inertia YY')
grid on

figure
plot(d(3,1:n),f(3,1:n))
title('Friction')
grid on

figure
plot(d(4,1:n),f(4,1:n))
title('Mass')
grid on