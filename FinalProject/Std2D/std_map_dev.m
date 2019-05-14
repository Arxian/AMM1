function [x, v1, v2] = std_map_dev(x0, v10, v20, k)
  x(2) = x0(2) + k*sin(x0(1));
  x(1) = x0(1) + x(2);
  x = mod(x, 2*pi);
  v1(2) = k*cos(x0(1))*v10(1) + v10(2);
  v1(1) = v10(1) + v1(2);
  v2(2) = k*cos(x0(1))*v20(1) + v20(2);
  v2(1) = v20(1) + v2(2);
endfunction
