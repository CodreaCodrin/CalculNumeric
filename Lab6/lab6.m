# Aproximati sqrt(115) cu 3 zecimale exacte prin interpolarea Lagrange

nodes = [81, 100, 121] #patrate perfecte
values = [11 9 10 12]
L(x) = lagrange_sym(nodes, values)
format long
aprox = double(L(115))
exact = sqrt(115)
eroare = abs(aprox-exact)

f(x) = sqrt(x)
df4(x) = diff(f,4)
syms csi # este intre 81 si 144
Rf_115 = prod(115 - nodes)/factorial(sym(4)) * df4(csi)
eroare = abs(Rf_1150 # < 10^-3=0.001
