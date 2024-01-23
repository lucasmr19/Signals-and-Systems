% In this exercise, we will compare discrete and continuous signals, 
% focusing on the values of the fundamental angular frequency (w0) and
% fundamental period (N0 for discrete, T0 for continuous).

% Clearing the workspace, closing all figures, and clearing the command window
clear;
close all;
clc;

% Discrete time interval (n)
n = 0:100;

% Continuous time interval (t)
inct = 0.2;
t = 0:inct:100;

% Discrete signals
x1_discrete = cos((2*pi*n)/12);
x2_discrete = cos((8*pi*n)/31);
x3_discrete = cos(n/2);

% Continuous signals
x1_continuous = cos((2*pi*t)/12);
x2_continuous = cos((8*pi*t)/31);
x3_continuous = cos(t/2);

% Create the figure with three subplots in rows
figure;

% Subplot 1
subplot(3,1,1);
stem(n, x1_discrete);
hold on;
plot(t, x1_continuous, 'r');
title('x_1[n], x_1(t)');
grid on;

% Subplot 2
subplot(3,1,2);
stem(n, x2_discrete);
hold on;
plot(t, x2_continuous, 'r');
title('x_2[n], x_2(t)');
grid on;

% Subplot 3
subplot(3,1,3);
stem(n, x3_discrete);
hold on;
plot(t, x3_continuous, 'r');
title('x_3[n], x_3(t)');
grid on;
