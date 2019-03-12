

time = 100;
dt = 0.01;
H = 1;
x = 0; y = -0.4; py = 0;

px = henon_heiles(H, x, y, py);

v = [x, y, px, py]
vals = zeros(time/dt, 4);

tic();
for t = 1:time/dt
  vals(t, :) = v;
  v = saba2(v, dt);
endfor
disp(toc())
scatter(vals(:, 2), vals(:, 4), 1)
