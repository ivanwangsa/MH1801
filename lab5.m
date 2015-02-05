% Activity 5: plotting solutions on top of direction fields.
% We'll re-produce the illustration from slide 34 of Lecture 4:
% direction fields of the DE dy/dx=-xy/4 and the initial condition y(-3)=1.
% First, plot the direction field with the code from Activity 4

clc
clf
hold on
grid on

a=-4; b=7; c=-0.5; d=4; m=20; n=15;
[x y]=meshgrid(a:(b-a)/m:b,c:(d-c)/n:d);

f=@(x,y)-x.*y./4;
A=@(x,y)x-x+1;
B=@(x,y)f(x,y);

quiver(x,y,A(x,y),B(x,y),2,'linewidth',1,'color','blue','linewidth',1)

% The direction field has been plotted.
%Setting the initial condition:

x0=-3; y0=1;

%The following code solve the DE dy/dx=f(x,y), where f(x,y) is defined
%above. Specifically, it produces the table of values for x and y, where x
%is in the interval from x0 (initial condition) to b (end of the interval)
%Notice the syntax of the command "ode45"

[x,y] = ode45(f,[x0 b],y0)

%The following command just plots the graph of the solution from its table
%of values, which was written into x, y by the previous command

plot(x,y,'linewidth',2,'color','black')
axis([a b c d])