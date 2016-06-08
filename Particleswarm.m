n = 10;
f = @(x)objective(x(1),x(2),x(3),x(4));
mean = [15,3000000,1000,140000];
dev = [5,1000000,300,50000];
initpop_ps = repmat(mean,n,1) + randn(n,4)*diag(dev);
opts = optimoptions('particleswarm','InitialSwarmMatrix',initpop_ps);
lb = [0,0,0,0];
ub = [];

tic;
disp('Particleswarm')
[x_ps,fval_ps,exitflag_ps,output_ps] = particleswarm(f,4,lb,ub,opts)
toc

%tic;
%[x_ps2,fval_ps2,exiflag_ps2,output_ps2] = particleswarm(f,4)
%toc