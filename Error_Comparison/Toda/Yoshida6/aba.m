function x = aba(x0, dt)
  c2 = sqrt(3)/3;
  d1 = 1/2;
  x = la(x0, d1*dt);
  x = lb(x, c2*dt);
  x = la(x, d1*dt);
endfunction