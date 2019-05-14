function [x, v1, v2] = yoshida4_dev(x0, v10, v20, dt)
  srd2 = 2^(1/3);
  c1 = 1/(2*(2-srd2));
  c2 = (1-srd2)/(2*(2-srd2));
  d1 = 1/(2-srd2);
  d2 = -(srd2)/(2-srd2);
  [x, v1, v2] = va(x0, v10, v20, c1*dt);
  [x, v1, v2] = vb(x, v1, v2, d1*dt);
  [x, v1, v2] = va(x, v1, v2, c2*dt);
  [x, v1, v2] = vb(x, v1, v2, d2*dt);
  [x, v1, v2] = va(x, v1, v2, c2*dt);
  [x, v1, v2] = vb(x, v1, v2, d1*dt);
  [x, v1, v2] = va(x, v1, v2, c1*dt);
endfunction