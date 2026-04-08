clc

format long

n = 10

A = diag(5*ones(n,1)) + ...
    diag(-ones(n-1,1),1) + ...
    diag(-ones(n-1,1),-1)

b = [4; 3*ones(n-2, 1); 4]

x = Jacobi_it(A,b,10)
x = GS_it(A,b,10)
x = SOR_it(A,b,1.039,10)

[x_J, ni_J, rho_J]=Jacobi(A,b,err=1e-7)
[x_GS, ni_GS, rho_GS]=GS(A,b,err=1e-5)
omega = 2 / (1+sqrt(1- rho_J^2))
[x, ni, rho]=SOR(A,b,omega,err=1e-5)

