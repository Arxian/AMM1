function x = lc(x0, dt)
  x(1) = x0(1);
  x(2) = x0(2);
  x(3) = x0(3) - 2*x0(1)*(1 + 2*x0(1)^2 + 6*x0(2) + 2*x0(2)^2)*dt;
  x(4) = x0(4) - 2*(x0(2) - 3*x0(2)^2 + 2*x0(2)^3 + 3*x0(1)^2 + 2*x0(1)^2*x0(2))*dt;
endfunction