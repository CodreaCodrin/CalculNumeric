function T = repsimpson(f,a,b,n)
  h = (b-a)/n;
  x = a : h : (b-h);
  m = (a+h/2) : h : (b-h/2);
  T = h/6 * sum(f(x)+f(x+h)+4*f(m));
