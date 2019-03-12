function xs = hh_rk4(dt, x)
  k1 = dt*hh_fns(x);
  k2 = dt*hh_fns(x+k1/2);
  k3 = dt*hh_fns(x+k2/2);
  k4 = dt*hh_fns(x+k3);
  xs = x + (k1 + 2*(k2 + k3) + k4)/6;
endfunction