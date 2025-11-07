

figure
[C,h] = contour( datMotor.eta_speed, datMotor.eta_torque, datMotor.eta_val);
clabel(C,h)
h.LineColor='k'
xlabel('Speed (rpm)');
ylabel('Torque (Nm)');
title('Efficiency (%) Contour Maps - Project 4');
grid
hold on
plot(datMotor.rpm,datMotor.maxtorque,'--')



% figure
% plot(datBat.SOC,datBat.OCV)
% xlabel('Cell State of Charge ')
% ylabel('Cell Open Circuit Volage (OCV) - Volts')
% title('Lithium Ion Cell Characteristic - Project 4')
% grid


v_gearanal = [0:10:100] * mph2mps;

grade = atan(0.25) - [0:10:100] / 100 * atan(0.25) + atan(0.05); 

accn_req = 0.4 - [0:10:100]/100 * 0.4;

f_roadload = datCar.C0+datCar.C1 * v_gearanal + datCar.C2 * v_gearanal .* v_gearanal;
f_grade = datCar.m * 9.81 * sin(grade);
f_accn = datCar.m * 9.81 * accn_req;

for gn = 1:length(datCar.gear.gearRatios)

    f_req = f_roadload + f_grade + f_accn;

    omega_m_anal(gn, :) = v_gearanal * datCar.FDRatio * datCar.gear.gearRatios(gn) / datCar.radius;
    tau_req(gn, :) = f_req * datCar.radius / datCar.FDRatio / datCar.gear.gearRatios(gn);
    plot(omega_m_anal(gn, :), tau_req(gn, :), LineWidth=2);
end