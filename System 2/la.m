function vals = la(vals0, dt, E)
  vals(1) = vals0(1) + dt*vals0(3);
  vals(2) = vals0(2) + dt*vals0(4);
  vals(3) = vals0(3);
  vals(4) = vals0(4);
endfunction
