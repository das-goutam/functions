function [xsave, ysave] = cartesian_oval(xD,xA,params)
% this functions provides the Cartesian oval for slower pursuer-faster
% evader game; it takes the position of the players, speed ratio and
% capture radius
gamma = params.nu;  % speed ratio < 1
rho = params.r;     % capture radius

lambda = atan((xD(2)-xA(2))/(xD(1)-xA(1)));  % LOS angle

d = norm(xA-xD);    % distance of the players

pm = [-1,1];
xsave = [];
ysave = [];

p = round((1-gamma^2)*(d^2-rho^2),4);
ang = acos(((sqrt(p)-gamma*rho)/d));   

for phi = ang:-pi/1001:-ang
% for phi = -phi
    q = gamma*rho+d*cos(phi);
    r = (q+pm*real(sqrt((q)^2-p)))/(1-gamma^2);
    
    x = xA(1) + r*cos(lambda + phi);
    y = xA(2) + r*sin(lambda + phi);
    
    xsave = [xsave;x];
    ysave = [ysave;y];

end