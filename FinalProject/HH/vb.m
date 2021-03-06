function [xs, v1, v2] = vb(x0, v10, v20, dt)
  xs(1) = x0(1);
  xs(2) = x0(2);
  xs(3) = x0(3) - dt*(x0(1) + 2*x0(1)*x0(2));
  xs(4) = x0(4) - dt*(x0(2) + x0(1)^2 - x0(2)^2);
  v1(1) = v10(1);
  v1(2) = v10(2);
  v1(3) = v10(3) - dt*( (1+2*x0(2))*v10(1) + 2*x0(1)*v10(2) );
  v1(4) = v10(4) + dt*( -2*x0(1)*v10(1) + (-1 + 2*x0(2))*v10(2) );
  v2(1) = v20(1);
  v2(2) = v20(2);
  v2(3) = v20(3) - dt*( (1+2*x0(2))*v20(1) + 2*x0(1)*v20(2) );
  v2(4) = v20(4) + dt*( -2*x0(1)*v20(1) + (-1 + 2*x0(2))*v20(2) );
endfunction
