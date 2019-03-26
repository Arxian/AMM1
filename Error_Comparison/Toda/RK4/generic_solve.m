% Hyperparameters
T = 10000;
dt = 0.01;
N = T/dt;

% Initial Conditions
H = 1/8;
x0 = [0, -0.25, 0, 0];
px0 = px(x0, H);
x0 = [x0(1) x0(2) px0 x0(4)];

% Initialisation
x = x0;
xs = zeros(N, 4);
hs = zeros(N, 1);
pss_appr = zeros(N, 4);
tic();
for t = 1:N
  xs(t, :) = x;
  % Generic "solve one step"
  x = rk4(x, dt);
  if mod(t, 10) == 0
    hs(t) = h(x);
  endif
  if t > 1 && xs(t, 1) > 0 && xs(t-1, 1) < 0
    pss_appr(t, :) = xs(t-1, :);
  endif
endfor
disp(toc())
err = abs(hs(hs!=0)-H)/H;
plot(err)