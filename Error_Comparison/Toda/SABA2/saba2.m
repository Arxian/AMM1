function x = saba2(x0, dt)
  c1 = 1/2 -  sqrt(3)/6;
  c2 = sqrt(3)/3;
  d1 = 1/2;
  x = la(x0, c1*dt);
  x = lb(x, d1*dt);
  x = la(x, c2*dt);
  x = lb(x, d1*dt);
  x = la(x, c1*dt);
endfunction