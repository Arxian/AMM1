function xs = lb(x0, dt)
  xs(1) = x0(1);
  xs(2) = x0(2);
  xs(3) = x0(3) - dt*(x0(1) + 2*x0(1)*x0(2));
  xs(4) = x0(4) - dt*(x0(2) + x0(1)^2 - x0(2)^2);
endfunction
