%% Initializations
clear;
f         = @(x)objective_mod(0,0,[],[],x(1),x(2),x(3),x(4));
mean_init = [15,3000000,1000,140000];
mean      = mean_init;
dev       = 0.05*mean;
lb        = [0,0,0,0];
ub        = [];
maxtime   = 3600;
swarmsize = 10;
loops     = 5;
var       = 4;
solvers   = 2;

%% Case 1
disp('-------------------------------------------------------------'); 
disp('Case 1 - Tol: 1e-6');
tol       = 1e-6;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_3;
end

time_1      = time;
x_1         = x;
fval_1      = fval;
funccount_1 = funccount;
sol_dev_1   = sol_dev;

save('optimization_results_3.mat','time_1','x_1','fval_1','funccount_1','sol_dev_1');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 2
disp('-------------------------------------------------------------');
disp ('Case 2 - Tol: 1e-9');
tol       = 1e-9;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_3;
end

time_2      = time;
x_2         = x;
fval_2      = fval;
funccount_2 = funccount;
sol_dev_2   = sol_dev;

save('optimization_results_3.mat','time_2','x_2','fval_2','funccount_2','sol_dev_2','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 3
disp('-------------------------------------------------------------');
disp ('Case 3 - Tol: e-12');
tol       = 1e-12;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_3;
end

time_3      = time;
x_3         = x;
fval_3      = fval;
funccount_3 = funccount;
sol_dev_3   = sol_dev;

save('optimization_results_3.mat','time_3','x_3','fval_3','funccount_3','sol_dev_3','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 4
disp('-------------------------------------------------------------');
disp ('Case 4 - Tol: e-15');
tol       = 1e-15;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_3;
end

time_4      = time;
x_4         = x;
fval_4      = fval;
funccount_4 = funccount;
sol_dev_4   = sol_dev;

save('optimization_results_3.mat','time_4','x_4','fval_4','funccount_4','sol_dev_4','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 5
disp('-------------------------------------------------------------');
disp ('Case 5 - Tol: e-18');
tol       = 1e-18;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_3;
end

time_5      = time;
x_5         = x;
fval_5      = fval;
funccount_5 = funccount;
sol_dev_5   = sol_dev;

save('optimization_results_3.mat','time_5','x_5','fval_5','funccount_5','sol_dev_5','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 6
disp('-------------------------------------------------------------');
disp ('Case 6 - Tol: e-21');
tol       = 1e-21;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_3;
end

time_6      = time;
x_6         = x;
fval_6      = fval;
funccount_6 = funccount;
sol_dev_6   = sol_dev;

save('optimization_results_3.mat','time_6','x_6','fval_6','funccount_6','sol_dev_6','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 7
disp('-------------------------------------------------------------');
disp ('Case 7 - Tol: e-24');
tol       = 1e-24;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_3;
end

time_7      = time;
x_7         = x;
fval_7      = fval;
funccount_7 = funccount;
sol_dev_7   = sol_dev;

save('optimization_results_3.mat','time_7','x_7','fval_7','funccount_7','sol_dev_7','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 8
disp('-------------------------------------------------------------');
disp ('Case 8 - Tol: e-27');
tol       = 1e-27;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop_3;
end

time_8      = time;
x_8         = x;
fval_8      = fval;
funccount_8 = funccount;
sol_dev_8   = sol_dev;

save('optimization_results_3.mat','time_8','x_8','fval_8','funccount_8','sol_dev_8','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');