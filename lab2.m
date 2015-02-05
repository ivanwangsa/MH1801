% Activity 2: more advanced plotting
% Here we plot the graphs of two functions. In both cases, the domain is
% not the whole set of real numbers. There will be two plots: good and bad.
% Recall that ; prevents output (try to remove ; and run the code to see
% what happens without it)

%We are going to plot the graph for a<=x<=b and c<=y<=d
%Besides, we'll use 1001 approximation points for plotting
%The parameters a, b, c, d, n can be modified

a=-3;
b=3;
c=-3;
d=3;
n=1000;

%The following code initializes two plotting windows and takes you to
%the first window. The point is to create a bad plot in the first window
%and a good plot in the second window.

clc
clf
subplot(1,2,1)
hold on
grid on

%The following code prepares the data for bad plotting.
%It creates three arrays:
%array for independent variable x, array for y(x), and array for z(x)

x=a:(b-a)/n:b;
y=sqrt(1-x.^2);
z=1./(x-1.25);

%The following code plots the graph in default colours and lines of default
%width 1 and specified style: '-' for a solid and '--' for dashed

plot(x,y,'-',x,z,'--')

%Notice that both graphs are wrong: the graph for y(x) doesn't account for
%the fact that x can only be from the interval [-1,1] and the graph for
%z(x) has a strange vertical piece of line.
%Here we set the visible window to the rectangle a<=x<=b and c<=y<=d

axis([a b c d])

%Now we initialize the second plotting window. Here we need the 'hold on'
%command because we will be adding things to the plot

subplot(1,2,2)
hold on
grid on

%The following code prepares the data for good plotting. Notice that the
%domain of the function y(x) is the interval [-1,1] and the domain of the
%function z(x) is everything except for 1.25. We'll create two different
%arrays for the independent variable x1 and x2, for the two functions.
%Notice that x1 only runs between -1 and 1 while x2 explicitly skips the
%value 1.25 and inserts NaN into the array at the place where 1.25 should
%have been.

x1=-1:2/n:1;
y=sqrt(1-x1.^2);
x2=[a:(b-a)/n:1.25-(b-a)/n NaN 1.25+(b-a)/n:(b-a)/n:b];
z=1./(x2-1.25);

%The following code plots the correct graphs:

plot(x1,y,'color','red','linewidth',2)
plot(x2,z,'color','blue','linewidth',2)

%Here we set the visible window to the rectangle a<=x<=b and c<=y<=d

axis([a b c d])
