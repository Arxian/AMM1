function xs = hh_rk4(x, dt, E)
  k1 = dt*hh_fns(x, E);
  k2 = dt*hh_fns(x+k1/2, E);
  k3 = dt*hh_fns(x+k2/2, E);
  k4 = dt*hh_fns(x+k3, E);
  xs = x + (k1 + 2*(k2 + k3) + k4)/6;
endfunction