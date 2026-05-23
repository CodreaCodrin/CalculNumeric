x=[-1.024940 -0.949898 -0.866114 -0.773392 -0.671372 ...
-0.559524 -0.437067 -0.302909 -0.159493 -0.007464]';
y=[-0.389269 -0.322894 -0.265256 -0.216557 -0.177152 ...
-0.147582 -0.128618 -0.121353 -0.127348 -0.148895]';

A = [y.^2 x.*y x y ones(10, 1)]
f = x.^2
[coef, err1] = linsys2(A, f)
a = coef(1); b = coef(2); c = coef(3);
d = coef(4); e = coef(5);
clf;
subplot(1, 2, 1)
ezplot(@(X, Y) a*Y.^2+b*X.*Y+c*X+d*Y+e-X.^2, N = 1000)
axis([-2 2 -3 0])
hold on
plot(x, y, '*')

%%%%%%%%%%%%%%%%
A = [y ones(10, 1)]
f = x.^2
[coef, err2] = linsys2(A, f)
a = coef(1); b = coef(2);
subplot(1, 2, 2)
ezplot(@(X, Y) a*Y+e-X.^2, N = 1000)
axis([-2 2 -3 0])
hold on
plot(x, y, '*')
