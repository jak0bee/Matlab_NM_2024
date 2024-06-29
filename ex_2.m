
eq = @(t,y) exp(-t) - y^2;
t_span = [0,1,2,5,10];

solutions = [0.503346658225, 0.478421766451, 0.237813428537, 0.110790590981];

[ts_45, ys_45] = ode45(eq, t_span, 0);

[ts_23, ys_23] = ode23(eq, t_span, 0);

disp('true solutions:')
disp(num2str(solutions))

disp('Ode 45 solutions:')
disp(num2str(ys_45));

disp('Ode 23 solutions:')
disp(num2str(ys_23));

disp('------------------------------- C7 -------------------------------');

f1 = @(t, y) cos(t) - y/3;
y0 = 0;
t0 = 0;
t = 2;
h = 0.2;

Eulers(f1, t, h, t0, y0);
