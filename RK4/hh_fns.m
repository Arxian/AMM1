function xs = hh_fns(x)
  xs(1) = x(3);
  xs(2) = x(4);
  e_p = exp(2*x(2) + 2*sqrt(3)*x(1));
  e_m = exp(2*x(2) - 2*sqrt(3)*x(1));
  e_y = exp(-4*x(2));
  xs(3) = -1/12 * sqrt(3) * (e_p - e_m);
  xs(4) = -1/12 * (e_p + e_m - 2*e_y);
endfunction