f = @(x)objective(x(1),x(2),x(3),x(4));
mean = [15,3000000,1000,140000];
dev = [5,1000000,300,50000];
x0 = mean + randn(1,4)*diag(dev);

tic;
[x_p,fval_p,exitflag_p,output_p] = patternsearch(f,x0)
toc