function xs = hh_rk4_reg(dx, x, t, E)
  k1 = dx*hh_fns_dx(x, t, E);
  k2 = dx*hh_fns_dx(x+k1/2, t, E);
  k3 = dx*hh_fns_dx(x+k2/2, t, E);
  k4 = dx*hh_fns_dx(x+k3, t, E);
  xs = x + (k1 + 2*(k2 + k3) + k4)/6;
endfunction