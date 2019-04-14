% Hyperparameters
T = 100000;
N = T;

% Initial Conditions
H = 1/8;
x0 = [0.5, 1.4];
K = 1;
v0 = [rand(1, 2); rand(1, 2)];
v0(:, 1) = v0(:,1)/norm(v0(:,1));
v0(:,2) = v0(:,2)/norm(v0(:,2));

% Initialisation
x = x0;
v = v0;
xs = zeros(N, 2);
gs = zeros(N, 2);
chis = zeros(N, 2);
tic();
for t = 1:N
  xs(t, :) = x;
  % Generic "solve one step"
  x = stdMap(x, K);
  for k = 1:2
    v(k, :) = stdTanMap(x, v(k, :), K);
  endfor
  if mod(t, 10) == 0
    [u, g] = gram_schmidt(v);
    v = u;
    for k = 1:2
      gs(t, k) = g(k);
      chis(t, k) = 1/(t) * sum(log(nonzeros(gs(:, k))));
    endfor
  endif
endfor
%chis = nonzeros(chis);
disp(toc())
hold on;
semilogx(nonzeros(chis(:, 1)));
semilogx(nonzeros(chis(:, 2)));