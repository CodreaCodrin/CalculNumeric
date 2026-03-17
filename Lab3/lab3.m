clc
A = [10 7 8 7; 7 5 6 5; 8 6 10 9; 7 5 9 10;]
b = [32 23 33 31]'
bp = [32.1 22.9 33.1 30.9]'

y = A \ b # "\" = backslash = rezolva sistemele liniare
yp = A \ bp
#matrice prost conditionata, inputul se modifica usor, iar rezultatul se modifica drasstic

cond(A)
er_rel_input = errel(b, bp)
er_rel_output = errel(y, yp)

er_rel_output / er_rel_input

  for n = 10:15
    c = 1./(1:n); # = [1/1 1/2 ... 1/n]
    cond(vander(c))

endfor

pol_test
condpol(poly(1:15),15)
