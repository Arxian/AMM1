

time = 1000;
dt = 0.01;
N = time/dt;
h0 = 1;
x = 0; y = -0.2; py = 0;

px = henon_heiles(h0, x, y, py);

iter = 1;
start = -0.8;
finish = 1;

vals = zeros(iter*N, 4);
hvs = zeros(iter*N, 1);
pssv = zeros(iter*N, 4);
tic();
for r = 0:iter
  y = start + r*(finish-start)/iter;
  px = henon_heiles(h0, x, y, py);
  v = [x, y, px, py]


  for t = 1:N
    vals(t+r*N, :) = v;
    hvs(t+r*N) = h(v);
    pre = v;
    v = saba2(v, dt);
    if v(1) == 0 && v(3) > 0
      pssv(t+r*N, :) = v;
    elseif (v(1) > 0) && (pre(1) < 0)
      pssv(t+r*N, :) = hh_rk4_reg(-pre(1), pre, t*dt);
    endif
  endfor
endfor
disp(toc())
pssv = pssv(any(pssv, 2), :);
phi0 = phi([x, y, px, py]);
phiv = phi(vals);
%plot(abs(phiv-phi0)/phi0)
%scatter(pssv(:, 2), pssv(:, 4), 1)
