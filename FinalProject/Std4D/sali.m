
span = 100;
dt = 0.1;
N = span/dt;
k = 0.5;
b = 0.05;
mesh_size = 1;
mesh_vals = zeros(mesh_size, mesh_size, mesh_size, mesh_size);

tic()
hold on
for n1 = 1:mesh_size
  for n2 = 1:mesh_size
    for n3 = 1:mesh_size
      for n4 = 1:mesh_size
        x10 = n1*(2*pi/mesh_size);
        x20 = n2*(2*pi/mesh_size);
        x30 = n3*(2*pi/mesh_size);
        x40 = n4*(2*pi/mesh_size);
        x0 = [x10 x20 x30 x40];
        x0 = [ pi 0 pi+0.1 pi];
        v10 = [1 0 0 0];
        v20 = [0 0 1 0];

        x = x0;
        v1 = v10;
        v2 = v20;

        xs = zeros(N, 4);
        v1s = zeros(N, 4);
        v2s = zeros(N, 4);

        s = 0;
        ss = zeros(N, 1);
        chis = zeros(N, 1);
        logsum = 0;
        for t = 1:N
          % Store
          xs(t, :) = x;
          % Evolve
          [x, vs] = std_map_dev(x, [v1; v2], k, b);
          v1 = vs(1, :);
          v2 = vs(2, :);
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
        endfor
        
        %if s < 1e-7
        %  scatter(xs(:, 1), xs(:, 2), 1, "b");
        %else
        %  scatter(xs(:, 1), xs(:, 2), 1, "r");
        %endif
        %mesh_vals(n1, n2, n3, n4) = s;
      endfor
    endfor
  endfor
endfor

toc()
%title("Phase portrait of 4D Standard map with k=0.5, B=0.05")
%xlabel("x_3")
%ylabel("x_4")
%legend("regular", "chaotic")
%mesh(mesh_vals)
semilogx(chis)