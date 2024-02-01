fig1 = figure;
plot(tout,omega.Data,'-+')
grid on
xlabel('time (s)')
ylabel('angular velocity (rad/s)')
title('Angular velocity of Shaft')

fig2 = figure;
plot(tout,theta.Data)
grid on
xlabel('time (s)')
ylabel('position (rad)')
title ('Rotation of Shaft')