% In this exercise, we are going to graph a discrete complex signal.
% This can be done in different ways. We propose 2 of them:
% 1. plotting the real part and the imaginary part.
% 2. plotting the magnitude and the phase.

clear;
close all;
clc;

% Define the complex discrete signal in the interval [0,32]:
n = 0:1:32;
x_n = exp(1i * (pi / 8) * n);

% Plot real and imaginary parts
figure;

stem(n, real(x_n));
hold on;
stem(n, imag(x_n));
hold off;
xlabel('n');
ylabel('x[n]');
grid on;
legend('Real Part', 'Imaginary Part');

% Plot magnitude and phase
figure;

stem(n, abs(x_n));
hold on;
stem(n, angle(x_n));
hold off;
xlabel('n');
ylabel('x[n]');
grid on;
legend('|x[n]|', 'Phase(x[n])');
