h = 256;
T = 100;
dt = 0.001;
N = T/dt;
iter = 4;
start = -0.5;
finish = 0.5;
hold on;
tic()
vs = zeros(N*iter, 4);
pssv = zeros(N*iter, 4);
hvals = zeros(N*iter, 1);
for r = 0:iter
  x = 0;
  y = start + r*(finish-start)/iter;
  py = 0;
  px = henon_heiles(h, x, y, py);
  vals = [x, y, px, py];
  disp(y)
  for t = 1:N
    vs(t + r*N, :) = vals;
    pre = vals;
    %hvals(t + r*N) = hval(vals);
    vals = hh_rk4(dt, vals);
    if vals(1) == 0 && vals(3) > 0
      pssv(t + r*N, :) = vals;
    elseif (vals(1) > 0) && (pre(1) < 0)
      pssv(t + r*N, :) = hh_rk4_reg(-pre(1), pre, t*dt);
    endif
  endfor
endfor
disp(toc())
hold on;
tic();
pssv = pssv(any(pssv, 2),:);
disp(toc())
%scatter(pssv(:, 2), pssv(:, 4), 1)
%phiv = phi(vs);
%phi0 = [x, y, px, py];
%plot(abs(phiv-phi0)/phi0)
