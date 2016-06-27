%% Initializations
clear;
f_1       = @(x)objective(x(1),x(2),x(3),x(4));
f_2       = @(x)objective_mod(0,0,[],[],x(1),x(2),x(3),x(4));
mean_init = [15,3000000,1000,140000];
lb        = [0,0,0,0];
ub        = [];
tol       = 1e-9;
maxtime   = 1800;
swarmsize = 10;
loops     = 10;
var       = 4;
solvers   = 3;

%% Case 1
disp('-------------------------------------------------------------'); 
disp('Case 1 - Mean Factor: 1, Deviation Factor: 50%');
mean        = mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_2;
end

time_1      = time;
x_1         = x;
fval_1      = fval;
funccount_1 = funccount;
sol_dev_1   = sol_dev;

save('optimization_results_2.mat','time_1','x_1','fval_1','funccount_1','sol_dev_1');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 2
disp('-------------------------------------------------------------');
disp ('Case 2 - Mean Factor: 1, Deviation Factor: 5%');
mean        = mean_init;
dev         = 0.05*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_2;
end

time_2      = time;
x_2         = x;
fval_2      = fval;
funccount_2 = funccount;
sol_dev_2   = sol_dev;

save('optimization_results_2.mat','time_2','x_2','fval_2','funccount_2','sol_dev_2','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 3
disp('-------------------------------------------------------------');
disp ('Case 3 - Mean Factor: 1, Deviation Factor: 0.5%');
mean        = mean_init;
dev         = 0.005*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_2;
end

time_3      = time;
x_3         = x;
fval_3      = fval;
funccount_3 = funccount;
sol_dev_3   = sol_dev;

save('optimization_results_2.mat','time_3','x_3','fval_3','funccount_3','sol_dev_3','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 4
disp('-------------------------------------------------------------');
disp ('Case 4 - Mean Factor: 0.1, Deviation Factor: 50%');
mean        = 0.1*mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_2;
end

time_4      = time;
x_4         = x;
fval_4      = fval;
funccount_4 = funccount;
sol_dev_4   = sol_dev;

save('optimization_results_2.mat','time_4','x_4','fval_4','funccount_4','sol_dev_4','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 5
disp('-------------------------------------------------------------');
disp ('Case 5 - Mean Factor: 10, Deviation Factor: 50%');
mean        = 10*mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_2;
end

time_5      = time;
x_5         = x;
fval_5      = fval;
funccount_5 = funccount;
sol_dev_5   = sol_dev;

save('optimization_results_2.mat','time_5','x_5','fval_5','funccount_5','sol_dev_5','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');