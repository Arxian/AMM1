function v = va(v0, x0, dt)
  v(1) = v0(1) + dt*v0(3);
  v(2) = v0(2) + dt*v0(4);
  v(3) = v0(3);
  v(4) = v0(4);
endfunction
