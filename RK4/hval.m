function h = hval(xs)
  ep = exp(2*xs(2) + 2*sqrt(3)*xs(1));
  em = exp(2*xs(2) - 2*sqrt(3)*xs(1));
  ey = exp(-4*xs(2));
  h = 1/2 * (xs(3)^2 + xs(4)^2) + 1/24 * (ep + em + ey) - 1/8;
endfunction
