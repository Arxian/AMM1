function xs = hh_fns_dx(x, t, E)
  xs(1) = x(3)/x(4);
  xs(2) = 1;
  A = 0.25; B = 0.75;
  xs(3) = (-2*E*x(1) + 6*A*x(1)^5 + 4*B*x(1)^3*x(2)^2 + 2*B*x(1)*x(2)^4) /x(4);
  xs(4) = (-2*E*x(2) + 6*A*x(2)^5 + 4*B*x(2)^3*x(1)^2 + 2*B*x(2)*x(1)^4) /x(4);
endfunction