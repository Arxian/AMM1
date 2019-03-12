function hv = h(vals, E);
  x = vals(1); y = vals(2); px = vals(3); py = vals(4);
  A = 0.25; B = 0.75;
  hv = 1/2 * (px^2 + py^2) - E*(x^2 + y^2) + A*(x^6 + y^6) + B*(x^4*y^2 + x^2*y^4);
endfunction
