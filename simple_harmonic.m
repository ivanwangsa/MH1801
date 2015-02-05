%RHS for the simple harmonic oscillator
function dy = simple_harmonic(t,y)
global k M;
dy = zeros(2,1);
dy(1) = y(2);
dy(2) = -k*y(1)/M;