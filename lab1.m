% Activity 1: plot
% Here we plot the graph of the function x*e^(-x^2)
% Recall that ; prevents output (try to remove ; and run the code to see
% what happens without it)

%The following code initializes the plotting window.
%You don't have to understand what these commands do.
%If you want, read MATLAB manual by selecting a command and pressing F1
%or do a google search like 'clc command MATLAB'

clc
clf
hold on
grid on

%We are going to plot the graph for a<=x<=b and c<=y<=d
%Besides, we'll use 1001 approximation points for plotting
%The parameters a, b, c, d, n can be modified

a=-3;
b=3;
c=-3;
d=3;
n=1000;

%The following code prepares the data for plotting.
%It creates two arrays for x and y values.

x=a:(b-a)/n:b;
y=exp(-x.^2).*x;

%Notice that the exponential function is denoted exp and that operations of
%square and multiplication are preceded by a dot. The reason is without
%this dot, MATLAB will try to use matrix multiplication instead of
%component-wise multiplication, which will cause an error.
%The following code plots the graph in red colour and line of width 2
%pixels.

plot(x,y,'color','red','linewidth',2)

%Finally, the following command changes the size of the plane that is
%actually seen on the plot to the rectangle a<=x<=b and c<=y<=d

axis([a b c d])