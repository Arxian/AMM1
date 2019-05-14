load "chaos_mesh.txt";

interval = logspace(-8, 1, 10000);
percs = zeros(10000, 1);
for t = 1:10000
  percs(t) = length(mesh_vals(mesh_vals>interval(t)))/400;
endfor
semilogx(interval, percs)