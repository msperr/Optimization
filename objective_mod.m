function f = objective_mod (p_u_hst, p_u_crd, p_y_hst, p_y_crd, hoist_inertia_engine, inertia_yy, hoist_friction, crowd_mass)

%% Initializations
filename       = 'mining_dynamics';
section_name   = {'[Section: Hoist_Properties]','[Section: Hoist_Properties]','[Section: Hoist_Properties]','[Section: Crowd_Properties]','[Section: Crowd_Properties]'}; 
parameter_name = {'inertia_engine','inertia_yy','friction','mass','inertia_yy'};

%% Data
load testData.mat
% provides as input: cmd_hst_pt, cmd_crd_pt
% provides as output: u_hst_1, u_crd_1, y_hst_1, y_crd_1
n_tra = size(cmd_hst_pt,2);

%% Optimization Variables
des_values = [hoist_inertia_engine, inertia_yy, hoist_friction, crowd_mass, inertia_yy];
modify_SOA_parameters(filename, section_name, parameter_name,des_values)

%% Penalty Factors
if(isempty(p_u_hst))
    p_u_hst = 1/norm(u_hst_1,'fro')^2;
end
if(isempty(p_u_crd))
    p_u_crd = 1/norm(u_crd_1,'fro')^2;
end
if(isempty(p_y_hst))
    p_y_hst = 1/norm(y_hst_1,'fro')^2;
end
if(isempty(p_y_crd))
    p_y_crd = 1/norm(y_crd_1,'fro')^2;
end

%% Evaluate Blackbox
[u_hst, u_crd, y_hst, y_crd] = evaluation(cmd_hst_pt, cmd_crd_pt);

%% Objective
f_u_hst = norm(u_hst - u_hst_1,'fro')^2;
f_u_crd = norm(u_crd - u_crd_1,'fro')^2;
f_y_hst = norm(y_hst - y_hst_1,'fro')^2;
f_y_crd = norm(y_crd - y_crd_1,'fro')^2;

f = 1/n_tra*(p_u_hst*f_u_hst + p_u_crd*f_u_crd + p_y_hst*f_y_hst + p_y_crd*f_y_crd);