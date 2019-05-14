function xs = hh_fns_dx(dx, x, t)
  xs(1) = x(1) + dx;
  xs(2) = x(4)/x(3);
  xs(3) = (-x(1) - 2*x(1)*x(2))/x(3);
  xs(4) = (-x(2) - x(1)^2 + x(2)^2)/x(3);
endfunction