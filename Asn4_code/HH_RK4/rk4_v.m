function v = rk4_v(v0, x0, dt)
  k1 = dt*w(v0, x0);
  k2 = dt*w(v0.+k1/2, x0);
  k3 = dt*w(v0.+k2/2, x0);
  k4 = dt*w(v0.+k3, x0);
  v = v0 .+ (k1 .+ 2*(k2 .+ k3) .+ k4)/6;
endfunction