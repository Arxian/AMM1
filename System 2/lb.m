function vals = lb(x, dt, E)
  xv = x(1);
  yv = x(2);
  A = 0.25; B = 0.75;
  vals(1) = xv;
  vals(2) = yv;
  vals(3) = x(3) - dt* (-2*E*x(1) + 6*A*x(1)^5 + 4*B*x(1)^3*x(2)^2 + 2*B*x(1)*x(2)^4);
  vals(4) = x(4) - dt* (-2*E*x(2) + 6*A*x(2)^5 + 4*B*x(2)^3*x(1)^2 + 2*B*x(2)*x(1)^4);
endfunction
