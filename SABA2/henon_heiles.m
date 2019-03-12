function px = henon_heiles(h_v, x, y, py)
  e_p = exp(2*y + 2*sqrt(3)*x);
  e_m = exp(2*y - 2*sqrt(3)*x);
  e_y = exp(-4*y);
  px = sqrt(2*h_v + 1/4 - 1/12*(e_p + e_m + e_y) - py^2);
endfunction
