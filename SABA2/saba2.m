function vals = saba2(vals0, dt);
  c1 = 1/2 - sqrt(3)/6;
  c2 = sqrt(3)/3;
  d1 = 1/2;
  vals = la(vals0, c1*dt);
  vals = lb(vals, d1*dt);
  vals = la(vals, c2*dt);
  vals = lb(vals, d1*dt);
  vals = la(vals, c1*dt);
endfunction
