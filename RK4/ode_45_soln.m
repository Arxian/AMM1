tic();
h = 1;
x = 0;
y = -0.8;
py = 0;
steps = 10;
dt = 0.001;
px = henon_heiles(h, x, y, py)
% lsode uses the Adams-Moulton linear multistep method
% order of the AMLM method is varied
%[vals, vs] = lsode("hh_odes", [x, y, px, py], [1:steps/dt]);

vals = zeros(steps/dt, 4);

pssvals = [];

xs = [x, y, px, py];

for t = 1:steps/dt
  pre = xs;
  vals(t, :) = xs;
  xs = hh_rk4(dt, xs);
  if xs(1) == 0 && xs(3) > 0
    pssvals = [pssvals; xs];
  elseif xs(1) > 0 && pre(1) < 0
    pssvals = [pssvals; hh_rk4_reg(-pre(1), pre, t)];
  endif
endfor

%for i = 1:steps
%  if vals(i, 1) == 0 && vals(i, 3) > 0
%    pssvals = [pssvals; vals(i, :)];
%  elseif vals(i, 1) < 0 && vals(i+1, 1) > 0
%    pssvals = [pssvals; hh_rk4_reg(-vals(i, 1), vals(i, :), t)];;
%  endif
%endfor

disp(toc())

plot(vals(:, 2))
%scatter(pssvals(:, 2), pssvals(:, 4), 1)