function D = deviation_trajectory(x)

%% Initializations
filename       = 'mining_dynamics';
section_name   = {'[Section: Hoist_Properties]','[Section: Hoist_Properties]','[Section: Hoist_Properties]','[Section: Crowd_Properties]','[Section: Crowd_Properties]'}; 
parameter_name = {'inertia_engine','inertia_yy','friction','mass','inertia_yy'};

%% Data
load testData.mat
% provides as input: cmd_hst_pt, cmd_crd_pt
% provides as output: u_hst_1, u_crd_1, y_hst_1, y_crd_1
n_sim = size(cmd_hst_pt,1);
n_tra = size(cmd_hst_pt,2);

%% Variables
des_values = [x(1),x(2),x(3),x(4),x(2)];
modify_SOA_parameters(filename, section_name, parameter_name,des_values)

%% Evaluate Blackbox
[u_hst, u_crd, y_hst, y_crd] = evaluation(cmd_hst_pt, cmd_crd_pt);

%% Normalization Factors
p_u_hst = sum(abs(u_hst_1));
p_u_crd = sum(abs(u_crd_1));
p_y_hst = sum(abs(y_hst_1));
p_y_crd = sum(abs(y_crd_1));

%% Results
D(1,1:n_tra) = n_sim*max(abs(u_hst - u_hst_1))./p_u_hst;
D(2,1:n_tra) = n_sim*max(abs(u_crd - u_crd_1))./p_u_crd;
D(3,1:n_tra) = n_sim*max(abs(y_hst - y_hst_1))./p_y_hst;
D(4,1:n_tra) = n_sim*max(abs(y_crd - y_crd_1))./p_y_crd;