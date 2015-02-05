% Activity 7: analysing a differential equation using all the tools we have
% learned in MATLAB and in Calculus.

clc
clf

%Set the values of constants and define the equation and the vector field

a=-1.5; b=1.5; c=-1.5; d=1.5; m=24; n=24;
x0=-1.5; y0=1.3;
r=-0.8;

f=@(x,y)r.*y+y.^3-y.^5;
A=@(x,y)x-x+1;
B=@(x,y)f(x,y);

%plot the direction field and the solution:

subplot(1,2,1)
hold on
[x y]=meshgrid(a:(b-a)/m:b,c:(d-c)/n:d);
quiver(x,y,A(x,y),B(x,y),1.5,'linewidth',1,'color','blue','linewidth',1)
[x,y] = ode45(f,[x0 b],y0);
plot(x,y,'linewidth',2,'color','black')
axis([a b c d])

%Notice that the RHS is a function of only y. Let's plot the graph of this
%function to find its zeroes - they are constant solutions of the D.E.
subplot(1,2,2)
hold on
grid on

t=a:(b-a)/1000:b;
y=f(t,t);
plot(t,y,'linewidth',2,'color','red')
axis([a b c d])
