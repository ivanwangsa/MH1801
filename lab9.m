% Activity 9: phase portrait of a system of differential equations

clc
clf
hold on
grid off

%The following are values of constants that could be modified
%The command global is needed to make the values of these constants
%available inside the function RHS.m

global G k f p;
G=0.1;
k=2;
f=0.02;
p=3;

%Setting the initial conditions x(0)=x0 and y(0)=y0 and the time interval
%to be [t1 t2]. Again, these could be modified.

x0=3; y0=4; t1=0; t2=100;

%The following values affect the plot: we draw the curve [x(t) y(t)] where
%x is in the interval [a,b] and y is in the interval [c d], using the grid
%(m+1) by (n+1) for the vector field.

a=-1; b=5; c=0; d=40; m=30; n=30;

%The following command initializes the vector field:

A=@(x,y)G.*x.*y-k.*x;
B=@(x,y)-G.*x.*y-f.*y+p;

%Now plotting the vector field using meshgrid and quiver commands:

[x y]=meshgrid(a:(b-a)/m:b,c:(d-c)/n:d);
quiver(x,y,A(x,y),B(x,y),1,'linewidth',1,'color','blue','linewidth',1)

%Now we'll solve the system of differential equations. It's a bit tricky
%because it requires vector input. Here, X=[x; y] is a vector with two
%components. Besides, the function "ode45" with default settings might not
%be precise enough to produce a good graph. We'll make it more precise by
%the additional command "odeset". If you're interested how it works, select
%the word "odeset" and click F1.

options = odeset('RelTol',1e-5);
[t X]=ode45('RHS',[t1 t2],[x0 y0],options);
x=X(:,1);
y=X(:,2);

plot(x,y,'linewidth',2,'color','black')
axis([a b c d])