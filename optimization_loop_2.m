%% Initializations
create_data;
initpop   = repmat(mean,swarmsize,1) + randn(swarmsize,4)*diag(dev);
x0        = initpop(1,1:4);

%% Particle Swarm (with torques)
tic;
options                          = optimoptions('particleswarm','InitialSwarmMatrix',initpop,'FunctionTolerance',tol,'MaxTime',maxtime);
[x_a,fval_a,exitflag_a,output_a] = particleswarm(f_1,var,lb,ub,options);
funccount_a                      = output_a.funccount;
sol_dev_a                        = abs(x_a - mean_init)./mean_init;
t_a                              = toc;

%% Particle Swarm (without torques)
tic;
options                          = optimoptions('particleswarm','InitialSwarmMatrix',initpop,'FunctionTolerance',tol,'MaxTime',maxtime);
[x_b,fval_b,exitflag_b,output_b] = particleswarm(f_2,var,lb,ub,options);
funccount_b                      = output_b.funccount;
sol_dev_b                        = abs(x_b - mean_init)./mean_init;
t_b                              = toc;

%% Pattern Search
tic;
options                          = optimoptions('patternsearch','FunctionTolerance',tol,'MaxIterations',Inf,'MaxTime',maxtime);
[x_c,fval_c,exitflag_c,output_c] = patternsearch(f_2,x0,[],[],[],[],lb,ub,[],options);
funccount_c                      = output_c.funccount;
sol_dev_c                        = abs(x_c - mean_init)./mean_init;
t_c                              = toc;

%% Save
time(count_opt,:)        = [t_a,t_b,t_c];
x(count_opt,:,:)         = [x_a;x_b;x_c];
fval(count_opt,:,:)      = [fval_a,fval_b,fval_c];
funccount(count_opt,:,:) = [funccount_a,funccount_b,funccount_c];
sol_dev(count_opt,:,:)   = [sol_dev_a;sol_dev_b;sol_dev_c];