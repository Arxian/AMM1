function p = px(x, h)
  p = sqrt(2*h - x(4)^2 - x(1)^2 - x(2)^2 - 2*x(1)^2*x(2) + 2/3 * x(2)^3);
endfunction