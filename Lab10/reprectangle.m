function R = reprectangle(f,a,b,n)
  h = (b-a)/n; %lungimea fiecarui subinterval
  m = (a+h/2) : h : (b-h/2); % mijloace
  R = h * sum(f(m));
