function x = rk4(x0, dt)
  k1 = dt*l(x0);
  k2 = dt*l(x0+k1/2);
  k3 = dt*l(x0+k2/2);
  k4 = dt*l(x0+k3);
  x = x0 + (k1 + 2*(k2 + k3) + k4)/6;
endfunction
