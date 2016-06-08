n = 10;
f = @(x)objective(x(1),x(2),x(3),x(4));
mean = [15,3000000,1000,140000];
dev = [5,1000000,300,50000];
initpop_ga = repmat(mean,n,1) + randn(n,4)*diag(dev)
opts = optimoptions('ga','InitialPopulationMatrix',initpop_ga);
lb = [0,0,0,0];
ub = [];

tic;
[x_ga,fval_ga,exitflag_ga,output_ga] = ga(f,4,[],[],[],[],lb,ub,[],opts)
toc

tic;
[x_ga2,fval_ga2,exitflag_ga2,output_ga2] = ga(f,4)
toc