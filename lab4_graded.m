% Activity 4: plotting direction fields.
% The direction field for a differential equation dy/dx=f(x,y) is
% the same as the vector field given by A=1, B=f(x,y)

clc
clf
hold on
grid on

%We'll plot our vector field for a<=x<=b and x<=y<=d
%over the grid of dimensions (m+1) by (n+1).
%First, we initialize parameters (so it's easier to change them in future)
%and then use the meshgrid command. We'll plot the grid too.

a=-4; b=7; c=-0.5; d=4; m=20; n=15;
[x y]=meshgrid(a:(b-a)/m:b,c:(d-c)/n:d);
plot(x,y,'o','markersize',2)

%The following code introduces A and B as explicit expressions in x and y

f=@(x,y)-x.*y./4; %it's important to use .* and ./ instead of just * and /

A=@(x,y)x-x+1;    %adding x-x is needed to sync the dimensions of A and x

B=@(x,y)f(x,y);

%Now we'll plot the slope field
%Notice the additional argument 2 of the quiver function - it makes each
%little arrow twice as long as it is supposed to be otherwise. Without it,
%some arrows will be too small (of course, now some of them are too big)

quiver(x,y,A(x,y),B(x,y),2,'linewidth',1,'color','blue')

axis([a b c d])
