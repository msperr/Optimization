%% Initializations
n = 4;
m = 1000;
count = 0;
d = (0:2*pi/(m-1):2*pi)';

cmd_hst_pt = zeros(m,n);
cmd_crd_pt = zeros(m,n);
u_hst_1 = zeros(m,n);
u_crd_1 = zeros(m,n);
y_hst_1 = zeros(m,n);
y_crd_1 = zeros(m,n);

%%
count = count+1;
cmd_hst_pt(1:end,count) = [-100*ones(300,1);zeros(400,1);100*ones(200,1);zeros(100,1)];
cmd_crd_pt(1:end,count) = [zeros(400,1);100*ones(300,1);0*ones(300,1)];

count = count+1;
cmd_hst_pt(1:end,count) = [100*ones(500,1); -100*ones(500,1)];
cmd_crd_pt(1:end,count) = [-100*ones(500,1); 100*ones(500,1)];

count = count+1;
cmd_hst_pt(1:end,count) = 100*cos(d);
cmd_crd_pt(1:end,count) = 100*cos(d);

count = count+1;
cmd_hst_pt(1:end,count) = 100*sin(d);
cmd_crd_pt(1:end,count) = 100*sin(d);

%%
for i = 1:n
    [u_hst, u_crd, y_hst, y_crd] = evaluation(cmd_hst_pt(1:end,i), cmd_crd_pt(1:end,i));
    u_hst_1(1:end,i) = u_hst;
    u_crd_1(1:end,i) = u_crd;
    y_hst_1(1:end,i) = y_hst;
    y_crd_1(1:end,i) = y_crd;
end

save('testData.mat','cmd_hst_pt','cmd_crd_pt','u_hst_1','u_crd_1','y_hst_1','y_crd_1');
