function [u_hst, u_crd, y_hst, y_crd] = evaluation(cmd_hst_pt, cmd_crd_pt)

%% Initializations
path2folder     = 'C:\Users\Martin\Documents\GitHub\Blackbox';
% number of trajectories
n_tra               = size(cmd_crd_pt,2);
% states of the control system
states_sibas        = zeros(12,1);
% initial postions of the system [swing angle, hoist angle, crwod extension]
positions_q         = [0;0;5];
% corresponding speeds
speeds_q            = zeros(3,1);
% tilt angle
tilt_fr             = 0.0; %front to rear
tilt_rl             = 0.0; %right to left

% number of simulation points
n_sim               = size(cmd_crd_pt,1);

% command vector (same length, values between -100 and 100, swing = 0)
cmd_swg_pt          = zeros(n_sim,1);

% brakes
brakes_rel_swg      = 0*ones(n_sim,1); % block the swing angle motion
brakes_rel_hst      = ones(n_sim,1);
brakes_rel_crd      = ones(n_sim,1);

u_hst = zeros(n_sim,n_tra);
u_crd = zeros(n_sim,n_tra);
y_hst = zeros(n_sim,n_tra);
y_crd = zeros(n_sim,n_tra);

%% Execution
for i = 1:n_tra
    cmd_hst = cmd_hst_pt(1:n_sim,i);
    cmd_crd = cmd_crd_pt(1:n_sim,i);
    [u_swg_1, u_hst_1, u_crd_1, y_swg_1, y_hst_1, y_crd_1] = sim_all_trajectory_4_tum(states_sibas, 1,1, positions_q, speeds_q, cmd_swg_pt, cmd_hst, cmd_crd, tilt_fr, tilt_rl,brakes_rel_swg, brakes_rel_hst, brakes_rel_crd, path2folder);
    u_hst(1:n_sim,i) = u_hst_1;
    u_crd(1:n_sim,i) = u_crd_1;
    y_hst(1:n_sim,i) = y_hst_1;
    y_crd(1:n_sim,i) = y_crd_1;
end