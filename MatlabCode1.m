% EE3370 Project 1
% MATLAB code for function name
% Your Charles Hinkle
% 2/27/14

clc      % Clear screen 
clear    % Clear all variables
A = 3; f= 1000; omega = 2*pi*f; 
angle = (33*pi)/180; % degtorad didn't work on my MATLAB copy so changed it to formula.
T=1/f;
t=linspace(-3*T,3*T,1000);
u_t=heaviside(t);
x_t=3*cos(omega*t+angle);
f_t= cos(omega.*(t+1)) .* sin(omega.*(t+1)) .* u_t;
subplot(4,1,1)
plot(t,x_t, 'linewidth',2);grid on
subplot(4,1,2)
plot(t,u_t, 'linewidth',2);grid on
subplot(4,1,3)
plot(t,x_t.*u_t, 'linewidth',2);grid on
subplot(4,1,4)
plot((t-1),f_t, 'linewidth',2);grid on