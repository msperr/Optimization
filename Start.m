%% Initializations
clear;
f         = @(x)objective(x(1),x(2),x(3),x(4));
mean_init = [15,3000000,1000,140000];
lb        = [0,0,0,0];
ub        = [];
tol       = 1e-9;
maxtime   = 1800;
loops     = 5;
var       = 4;
solvers   = 4;

%% Case 1
disp('-------------------------------------------------------------'); 
disp('Case 1 - Swarmsize: 10, Mean Factor: 1, Deviation Factor: 50%');
swarmsize   = 10;
mean        = mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_1      = time;
x_1         = x;
fval_1      = fval;
funccount_1 = funccount;
sol_dev_1   = sol_dev;

save('optimization_results.mat','time_1','x_1','fval_1','funccount_1','sol_dev_1');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 2
disp('-------------------------------------------------------------');
disp ('Case 2 - Swarmsize: 10, Mean Factor: 1, Deviation Factor: 5%');
swarmsize   = 10;
mean        = mean_init;
dev         = 0.05*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_2      = time;
x_2         = x;
fval_2      = fval;
funccount_2 = funccount;
sol_dev_2   = sol_dev;

save('optimization_results.mat','time_2','x_2','fval_2','funccount_2','sol_dev_2','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 3
disp('-------------------------------------------------------------');
disp ('Case 3 - Swarmsize: 10, Mean Factor: 1, Deviation Factor: 0.5%');
swarmsize   = 10;
mean        = mean_init;
dev         = 0.005*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_3      = time;
x_3         = x;
fval_3      = fval;
funccount_3 = funccount;
sol_dev_3   = sol_dev;

save('optimization_results.mat','time_3','x_3','fval_3','funccount_3','sol_dev_3','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 4
disp('-------------------------------------------------------------');
disp ('Case 4 - Swarmsize: 10, Mean Factor: 0.1, Deviation Factor: 50%');
swarmsize   = 10;
mean        = 0.1*mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_4      = time;
x_4         = x;
fval_4      = fval;
funccount_4 = funccount;
sol_dev_4   = sol_dev;

save('optimization_results.mat','time_4','x_4','fval_4','funccount_4','sol_dev_4','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 5
disp('-------------------------------------------------------------');
disp ('Case 5 - Swarmsize: 10, Mean Factor: 10, Deviation Factor: 50%');
swarmsize   = 10;
mean        = 10*mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_5      = time;
x_5         = x;
fval_5      = fval;
funccount_5 = funccount;
sol_dev_5   = sol_dev;

save('optimization_results.mat','time_5','x_5','fval_5','funccount_5','sol_dev_5','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 6
disp ('Case 6 - Swarmsize: 40, Mean Factor: 1, Deviation Factor: 50%');
swarmsize   = 40;
mean        = mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_6      = time;
x_6         = x;
fval_6      = fval;
funccount_6 = funccount;
sol_dev_6   = sol_dev;

save('optimization_results.mat','time_6','x_6','fval_6','funccount_6','sol_dev_6','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 7
disp('-------------------------------------------------------------');
disp ('Case 7 - Swarmsize: 4, Mean Factor: 1, Deviation Factor: 50%');
swarmsize   = 4;
mean        = mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_7      = time;
x_7         = x;
fval_7      = fval;
funccount_7 = funccount;
sol_dev_7   = sol_dev;

save('optimization_results.mat','time_7','x_7','fval_7','funccount_7','sol_dev_7','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');

%% Initializations
f         = @(x)objective_mod(0,0,[],[],x(1),x(2),x(3),x(4));

%% Case 8
disp('-------------------------------------------------------------'); 
disp('Case 8 - Swarmsize: 10, Mean Factor: 1, Deviation Factor: 50%, Torques off');
swarmsize   = 10;
mean        = mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_8      = time;
x_8         = x;
fval_8      = fval;
funccount_8 = funccount;
sol_dev_8   = sol_dev;

save('optimization_results.mat','time_8','x_8','fval_8','funccount_8','sol_dev_8','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 9
disp('-------------------------------------------------------------');
disp ('Case 9 - Swarmsize: 10, Mean Factor: 1, Deviation Factor: 5%, Torques off');
swarmsize   = 10;
mean        = mean_init;
dev         = 0.05*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_9      = time;
x_9         = x;
fval_9      = fval;
funccount_9 = funccount;
sol_dev_9   = sol_dev;

save('optimization_results.mat','time_9','x_9','fval_9','funccount_9','sol_dev_9','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 10
disp('-------------------------------------------------------------');
disp ('Case 10 - Swarmsize: 10, Mean Factor: 1, Deviation Factor: 0.5%, Torques off');
swarmsize   = 10;
mean        = mean_init;
dev         = 0.005*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_10      = time;
x_10         = x;
fval_10      = fval;
funccount_10 = funccount;
sol_dev_10   = sol_dev;

save('optimization_results.mat','time_10','x_10','fval_10','funccount_10','sol_dev_10','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 11
disp('-------------------------------------------------------------');
disp ('Case 11 - Swarmsize: 10, Mean Factor: 0.1, Deviation Factor: 50%, Torques off');
swarmsize   = 10;
mean        = 0.1*mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_11      = time;
x_11         = x;
fval_11      = fval;
funccount_11 = funccount;
sol_dev_11   = sol_dev;

save('optimization_results.mat','time_11','x_11','fval_11','funccount_11','sol_dev_11','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 12
disp('-------------------------------------------------------------');
disp ('Case 12 - Swarmsize: 10, Mean Factor: 10, Deviation Factor: 50%, Torques off');
swarmsize   = 10;
mean        = 10*mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_12      = time;
x_12         = x;
fval_12      = fval;
funccount_12 = funccount;
sol_dev_12   = sol_dev;

save('optimization_results.mat','time_12','x_12','fval_12','funccount_12','sol_dev_12','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 13
disp ('Case 13 - Swarmsize: 40, Mean Factor: 1, Deviation Factor: 50%, Torques off');
swarmsize   = 40;
mean        = mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_13      = time;
x_13         = x;
fval_13      = fval;
funccount_13 = funccount;
sol_dev_13   = sol_dev;

save('optimization_results.mat','time_13','x_13','fval_13','funccount_13','sol_dev_13','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');
disp(' ');

%% Case 14
disp('-------------------------------------------------------------');
disp ('Case 14 - Swarmsize: 4, Mean Factor: 1, Deviation Factor: 50%, Torques off');
swarmsize   = 4;
mean        = mean_init;
dev         = 0.5*mean;

time      = zeros(loops,solvers);
x         = zeros(loops,solvers,var);
fval      = zeros(loops,solvers);
funccount = zeros(loops,solvers);
sol_dev   = zeros(loops,solvers,var);

for count_opt=1:loops
    disp(['Loop ',num2str(count_opt)]);
    optimization_loop;
end

time_14      = time;
x_14         = x;
fval_14      = fval;
funccount_14 = funccount;
sol_dev_14   = sol_dev;

save('optimization_results.mat','time_14','x_14','fval_14','funccount_14','sol_dev_14','-append');
disp('Saving successful');
disp('-------------------------------------------------------------');