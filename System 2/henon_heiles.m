function px = henon_heiles(h_v, x, y, py, E)
  A = 0.25; B = 0.75;
  px = sqrt(2*h_v - py^2 - 2* (-E*(x^2 + y^2) + A*(x^6 + y^6) + B*(x^4*y^2 + x^2*y^4)));
endfunction
