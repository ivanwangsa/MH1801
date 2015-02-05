% Activity 3: plotting vector fields.

clc
clf
hold on
grid on

%The following command prepares the grid for the plotting.
%Here, both x and y take integer values between 0 and 5.

%Since there is no semicolon, you'll see the values of x and y in the main
%MATLAB window

%Besides, the grid is explicitly plotted as a collection of little yellow
%circles with blue outline

[x y]=meshgrid(0:5,0:5)

plot(x,y,'o','color','blue','markerfacecolor','yellow')

%The following code introduces A and B as explicit expressions in x and y

A=@(x,y)-y;
B=@(x,y)x;

%Now we'll plot the vector field (-y,x) in magenta color and line of width 2

quiver(x,y,A(x,y),B(x,y),'linewidth',2,'color','magenta')