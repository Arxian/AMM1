

time = 3000;
dt = 0.1;
h0 = 2;
x = 0; y = -0.4; py = 0;

E = 10e-8;

px = henon_heiles(h0, x, y, py, E);

v = [x, y, px, py]
vals = zeros(time/dt, 4);
hvs = zeros(time/dt, 1);
pssv = zeros(time/dt, 4);
tic();
for t = 1:time/dt
  vals(t, :) = v;
  hvs(t) = h(v, E);
  pre = v;
  v = saba2(v, dt, E);
  if v(2) == 0 && v(4) > 0
    pssv(t, :) = v;
  elseif (v(2) > 0) && (pre(2) < 0)
    pssv(t, :) = hh_rk4_reg(-pre(2), pre, t*dt, E);
  endif
endfor
disp(toc())
pssv = pssv(any(pssv, 2), :);
scatter(pssv(:, 1), pssv(:, 3), 1)
figure()
plot(abs(hvs-h0)/h0);