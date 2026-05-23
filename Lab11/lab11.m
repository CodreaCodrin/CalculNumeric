#clc
#pkg load symbolic
#syms x
#a = -Inf
#b = Inf
#w = exp(-x^2)
#n = 3
#pin = orto_poly_sym_type('Hermite',n)
#nodes = solve(pin,x)'
#coefs = gauss_coefs_sym(w,a,b,nodes)
#f(x) = cos(cos(x))
#I = double(coefs * f(nodes)')
#Q = quad(@(x) cos(cos(x))*exp(-x.^2),-Inf,Inf)
#err = abs(I-Q)
#J = gauss_quad_num('Hermite', @(x) cos(cos(x)), 10)

syms x
a = -1
b = 1
n = 4
w = 1/sqrt(1-x^2)
wab = simplify((x-a)*(b-x)*w)
pi2 = orto_poly_sym_type('Cebisev2', n-2)
nodes = [a,solve(pi2,x)',b]
coefs = gauss_coefs_sym(w,a,b,nodes)
#rest_fara_f = int(pi2^2*wab,x,a,b)/factorial(2*n-2)

I = double(coefs * exp(nodes)')
err = e * pi/23040
