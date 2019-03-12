function p = phi(x)
  e_p = exp(2.*x(:, 2) .+ 2.*sqrt(3).*x(:, 1));
  e_m = exp(2.*x(:, 2) .- 2.*sqrt(3).*x(:, 1));
  e_y = exp(-4.*x(:, 2));
  p = 8*x(:, 3)*(x(:, 3).^2 - 3*x(:, 4).^2) + (x(:, 3) + sqrt(3)*x(:, 4))*e_m + (x(:, 3)-sqrt(3)*x(:, 4))*e_p - 2*x(:, 3)*e_y;
endfunction
