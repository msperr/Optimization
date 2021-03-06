% to have correct parameter values:
filename       = 'mining_dynamics';
section_name   = {'[Section: Hoist_Properties]','[Section: Hoist_Properties]','[Section: Hoist_Properties]','[Section: Crowd_Properties]','[Section: Crowd_Properties]','[Section: Crowd_Properties]'}; 
parameter_name = {'inertia_engine','inertia_yy','friction','mass','inertia_yy','cog_x'};
des_values     = [15,3000000,1000,140000,3000000,0];
modify_SOA_parameters(filename, section_name, parameter_name,des_values);

%% Initializations
n_tra = 22;
n_sim = 1000;
d1 = linspace(0,pi,n_sim);
d2 = linspace(0,2*pi,n_sim);
d3 = linspace(0,3*pi,n_sim);
d4 = linspace(0,4*pi,n_sim);

cmd_hst_pt = zeros(n_sim,n_tra);
cmd_crd_pt = zeros(n_sim,n_tra);
u_hst_1 = zeros(n_sim,n_tra);
u_crd_1 = zeros(n_sim,n_tra);
y_hst_1 = zeros(n_sim,n_tra);
y_crd_1 = zeros(n_sim,n_tra);

count = 0;

%% Joystick Commands
count = count+1;
cmd_hst_pt(1:n_sim,count) = [linspace(0,-90,200)';-90*ones(200,1);linspace(-90,50,300)';50*ones(300,1)];
cmd_crd_pt(1:n_sim,count) = [linspace(0,90,100)';90*ones(400,1);linspace(90,-90,200)';-90*ones(300,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = [linspace(0,-90,200)';-90*ones(200,1);linspace(-90,50,300)';50*ones(300,1)];
cmd_crd_pt(1:n_sim,count) = [linspace(0,90,100)';90*ones(300,1);linspace(90,0,100)';zeros(200,1);linspace(0,-30,100)';-30*ones(200,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = [-100*ones(300,1);zeros(400,1);100*ones(200,1);zeros(100,1)];
cmd_crd_pt(1:n_sim,count) = [zeros(400,1);100*ones(300,1);0*ones(300,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = [100*ones(500,1); -100*ones(500,1)];
cmd_crd_pt(1:n_sim,count) = [-100*ones(500,1); 100*ones(500,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = 100*sin(d1);
cmd_crd_pt(1:n_sim,count) = 100*sin(d1);

count = count+1;
cmd_hst_pt(1:n_sim,count) = 100*cos(d2);
cmd_crd_pt(1:n_sim,count) = 100*cos(d2);

count = count+1;
cmd_hst_pt(1:n_sim,count) = 100*sin(d2);
cmd_crd_pt(1:n_sim,count) = 100*sin(d2);

count = count+1;
cmd_hst_pt(1:n_sim,count) = 100*sin(d2);
cmd_crd_pt(1:n_sim,count) = 100*cos(d2);

count = count+1;
cmd_hst_pt(1:n_sim,count) = 100*cos(d2);
cmd_crd_pt(1:n_sim,count) = 100*sin(d2);

count = count+1;
cmd_hst_pt(1:n_sim,count) = 100*cos(d4);
cmd_crd_pt(1:n_sim,count) = 100*cos(d4);

count = count+1;
cmd_hst_pt(1:n_sim,count) = 12.5*rand*sin(d1)+12.5*rand*sin(d2)+12.5*rand*sin(d3)+12.5*rand*sin(d4)+12.5*rand*cos(d1)+12.5*rand*cos(d2)+12.5*rand*cos(d3)+12.5*rand*cos(d4);
cmd_crd_pt(1:n_sim,count) = 12.5*rand*sin(d1)+12.5*rand*sin(d2)+12.5*rand*sin(d3)+12.5*rand*sin(d4)+12.5*rand*cos(d1)+12.5*rand*cos(d2)+12.5*rand*cos(d3)+12.5*rand*cos(d4);

count = count+1;
cmd_hst_pt(1:n_sim,count) = 100*ones(n_sim,1);
cmd_crd_pt(1:n_sim,count) = zeros(n_sim,1);

count = count+1;
cmd_hst_pt(1:n_sim,count) = zeros(n_sim,1);
cmd_crd_pt(1:n_sim,count) = 100*ones(n_sim,1);

count = count+1;
cmd_hst_pt(1:n_sim,count) = -100*ones(n_sim,1);
cmd_crd_pt(1:n_sim,count) = zeros(n_sim,1);

count = count+1;
cmd_hst_pt(1:n_sim,count) = zeros(n_sim,1);
cmd_crd_pt(1:n_sim,count) = -100*ones(n_sim,1);

count = count+1;
cmd_hst_pt(1:n_sim,count) = 200*rand(n_sim,1)-100;
cmd_crd_pt(1:n_sim,count) = 200*rand(n_sim,1)-100;

count = count+1;
cmd_hst_pt(1:n_sim,count) = -100+200*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];
cmd_crd_pt(1:n_sim,count) = -100+200*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = -100+200*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];
cmd_crd_pt(1:n_sim,count) = -100+200*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = -100+200*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];
cmd_crd_pt(1:n_sim,count) = -100+200*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = -100+200*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];
cmd_crd_pt(1:n_sim,count) = -100+200*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = 100*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];
cmd_crd_pt(1:n_sim,count) = 100*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];

count = count+1;
cmd_hst_pt(1:n_sim,count) = -100*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];
cmd_crd_pt(1:n_sim,count) = -100*[repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1);repmat(rand,100,1)];

%% Output
for i = 1:n_tra
    [u_hst, u_crd, y_hst, y_crd] = evaluation(cmd_hst_pt(1:n_sim,i), cmd_crd_pt(1:n_sim,i));
    u_hst_1(1:n_sim,i) = u_hst;
    u_crd_1(1:n_sim,i) = u_crd;
    y_hst_1(1:n_sim,i) = y_hst;
    y_crd_1(1:n_sim,i) = y_crd;
end

save('testData.mat','cmd_hst_pt','cmd_crd_pt','u_hst_1','u_crd_1','y_hst_1','y_crd_1');