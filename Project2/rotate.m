% Transformation Matrix Functions

% Main rotate function that calls on a TF matrix
function xyt = rotate(xy,theta)
    xyt = TF(theta) * xy;
end

% TF matrix function 
function y = TF(psi)
    y = [cos(psi), -sin(psi); sin(psi), cos(psi)];
end