tic;
n = 50;
f = @(x)myObjective(x(1),x(2),x(3),x(4),x(5),x(6));
mean = [10,2000000,2000,200000,2000000,0];
dev = [10,2000000,2000,200000,2000000,100];
initpop = repmat(mean,n,1) + randn(n,6)*diag(dev);
opts = optimoptions('ga','InitialPopulationMatrix',initpop);
lb = [0,0,0,0,0,-Inf];
ub = [];
[xga,fga,flga,oga] = ga(f,6,[],[],[],[],lb,ub,[],opts)
x_mod = xga*diag([1,1/100000,1/100,1/10000,1/100000,1/100])
toc

tic;
[xga_2,fga_2,flga_2,oga_2] = ga(f,6)
x_mod = xga_2*diag([1,1/100000,1/100,1/10000,1/100000,1/100])
toc