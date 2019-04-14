% Hyperparameters
T = 10000;
dt = 0.5;
N = T/dt;

% Initial Conditions
H = 1/8;
x0 = [0, -0.25, 0, 0];

v0 = [rand(1, 4); rand(1, 4); rand(1, 4); rand(1, 4)];
v0(:, 1) = v0(:,1)/norm(v0(:,1));
v0(:,2) = v0(:,2)/norm(v0(:,2));
v0(:,3) = v0(:,3)/norm(v0(:,3));
v0(:,4) = v0(:,4)/norm(v0(:,4));

px0 = px(x0, H);

x0 = [x0(1) x0(2) px0 x0(4)];

% Initialisation
x = x0;
v = v0;
xs = zeros(N, 4);
gs = zeros(N, 4);
chis = zeros(N, 4);
pss_appr = zeros(N, 4);
tic();
for t = 1:N
  xs(t, :) = x;
  % Generic "solve one step"
  x = aba864(x, dt);
  for k = 1:4
    v(k, :) = aba864_v(v(k, :), x, dt);
  endfor
  if mod(t, 10) == 0
    [u, g] = gram_schmidt(v);
    v = u;
    for k = 1:4
      gs(t, k) = g(k);
      chis(t, k) = 1/(t*dt) * sum(log(nonzeros(gs(:, k))));
    endfor
  endif
  %if t > 1 && xs(t, 1) > 0 && xs(t-1, 1) < 0
  %  pss_appr(t, :) = xs(t-1, :);
  %endif
endfor
%chis = nonzeros(chis);
disp(toc())
hold on;
semilogx(nonzeros(chis(100:end, 1)));
semilogx(nonzeros(chis(100:end, 2)));
semilogx(nonzeros(chis(100:end, 3)));
semilogx(nonzeros(chis(100:end, 4)));
