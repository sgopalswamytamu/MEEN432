% This animates the patch vehicle going around the generated track

%% From a Kinematic Model
simout = sim("p2_demo_wk1.slx");
car_X = simout.X.Data;
car_Y = simout.Y.Data;
car_psi = simout.psi.Data;
car_time = simout.tout;

path_X = path.xpath;
path_Y = path.ypath;

%% From no model
% xpath = path.xpath;
% ypath = path.ypath;
% theta = path.tpath;

%% Animating the patch
fh = figure();
fh.WindowState = 'maximized';
hold on
plot(path.xpath,path.ypath,'--r'); axis equal; % plots center line
plot(path.xinpath, path.yinpath, 'b'); axis equal; % plots inside border 
plot(path.xoutpath, path.youtpath,'b'); axis equal; % plots outside border
axis([min(path.xoutpath) , max(path.xoutpath) , min(path.youtpath) , max(path.youtpath)]) % limits axis for better viewing
xlabel('X Distance (m)') % x axis label
ylabel('Y Distance (m)') % y axis label
title('Project 2 Track') % title
grid
h = animatedline; % handle of animatedline

L = 15;
width = 5;
for i = 1:length(car_X)
    x = car_X(i);
    y = car_Y(i);
    psi = car_psi(i);
    addpoints(h,x,y) % this will add points as an animated line based on the center line path components
  
    car = [-L/2 -width/2; -L/2 width/2; L/2 width/2; L/2 -width/2]; % array of the vertices of the car
    rcar = rotate(car', 0)'; 
    a = polyshape(rcar + [x,y]);
    ap = plot(a); % plotting the shape of the car
    drawnow limitrate
    ap.FaceColor = 'k'; % makes car black
    drawnow limitrate 
    pause(0.05);
    delete(ap)
end
race = raceStat(car_X, car_Y, car_time, path)
hold off

