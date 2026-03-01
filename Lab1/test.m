pkg load symbolic

syms x a

1+2

#f = sqrt(x+a)
#c_10 = coef_taylor(f,x,10)

#R = pade_sym(exp(x), 2, 3)
#taylor(R, 'order', 2+3+1)
#taylor(exp(x),'order',2+3+1)

pade_test(exp(x), 2, 3, a=1, b=2)
