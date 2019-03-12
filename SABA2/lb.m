function vals = lb(x, dt)
  xv = x(1);
  yv = x(2);
  vals(1) = xv;
  vals(2) = yv;
  e_p = exp(2*yv + 2*sqrt(3)*xv);
  e_m = exp(2*yv - 2*sqrt(3)*xv);
  e_y = exp(-4*yv);
  vals(3) = x(3) - dt* (1/12 * sqrt(3) * (e_p - e_m));
  vals(4) = x(4) - dt* (1/12 * (e_p + e_m - 2*e_y));
endfunction
