%% Initializations
create_data;
initpop   = repmat(mean,swarmsize,1) + randn(swarmsize,4)*diag(dev);
x0        = initpop(1,1:4);

%% Particle Swarm
tic;
options                              = optimoptions('particleswarm','InitialSwarmMatrix',initpop,'FunctionTolerance',tol,'MaxTime',maxtime);
[x_ps,fval_ps,exitflag_ps,output_ps] = particleswarm(f,var,lb,ub,options);
funccount_ps                         = output_ps.funccount;
sol_dev_ps                           = abs(x_ps - mean_init)./mean_init;
t_ps                                 = toc;

%% Pattern Search
tic;
options                              = optimoptions('patternsearch','FunctionTolerance',tol,'MaxIterations',Inf,'MaxTime',maxtime);
[x_p,fval_p,exitflag_p,output_p]     = patternsearch(f,x0,[],[],[],[],lb,ub,[],options);
funccount_p                          = output_p.funccount;
sol_dev_p                            = abs(x_p - mean_init)./mean_init;
t_p                                  = toc;

%% Genetic Algorithm
tic;
options                              = optimoptions('ga','InitialPopulationMatrix',initpop,'FunctionTolerance',tol,'MaxTime',maxtime);
[x_ga,fval_ga,exitflag_ga,output_ga] = ga(f,4,[],[],[],[],lb,ub,[],options);
funccount_ga                         = output_ga.funccount;
sol_dev_ga                           = abs(x_ga - mean_init)./mean_init;
t_ga                                 = toc;

%% Simulated Annealing
tic;
options                              = optimoptions('simulannealbnd','FunctionTolerance',tol,'MaxTime',maxtime);
[x_sa,fval_sa,exitflag_sa,output_sa] = simulannealbnd(f,x0,lb,ub,options);
funccount_sa                         = output_sa.funccount;
sol_dev_sa                           = abs(x_sa - mean_init)./mean_init;
t_sa                                 = toc;

%% Save
time(count_opt,:)        = [t_ps,t_p,t_ga,t_sa];
x(count_opt,:,:)         = [x_ps',x_p',x_ga',x_sa'];
fval(count_opt,:,:)      = [fval_ps,fval_p,fval_ga,fval_sa];
funccount(count_opt,:,:) = [funccount_ps,funccount_p,funccount_ga,funccount_sa];
sol_dev(count_opt,:,:)   = [sol_dev_ps',sol_dev_p',sol_dev_ga',sol_dev_sa'];