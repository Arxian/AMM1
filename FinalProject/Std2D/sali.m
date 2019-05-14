span = 1000;
dt = 0.1;
N = span/dt;
k = 1.2;

mesh_size = 1;
mesh_vals = zeros(mesh_size);
tic()
hold on
cha_counter = 0;
for n = 1:mesh_size
  for m = 1:mesh_size
    x10 = n*(2*pi)/mesh_size;
    x20 = m*(2*pi)/mesh_size;
    x0 = [x10 x20];
    x0 = [pi+0.1, pi+0.1]
    v10 = [1 0];
    v20 = [0 1];

    x = x0;
    v1 = v10;
    v2 = v20;

    xs = zeros(N, 2);
    v1s = zeros(N, 2);
    v2s = zeros(N, 2);

    s = 0;
    ss = zeros(N, 1);
    chis = zeros(N, 1);
    logsum = 0;
    for t = 1:N
      % Store
      xs(t, :) = x;
      v1s(t, :) = v1;
      v2s(t, :) = v2;
      % Evolve
      [x, v1, v2] = std_map_dev(x, v1, v2, k);
      v1s(t, :) = v1;
      v2s(t, :) = v2;
      % Normalise
      v1 = v1/norm(v1);
      v2 = v2/norm(v2);
      % Compute
      logsum = logsum + log(norm(v1s(t, :)));
      chis(t) = 1/(t) * logsum;
      v_diff = norm(v1-v2);
      v_sum = norm(v1+v2);
      s = min(v_diff, v_sum);
      ss(t) = s;
      %if (t > 11 && s < 1e-5)
      %  disp(s)
      %  break;
      %endif
    endfor
    %mesh_vals(n, m) = s;
    %if s < 1e-8
    %  if cha_counter < 100
    %    scatter(xs(:, 1), xs(:, 2), 1, "b")
    %    cha_counter = cha_counter+1;
    %  endif
    %else
    %  scatter(xs(:, 1), xs(:, 2), 1, "r")
    %endif
  endfor
endfor
toc()
##title("Phase Portrait of Standard Map for k=1.2")
##xlabel("x1")
##ylabel("x2")
##legend("chaotic", "regular")
%mesh(mesh_vals)
loglog(ss)