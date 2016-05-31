tic;
n = 50;
f = @(x)myObjective(x(1),x(2),x(3),x(4),x(5),x(6));
mean = [10,2000000,2000,200000,2000000,0];
dev = [10,2000000,2000,200000,2000000,100];
initpop = repmat(mean,n,1) + randn(n,6)*diag(dev);
opts = optimoptions('particleswarm','InitialSwarmMatrix',initpop);
lb = [0,0,0,0,0,-Inf];
ub = [];
[xps,fps,flps,ops] = particleswarm(f,6,lb,ub,opts)
x_mod = xps*diag([1,1/100000,1/100,1/10000,1/100000,1/100])
toc

tic;
[xps_2,fps_2,flps_2,ops_2] = particleswarm(f,6)
x_mod = xps_2*diag([1,1/100000,1/100,1/10000,1/100000,1/100])
toc