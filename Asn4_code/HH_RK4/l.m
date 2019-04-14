function x = l(x0)
  x(1) = x0(3);
  x(2) = x0(4);
  x(3) = -(x0(1) .+ 2*x0(1).*x0(2));
  x(4) = -(x0(2) + x0(1).^2 .- x0(2).^2);
endfunction
