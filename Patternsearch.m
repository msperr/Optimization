tic;
%f = @(x)myObjective(x(1),100000*x(2),100*x(3),10000*x(4),100000*x(5),x(6));
f = @(x)myObjective(x(1),x(2),x(3),x(4),x(5),x(6));
%x0 = [10,35,8,15,25,0];
x0 = [10,2000000,2000,200000,2000000,0];
[xp,fp,flp,op] = patternsearch(f,x0)
x_mod = xp*diag([1,1/100000,1/100,1/10000,1/100000,1/100])
toc

Particleswarm
GA