function [k_vals] = ks(dt, x, y, px, py)
  k1 = dt*[px, py, (-x-2*x*y), (-y-x^2+y^2)];
  k1f = k1/2;
  k2 = dt*[(px+k1f(3)), (py+k1f(4)), (-(x+k1f(1))-2*(x+k1f(1))*(y+k1f(2))), (-(y+k1f(2))-(x+k1f(1))^2+(y+k1f(2))^2)];
  k2f = k2/2;
  k3 = dt*[(px+k2f(3)), (py+k2f(4)), (-(x+k2f(1))-2*(x+k2f(1))*(y+k2f(2))), (-(y+k2f(2))-(x+k2f(1))^2+(y+k2f(2))^2)];
  k4 = dt*[(px+k3(3)), (py+k3(4)), (-(x+k3(1))-2*(x+k3(1))*(y+k3(2))), (-(y+k3(2))-(x+k3(1))^2+(y+k3(2))^2)];
  kx = k1(1) + 2*(k2(1)+k3(1)) + k4(1);
  ky = k1(2) + 2*(k2(2)+k3(2)) + k4(2);
  kpx = k1(3) + 2*(k2(3)+k3(3)) + k4(3);
  kpy = k1(4) + 2*(k2(4)+k3(4)) + k4(4);
  k_vals = [kx, ky, kpx, kpy];
endfunction
