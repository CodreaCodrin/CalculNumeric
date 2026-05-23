% AD = x1 + x2 + x3 = 89
% AC = x1 + x2      = 67
% BD =      x2 + x3 = 53
% AB = x1           = 35
% CD =           x3 = 20

A = [1 1 1; 1 1 0; 0 1 1; 1 0 0; 0 0 1;]
f = [89 67 53 35 20]'
[x, err] = linsys2(A, f)
xp = 0.001 + x
norm(A*xp - f)
