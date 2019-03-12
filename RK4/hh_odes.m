function dots = hh_odes(vals, t)
  x = vals(3);
  y = vals(4);
  px = -vals(1) - 2*vals(1)*vals(2);
  py = -vals(2) - vals(1)^2 + vals(2)^2;
  dots = [x, y, px, py];
endfunction