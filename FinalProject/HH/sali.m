
span = 1000;
dt = 1;
N = span/dt;
mesh_size = 1;
mesh_vals = zeros(mesh_size, mesh_size, mesh_size, mesh_size);

H = 1/8;

tic()
hold on
for n1 = 1:mesh_size
  for n2 = 1:mesh_size
    for n3 = 1:mesh_size
      for n4 = 1:mesh_size
        x10 =  0%-0.25 + n1*0.5/(mesh_size);
        x20 =  -0.2%-0.25 + n2*0.5/(mesh_size);
        x40 = 0%-0.25 + n4*0.5/(mesh_size);
        x30 = px([x10, x20, 0, x40], H);
        x0 = [0 x20 x30 x40];
        v10 = [1 0 0 0];
        v20 = [0 1 0 0];

        x = x0;
        v1 = v10;
        v2 = v20;

        xs = zeros(N, 4);
        v1s = zeros(N, 4);
        v2s = zeros(N, 4);
        pssvals = zeros(N, 4);
        
        s = 0;
        ss = zeros(N, 1);
        chis = zeros(N, 1);
        logsum = 0;
        for t = 1:N
          % Store
          xs(t, :) = x;
          % Evolve
##          x = yoshida4(x, dt);
          [x, v1, v2] = aba864_dev(x, v1, v2, dt);
          v1s(t, :) = v1;
          v2s(t, :) = v2;
          % Normalise
          v1 = v1/norm(v1);
          v2 = v2/norm(v2);
          % Compute
          logsum = logsum + log(norm(v1s(t, :)));
          chis(t) = 1/(t*dt) * logsum;
          v_diff = norm(v1-v2);
          v_sum = norm(v1+v2);
          s = min(v_diff, v_sum);
          ss(t) = s;
          %if (t > 10 && s < 1e-5)
          %  break
          %endif
          %if t > 5 && abs(xs(t, 3) - xs(1, 3)) < 1e-3 && abs(xs(t, 4) - xs(1, 4)) < 1e-3
          %  break
          %endif
          %if x(1) == 0 && x(3) > 0
          %  pssvals(t, :) = x;
          %elseif t > 1 && x(1) > 0 && xs(t-1, 1) < 0
          %  pssvals(t, :) = hh_rk4_reg(-xs(t-1, 1), xs(t-1, :), t);
          %endif
        endfor
        %if s > 1e-7
        %  scatter(nonzeros(pssvals(:, 2)), nonzeros(pssvals(:, 4)), 1, "b")
        %else
        %  scatter(nonzeros(pssvals(:, 2)), nonzeros(pssvals(:, 4)), 1, "r")
        %endif
        %mesh_vals(n1, n2, n3, n4) = s;
      endfor
    endfor
  endfor
endfor

toc()
%mesh(mesh_vals)
loglog(ss)
diff = zeros(N, 1);
for n = 1:N
  diff(n, :) = h(xs(n, :));
endfor