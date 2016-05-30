function f = myObjective_1 (hoist_inertia_yy)

%% Initializations
filename        = 'mining_dynamics';
section_name    = {'[Section: Hoist_Properties]',}; 
parameter_name  = {'inertia_yy'};

load data.mat

%% Optimization Variables
des_values = hoist_inertia_yy;
modify_SOA_parameters(filename, section_name, parameter_name,des_values)

%% Penalty Factors
p_u_hst = 1/norm(u_hst_1,1);
p_u_crd = 1/norm(u_hst_1,1);
p_y_hst = 1/norm(u_hst_1,1);
p_y_crd = 1/norm(u_hst_1,1);

%% Evaluate Blackbox
[u_hst, u_crd, y_hst, y_crd] = myEvaluation(cmd_hst_pt, cmd_crd_pt);

%% Objective
f_u_hst = norm(u_hst - u_hst_1,1);
f_u_crd = norm(u_crd - u_crd_1,1);
f_y_hst = norm(y_hst - y_hst_1,1);
f_y_crd = norm(y_crd - y_crd_1,1);

f = p_u_hst*f_u_hst + p_u_crd*f_u_crd + p_y_hst*f_y_hst + p_y_crd*f_y_crd;