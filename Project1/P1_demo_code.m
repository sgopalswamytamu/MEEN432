% Project 1 Demo/Scaffolding
% this code is to be used a start-off point, do not expect this code to be
% perfect already.

% Initial Conditions 
w_0 = 1.0; % Initial Angular Velocity [rad/s]
J = 1; % Rotational Inertia [kg-m^2]
b = 1; % Damping Coefficient [N-m-s/rad]
A = 4; % Constant Applied Torque [N-m]

simout = sim("P1_demo.slx");

W = simout.w.Data;
W_DOT = simout.w_dot.Data;
T = simout.tout;

plot(W,T);
plot(W_DOT,T);

%dT = 0.1; % Time Step [s]
%solver = "ode1"; % Fixed Time Step Solver [Euler]
%simout = sim("P1_demo.slx","Solver",solver,"FixedStep",string(dT));

