function x = leapfrog(x0, dt)
  x = lb(x0, dt/2);
  x = la(x, dt);
  x = lb(x, dt/2);
endfunction