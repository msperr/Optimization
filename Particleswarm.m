n = 40;
f = @(x)objective(x(1),x(2),x(3),x(4));
mean = [10,2000000,2000,200000];
dev = [10,2000000,2000,200000];
initpop = repmat(mean,n,1) + randn(n,4)*diag(dev);
opts = optimoptions('particleswarm','InitialSwarmMatrix',initpop);
lb = [0,0,0,0];
ub = [];
tic;
[x_ps,fval_ps,exitflag_ps,output_ps] = particleswarm(f,4,lb,ub,opts);
toc

tic;
[x_ps2,fval_ps2,exiflag_ps2,output_ps2] = particleswarm(f,4)
toc