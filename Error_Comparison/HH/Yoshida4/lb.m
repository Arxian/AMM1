function x = lb(x0, dt)
  x(1) = x0(1);
  x(2) = x0(2);
  x(3) = x0(3) - dt*(x0(1) + 2*x0(1)*x0(2));
  x(4) = x0(4) - dt*(x0(2) + x0(1)^2 - x0(2)^2);
endfunction