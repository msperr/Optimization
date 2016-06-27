load optimization_results.mat;
c  = 1:20;
c2 = 21:40;
c3 = 41:60;
c4 = 61:80;
fval = [log10(fval_1(c)),log10(fval_2(c)),log10(fval_3(c)),log10(fval_4(c)),log10(fval_5(c)),log10(fval_6(c)),log10(fval_7(c))];
inertia_engine = [log10(sol_dev_1(c)),log10(sol_dev_2(c)),log10(sol_dev_3(c)),log10(sol_dev_4(c)),log10(sol_dev_5(c)),log10(sol_dev_6(c)),log10(sol_dev_7(c))];
inertia_yy = [log10(sol_dev_1(c2)),log10(sol_dev_2(c2)),log10(sol_dev_3(c2)),log10(sol_dev_4(c2)),log10(sol_dev_5(c2)),log10(sol_dev_6(c2)),log10(sol_dev_7(c2))];

figure
plot(fval,inertia_engine,'sk');
title('Inertia Engine')
xlabel('Trajectory Deviation');
ylabel('Parameter Deviation');
grid on

figure
plot(fval,inertia_yy,'sk');
title('Inertia YY')
xlabel('Trajectory Deviation');
ylabel('Parameter Deviation');
grid on