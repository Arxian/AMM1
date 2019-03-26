function pxv = px(x, h)
  E = 10e-4;
  A = 0.25; B = 0.75;
  pxv = sqrt(2*h - x(4)^2 - 2* (-E*(x(1)^2 + x(2)^2) + A*(x(1)^6 + x(2)^6) + B*(x(1)^4*x(2)^2 + x(1)^2*x(2)^4)));
endfunction
