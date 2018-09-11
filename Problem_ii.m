%%%%%%%%%%%%%%%%%%%%%%%%%
% Simulate the sliding mode control
% u(x)= -4 sgn(x1+x2) for initial conditions x1=1, x2=0. 
% Plot the states x1(t) and x2(t) as well as the control input u(t).
%%%%%%%%%%%%%%%%%%%%%%%%%

clear all;
close all;
clc;
 
% initial conditions
ic = [1; 0];
% numerical integration using ODE23
[t,x1] = ode23(@(t,x)[x(2); -9.81*cos(x(1))-40*sign(x(1)+x(2))]...
    ,[0 10],ic);
% numerical integration using ODE45
% [t,x2] = ode45(@(t,x)[x(2); -9.81*cos(x(1))-40*sign(x(1)+x(2))]...
%     ,[-5 5],ic);
% phase plane trajectories
figure(1)
plot(x1(:,1),x1(:,2),'b--o');
% figure(2)
% plot(x2(:,1),x2(:,2),'r--o');
