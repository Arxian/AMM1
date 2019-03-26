function pxv = px(x0, h_v)
  e_p = exp(2*x0(2) + 2*sqrt(3)*x0(1));
  e_m = exp(2*x0(2) - 2*sqrt(3)*x0(1));
  e_y = exp(-4*x0(2));
  pxv = sqrt(2*h_v + 1/4 - 1/12*(e_p + e_m + e_y) - x0(4)^2);
endfunction
