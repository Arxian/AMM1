function hv = h(vals);
  x = vals(1); y = vals(2); px = vals(3); py = vals(4);
  e_p = exp(2*y + 2*sqrt(3)*x);
  e_m = exp(2*y - 2*sqrt(3)*x);
  e_y = exp(-4*y);
  hv = 1/2 *(px^2 + py^2) + 1/24 * (e_p + e_m + e_y) - 1/8;
endfunction
