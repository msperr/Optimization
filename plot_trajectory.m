function plot_trajectory(n)

%% Initializations
load testData.mat;
TA       = 0.007;
n_sim    = size(cmd_crd_pt,1);
t_vec    = (1:n_sim)' * TA;

cmd_hst = cmd_hst_pt(1:n_sim,n);
cmd_crd = cmd_crd_pt(1:n_sim,n);
u_hst = u_hst_1(1:n_sim,n);
u_crd = u_crd_1(1:n_sim,n);
y_hst = y_hst_1(1:n_sim,n);
y_crd = y_crd_1(1:n_sim,n);

%% Plots
figure
plot(t_vec,u_hst);
hold on
plot(t_vec,u_crd);
title('Torques')
xlabel('sec')
legend('Hoist','Crowd')
grid on

figure
plot(t_vec,y_hst);
hold on
plot(t_vec,y_crd);
title('Position')
xlabel('sec')
legend('Hoist','Crowd')
grid on

figure
plot(t_vec,cmd_hst);
hold on
plot(t_vec,cmd_crd);
title('Joystick cmd')
xlabel('sec')
legend('Hoist','Crowd')
grid on
