function xs = hh_rk4_reg(dx, x, t)
  k1 = dx*hh_fns_dx(x, t);
  k2 = dx*hh_fns_dx(x+k1/2, t);
  k3 = dx*hh_fns_dx(x+k2/2, t);
  k4 = dx*hh_fns_dx(x+k3, t);
  xs = x + (k1 + 2*(k2 + k3) + k4)/6;
endfunction