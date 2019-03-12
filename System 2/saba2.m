function vals = saba2(vals0, dt, E);
  c1 = 1/2 - sqrt(3)/6;
  c2 = sqrt(3)/3;
  d1 = 1/2;
  vals = la(vals0, c1*dt, E);
  vals = lb(vals, d1*dt, E);
  vals = la(vals, c2*dt, E);
  vals = lb(vals, d1*dt, E);
  vals = la(vals, c1*dt,E );
endfunction
