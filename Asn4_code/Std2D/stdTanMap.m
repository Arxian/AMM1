function v = stdTanMap(x0, v0, k)
  dT = [
    1+k*cos(x0(1)), 1; %
    k*cos(x0(1)), 1 %
  ];
  v = dT*v0';
endfunction
