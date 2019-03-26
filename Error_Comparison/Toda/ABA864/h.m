function hv = h(x0);
  x = x0(1); y = x0(2); px = x0(3); py = x0(4);
  e_p = exp(2*y + 2*sqrt(3)*x);
  e_m = exp(2*y - 2*sqrt(3)*x);
  e_y = exp(-4*y);
  hv = 1/2 *(px^2 + py^2) + 1/24 * (e_p + e_m + e_y) - 1/8;
endfunction