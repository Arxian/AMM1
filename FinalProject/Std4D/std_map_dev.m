function [x, vs] = std_map_dev(x0, vs0, k, b)
  x(2) = x0(2) + k*sin(x0(1)) - b*sin(x0(3) - x0(1));
  x(1) = x0(1) + x(2);
  x(4) = x0(4) + k*sin(x0(3)) - b*sin(x0(1) - x0(3));
  x(3) = x0(3) + x(4);
  x = mod(x, 2*pi);
  dT = [
    1 + k*cos(x0(1)) + b*cos(x0(3)-x0(1)), 1, -b*cos(x0(3)-x0(1)), 0;
    k*cos(x0(1)) + b*cos(x0(3)-x0(1)), 1, -b*cos(x0(3)-x0(1)), 0;
    -b*cos(x0(1)-x0(3)), 0, 1+k*cos(x0(3))+b*cos(x0(3)-x0(1)), 1;
    -b*cos(x0(1)-x0(3)), 0, k*cos(x0(3)) + b*cos(x0(1) - x0(3)), 1
  ];
  vs = (dT*vs0')';
endfunction