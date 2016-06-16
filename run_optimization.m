%% Initializations
clear;
f = @(x)objective(x(1),x(2),x(3),x(4));
swarmsize = 10;
dev_init = 0.5;
mean = [15,3000000,1000,140000];
dev = dev_init*mean;
initpop = repmat(mean,swarmsize,1) + randn(swarmsize,4)*diag(dev);
x0 = initpop(1,1:4);
lb = [0,0,0,0];
ub = [];
tol = 1e-9;
maxtime = 900;

%% Particle Swarm
tic;
disp('Particleswarm');
options = optimoptions('particleswarm','InitialSwarmMatrix',initpop,'FunctionTolerance',tol,'MaxTime',maxtime);
[x_ps,fval_ps,exitflag_ps,output_ps] = particleswarm(f,4,lb,ub,options);
disp(['f = ',num2str(fval_ps)]);
disp(['x = ',num2str(x_ps(1)),'   ',num2str(x_ps(2)),'   ',num2str(x_ps(3)),'   ',num2str(x_ps(4))]);
disp(['funccount = ',num2str(output_ps.funccount)]);
toc

%% Pattern Search
tic;
disp('Patternsearch');
options = optimoptions('patternsearch','FunctionTolerance',tol,'MaxIterations',Inf,'MaxTime',maxtime);
[x_p,fval_p,exitflag_p,output_p] = patternsearch(f,x0,[],[],[],[],lb,ub,[],options);
disp(['f = ',num2str(fval_p)]);
disp(['x = ',num2str(x_p(1)),'   ',num2str(x_p(2)),'   ',num2str(x_p(3)),'   ',num2str(x_p(4))]);
disp(['funccount = ',num2str(output_p.funccount)]);
toc

%% Genetic Algorithm
tic;
disp('Genetic Algorithm');
options = optimoptions('ga','InitialPopulationMatrix',initpop,'FunctionTolerance',tol,'MaxTime',maxtime);
[x_ga,fval_ga,exitflag_ga,output_ga] = ga(f,4,[],[],[],[],lb,ub,[],options);
disp(['f = ',num2str(fval_ga)]);
disp(['x = ',num2str(x_ga(1)),'   ',num2str(x_ga(2)),'   ',num2str(x_ga(3)),'   ',num2str(x_ga(4))]);
disp(['funccount = ',num2str(output_ga.funccount)]);
toc

%% Simulated Annealing
tic;
disp('Simulated Annealing');
options = optimoptions('simulannealbnd','FunctionTolerance',tol,'MaxTime',maxtime);
[x_sa,fval_sa,exitflag_sa,output_sa] = simulannealbnd(f,x0,lb,ub,options);
disp(['f = ',num2str(fval_sa)]);
disp(['x = ',num2str(x_sa(1)),'   ',num2str(x_sa(2)),'   ',num2str(x_sa(3)),'   ',num2str(x_sa(4))]);
disp(['funccount = ',num2str(output_sa.funccount)]);
toc