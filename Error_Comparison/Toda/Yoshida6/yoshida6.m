function x = yoshida6(x0, dt)
  c1 = 1/2 -  sqrt(3)/6;
  w1 = - 0.117767998417887*10^1;
  w2 = 0.235573213359357*10^0;
  w3 = 0.784513610477560*10^0;
  w0 = 1 - 2*(w1 + w2 + w3);
  x = saba2(x0, w3*dt);
  x = saba2(x, w2*dt);
  x = saba2(x, w1*dt);
  x = saba2(x, w0*dt);
  x = saba2(x, w1*dt);
  x = saba2(x, w2*dt);
  x = saba2(x, w3*dt);
  %{
  x = la(x0, w3*c1*dt);
  x = aba(x, w3*dt);
  x = la(x, (w3 + w2)*c1*dt);
  x = aba(x, w2*dt);
  x = la(x, (w2 + w1)*c1*dt);
  x = aba(x, w1*dt);
  x = la(x, (w1 + w0)*c1*dt);
  x = aba(x, w0*dt);
  x = la(x, (w0 + w1)*c1*dt);
  x = aba(x, w1*dt);
  x = la(x, (w1 + w2)*c1*dt);
  x = aba(x, w2*dt);
  x = la(x, (w2 + w3)*c1*dt);
  x = aba(x, w3*dt);
  x = la(x, w3*c1*dt);
  %}
endfunction