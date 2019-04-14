function v = vb(v0, x0, dt)
  v(1) = v0(1);
  v(2) = v0(2);
  v(3) = v0(3) - dt*( (1+2*x0(2))*v0(1) + 2*x0(1)*v0(2) );
  v(4) = v0(4) + dt*( -2*x0(1)*v0(1) + (-1 + 2*x0(2))*v0(2) );
endfunction