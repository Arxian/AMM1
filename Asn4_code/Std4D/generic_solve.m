% Hyperparameters
T = 10000;
N = T;

% Initial Conditions
x0 = [1, 1, 0.54, 0.01];
K = 0.5;
B = 0.05;
v0 = [rand(1, 4); rand(1, 4); rand(1, 4); rand(1, 4)];
v0(:, 1) = v0(:,1)/norm(v0(:,1));
v0(:,2) = v0(:,2)/norm(v0(:,2));
v0(:,3) = v0(:,3)/norm(v0(:,3));
v0(:,4) = v0(:,4)/norm(v0(:,4));

% Initialisation
x = x0;
v = v0;
xs = zeros(N, 4);
gs = zeros(N, 4);
chis = zeros(N, 4);
tic();
for t = 1:N
  xs(t, :) = x;
  % Generic "solve one step"
  x = stdMap(x, K, B);
  for k = 1:4
    v(k, :) = stdTanMap(x, v(k, :), K, B);
  endfor
  if mod(t, 5) == 0
    [u, g] = gram_schmidt(v);
    v = u;
    for k = 1:4
      gs(t, k) = g(k);
      chis(t, k) = 1/(t) * sum(log(nonzeros(gs(:, k))));
    endfor
  endif
endfor
%chis = nonzeros(chis);
disp(toc())
hold on;
semilogx(nonzeros(chis(:, 3)));
semilogx(nonzeros(chis(:, 4)));
semilogx(nonzeros(chis(:, 2)));
semilogx(nonzeros(chis(:, 1)));
