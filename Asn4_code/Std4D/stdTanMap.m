function v = stdTanMap(x0, v0, k, b)
  dT = [%
    1+k*cos(x0(1)) + b*cos(x0(3)-x0(1)), 1, -b*cos(x0(3)-x0(1)), 0;%
    k*cos(x0(1)) + b*cos(x0(3)-x0(1)), 1, -b*cos(x0(3)-x0(1)), 0;%
    -b*cos(x0(1)-x0(3)), 0, 1+k*cos(x0(3)) + b*cos(x0(1)-x0(3)), 1;%
    -b*cos(x0(1)-x0(3)), 0, k*cos(x0(3)) + b*cos(x0(1)-x0(3)), 1%
  ];
  v = dT*v0';
endfunction
