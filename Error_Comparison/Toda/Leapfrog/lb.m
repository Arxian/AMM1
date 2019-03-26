function x = lb(x0, dt)
  e_p = exp(2*x0(2) + 2*sqrt(3)*x0(1));
  e_m = exp(2*x0(2) - 2*sqrt(3)*x0(1));
  e_y = exp(-4*x0(2));
  x(1) = x0(1);
  x(2) = x0(2);
  x(3) = x0(3) - dt* (1/12 * sqrt(3) * (e_p - e_m));
  x(4) = x0(4) - dt* (1/12 * (e_p + e_m - 2*e_y));
endfunction
