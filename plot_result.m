% Plots the trajectory for a parameter solution
function plot_result(solution)

%% Initializations
filename       = 'mining_dynamics';
section_name   = {'[Section: Hoist_Properties]','[Section: Hoist_Properties]','[Section: Hoist_Properties]','[Section: Crowd_Properties]','[Section: Crowd_Properties]','[Section: Crowd_Properties]'}; 
parameter_name = {'inertia_engine','inertia_yy','friction','mass','inertia_yy','cog_xx'};

load data.mat;
TA       = 0.007;
n_sim    = size(cmd_crd_pt,n);
t_vec    = (1:n_sim)' * TA;

%% Evaluation
modify_SOA_parameters(filename, section_name, parameter_name,solution);
[u_hst, u_crd, y_hst, y_crd] = evaluation(cmd_hst_pt, cmd_crd_pt);

%% Output Results
f_u_hst = norm(u_hst - u_hst_1,2)^2/norm(u_hst_1,2)^2
f_u_crd = norm(u_crd - u_crd_1,2)^2/norm(u_crd_1,2)^2
f_y_hst = norm(y_hst - y_hst_1,2)^2/norm(y_hst_1,2)^2
f_y_crd = norm(y_crd - y_crd_1,2)^2/norm(y_crd_1,2)^2

%% Plots
figure
plot(t_vec,u_hst);
hold on
plot(t_vec,u_hst_1);
title('Hoist Torques')
xlabel('sec')
legend('Result','Original')
grid on

figure
plot(t_vec,u_crd);
hold on
plot(t_vec,u_crd_1);
title('Crowd Torques')
xlabel('sec')
legend('Result','Original')
grid on

figure
plot(t_vec,y_hst);
hold on
plot(t_vec,y_hst_1);
title('Hoist Position')
xlabel('sec')
legend('Result','Original')
grid on

figure
plot(t_vec,y_crd);
hold on
plot(t_vec,y_crd_1);
title('Crowd Position')
xlabel('sec')
legend('Result','Original')
grid on
