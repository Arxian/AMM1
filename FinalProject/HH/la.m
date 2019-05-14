function xs = la(x0, dt)
  xs(1) = x0(1) + dt*x0(3);
  xs(2) = x0(2) + dt*x0(4);
  xs(3) = x0(3);
  xs(4) = x0(4);
endfunction
