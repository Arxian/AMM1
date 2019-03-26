function x = lc(x0, dt)
  x(1) = x0(1);
  x(2) = x0(2);
  a = exp(2*x0(2) + 2*sqrt(3)*x0(1));
  b = exp(2*x0(2) - 2*sqrt(3)*x0(1));
  c = exp(-4*x0(2));
  nu = 2*sqrt(3);
  
  x(3) = x0(3) - dt * 1/72 * ( 3*nu*(a+b)*(a-b) + (a+b - 2*c )*(nu*(a-b)) ) ;
  x(4) = x0(4) - dt * 1/72 * ( 6*(a-b)^2 + 2*(a+b + 4*c)*(a+b - 2*c));
endfunction