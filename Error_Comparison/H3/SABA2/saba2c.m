function x = saba2c(x0, dt)
  c = (2-sqrt(3))/48;
  tau = -(dt^3);
  x = lc(x0, tau*c);
  x = saba2(x, dt);
  x = lc(x, tau*c);
endfunction