function [p2,y2] = muller(p0,p1,p2,eps,imax)
p2
iter = 1;
P(1) = p0;
P(2) = p1;
P(3) = p2;
y0  = f2(p0);
y1  = f2(p1);
y2  = f2(p2);

while(abs(y2)> eps)
  h0 = p0 - p2;
  h1 = p1 - p2;
  c  = y2
  e0 = y0 - c;
  e1 = y1 - c;
  det1 = h0*h1*(h0-h1);
  a  = (e0*h1 - h0*e1)/det1
  b  = (h0^2*e1 - h1^2*e0)/det1
  if  b^2 > 4*a*c,
    disc = sqrt(b^2 - 4*a*c);
  else
    disc = 0;
  end
  if b < 0, disc = - disc; end
  z = - 2*c/(b + disc)
  p3 = p2 + z;
  if  abs(p3-p1) < abs(p3-p0),
    u = p1;
    p1 = p0;
    p0 = u;
    v = y1;
    y1 = y0;
    y0 = v;
  end
  if  abs(p3-p2) < abs(p3-p1),
    u = p2;
    p2 = p1;
    p1 = u;
    v = y2;
    y2 = y1;
    y1 = v;   
  end
  p2 = p3;
  y2 = f2(p2);
  P = [P,p2];
  if(iter>imax)
            error('osiagnieto imax')
  end
  iter = iter +1;
end
end