function x = yoshida4(x0, dt)
  srd2 = 2^(1/3);
  c1 = 1/(2*(2-srd2));
  c2 = (1-srd2)/(2*(2-srd2));
  d1 = 1/(2-srd2);
  d2 = -(srd2)/(2-srd2);
  x = la(x0, c1*dt);
  x = lb(x, d1*dt);
  x = la(x, c2*dt);
  x = lb(x, d2*dt);
  x = la(x, c2*dt);
  x = lb(x, d1*dt);
  x = la(x, c1*dt);
endfunction