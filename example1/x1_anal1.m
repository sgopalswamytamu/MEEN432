% analysis
tau0 = const_torque;
omega_anal = tau0/b *(1- exp(-b/J*tout)) + omega0 * b/J;

figure(fig1)
hold on
plot(tout,omega_anal,'r')
hold off