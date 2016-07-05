%% Initializations
create_data;
initpop   = repmat(mean,swarmsize,1) + randn(swarmsize,4)*diag(dev);
x0        = initpop(1,1:4);

%% Particle Swarm
tic;
options                          = optimoptions('particleswarm','InitialSwarmMatrix',initpop,'FunctionTolerance',tol,'MaxTime',maxtime);
[x_a,fval_a,exitflag_a,output_a] = particleswarm(f,var,lb,ub,options);
funccount_a                      = output_a.funccount;
sol_dev_a                        = abs(x_a - mean_init)./mean_init;
t_a                              = toc;

%% Pattern Search
tic;
options                          = optimoptions('patternsearch','FunctionTolerance',tol,'MaxIterations',Inf,'MaxFunctionEvaluations',Inf,'MaxTime',maxtime);
[x_b,fval_b,exitflag_b,output_b] = patternsearch(f,x0,[],[],[],[],lb,ub,[],options);
funccount_b                      = output_b.funccount;
sol_dev_b                        = abs(x_b - mean_init)./mean_init;
t_b                              = toc;

%% Save
time(count_opt,:)        = [t_a,t_b];
x(count_opt,:,:)         = [x_a;x_b];
fval(count_opt,:,:)      = [fval_a,fval_b];
funccount(count_opt,:,:) = [funccount_a,funccount_b];
sol_dev(count_opt,:,:)   = [sol_dev_a;sol_dev_b];