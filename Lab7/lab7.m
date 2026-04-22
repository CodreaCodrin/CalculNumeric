clc

x = 1:5
f = [14 2 17 23 13]
T = dif_div(x,f)

X = linspace(1,5,1000); %diviziune fina a intervalului [1,5]
LX = Newton_interpolare(x,f,X);
plot(X,LX,'--','color','blue','linewidth',1.5)
grid on
hold on
plot(x,f,'o','markerfacecolor','red')

%HERMITE
timpi=[0 3 5 8 13];
distante=[0  225  383  623  993];
viteze=[75  77   80   74   72];

X = linspace(0,13) %diviziune a intervalului de timp [0,13]
[H,dH] = Hermite_interpolare(timpi,distante,viteze,X)
clf
plot(H,dH,'--','color','blue','linewidth',1.5)
grid on
hold on
plot(distante, viteze,'o','markerfacecolor','red')
