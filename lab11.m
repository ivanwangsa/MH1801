% Activity 11: simple harmonic oscillator
% You can think of a weight on a spring, where M is the mass of the object
% and k is the coefficient for Hooke's Law.

clc
clf
global k M;
k=1.2; M=5.2;

%The following is the period of motion predicted by the theory:

2*pi*sqrt(M/k)

% Does it match the graph?
%Setting the initial conditions:

x0=3; y0=0;
t1=0; t2=50;

%We draw the curve [x(t) y(t)] for x,y in the rectangle [a,b] by [c,d].

a=-4; b=4; c=-4; d=4; m=30; n=30;

%The following command initializes the vector field:

A=@(x,y)y;
B=@(x,y)-k.*x./M;
subplot(1,2,1)
hold on
grid on

%Now plotting the vector field using meshgrid and quiver commands:

[x y]=meshgrid(a:(b-a)/m:b,c:(d-c)/n:d);
quiver(x,y,A(x,y),B(x,y),1,'linewidth',1,'color','blue','linewidth',1)

options = odeset('RelTol',1e-4);
[t X]=ode45('simple_harmonic',[t1 t2],[x0 y0],options);
plot(X(:,1),X(:,2),'linewidth',2,'color','black')
axis([a b c d])

subplot(1,2,2)
plot(t,X(:,1),'linewidth',2,'color','black')
grid on
axis([t1 t2 c d])
