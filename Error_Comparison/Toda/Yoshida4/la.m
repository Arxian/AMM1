function x = la(x0, dt)
  x(1) = x0(1) + dt*x0(3);
  x(2) = x0(2) + dt*x0(4);
  x(3) = x0(3);
  x(4) = x0(4);
endfunction
