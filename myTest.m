% make clean
clear
close all

%% Initializations 

% command vector (same length, values between -100 and 100, swing = 0)
cmd_hst_pt          = [-100*ones(300,1);zeros(400,1);100*ones(200,1);zeros(600,1)];
cmd_crd_pt          = [zeros(400,1);100*ones(300,1);0*ones(300,1);zeros(500,1)];

[u_swg, u_hst, u_crd, y_swg, y_hst, y_crd] = sim_all_trajectory_4_tum(states_sibas, 1,1, positions_q, speeds_q, cmd_swg_pt, cmd_hst_pt, cmd_crd_pt, tilt_fr, tilt_rl,brakes_rel_swg, brakes_rel_hst, brakes_rel_crd, path2folder);