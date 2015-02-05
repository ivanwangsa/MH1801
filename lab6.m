% Activity 6: solving first order differential equations. Such an equation
% is dy/dx=f(x,y) and the initial condition y(0)=y0.
% For simplicity, we don't plot the grid or the direction field.
% Here, the initial value problem is
% dy/dy=-xy/4, y(0)=3.5.

clc
clf
hold on
grid off

a=0; b=5; c=0; d=5;
x0=0; y0=3.5;

f=@(x,y)-x.*y./4;
[x,y] = ode45(f,[x0 b],y0)
plot(x,y,'linewidth',2,'color','black')

axis([a b c d])
