function ANSWER=RHS(t,X)

%Creating the RHS for a system of differential equations with two unknowns,
%say x and y. The system is dx/dt=A(x,y) and dy/dt=B(x,y). This MATLAB code
%calculates the RHS for any given values of x and y.

%In MATLAB, the proper format for differential equations is one that
%operates a vector input. Here, X=[x; y] is a two-component vector and
%hence X(1)=x and X(2)=y.

%Getting the values of the constants from the global workspace. Without
%this command, MATLAB would look for values of these variables inside the
%function RHS and they are not defined here.

global G k f p;

%Now we construct the function itself:

A=G.*X(1).*X(2)-k.*X(1);
B=-G.*X(1).*X(2)-f.*X(2)+p;
ANSWER=[A; B];
