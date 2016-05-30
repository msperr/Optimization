function [u_hst, u_crd, y_hst, y_crd] = myEvaluation(cmd_hst_pt, cmd_crd_pt)

%% Initializations
path2folder     = 'C:\Users\Martin\Documents\GitHub\Blackbox';
% states of the control system
states_sibas        = zeros(12,1);
% initial postions of the system [swing angle, hoist angle, crwod extension]
positions_q         = [0;0;5];
% corresponding speeds
speeds_q            = zeros(3,1);
% tilt angle
tilt_fr             = 0.0; %front to rear
tilt_rl             = 0.0; %right to left

% command vector (same length, values between -100 and 100, swing = 0)
cmd_swg_pt          = 0*cmd_crd_pt;

% number of simulation points
n_sim               = size(cmd_crd_pt,1);
% brakes
brakes_rel_swg      = 0*ones(n_sim,1); % block the swing angle motion
brakes_rel_hst      = ones(n_sim,1);
brakes_rel_crd      = ones(n_sim,1);

%% Execution
[u_swg, u_hst, u_crd, y_swg, y_hst, y_crd] = sim_all_trajectory_4_tum(states_sibas, 1,1, positions_q, speeds_q, cmd_swg_pt, cmd_hst_pt, cmd_crd_pt, tilt_fr, tilt_rl,brakes_rel_swg, brakes_rel_hst, brakes_rel_crd, path2folder);