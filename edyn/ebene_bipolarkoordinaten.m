#!/usr/bin/env octave

function ebene_bipolarkoordinaten()
  a =  1;
  beta = linspace(0,pi/2,100);
  u = linspace(-pi,pi,100);
  for i = 1:100
    x(i) = [(a * sinh(u(i))) / (cosh(u(i)) + cos(beta(i)))];
    y(i) = [(a * sin(beta(i))) / (cosh(u(i)) + cos(beta(i)))];
  end
  plot1 = plot(x,y);
  waitfor(plot1);
end
