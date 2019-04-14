function x = stdMap(x0, k)
  x(2) = mod(x0(2) + k*sin(x0(1)), 2*pi);
  x(1) = mod(x0(1) + x(2), 2*pi);
endfunction
