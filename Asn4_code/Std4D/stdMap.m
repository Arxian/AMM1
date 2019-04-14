function x = stdMap(x0, k, b)
  x(2) = mod(x0(2) + k*sin(x0(1)) - b*sin(x0(3)-x0(1)), 2*pi);
  x(1) = mod(x0(1) + x(2), 2*pi);
  x(4) = mod(x0(4) + k*sin(x0(3)) - b*sin(x0(1)-x0(3)), 2*pi);
  x(3) = x0(3) + x(4);
endfunction
