load "5x5.txt";

interval = logspace(-17, 1, 10000);
perces = zeros(10000, 1);
for t = 1:10000
  perces(t) = length(mesh_vals(mesh_vals+1e-16>interval(t)))/6.25;
endfor
semilogx(interval, perces)