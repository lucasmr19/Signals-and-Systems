% In this exercise, we are defining discrete signals, utilizing the
% "decompose_even_odd" function, and plotting the original signals,
% along with their even and odd components using the stem function.
% Finally, we are going to repeat with one example in a continuous
% function.

% Clear the workspace, close all figures, and clear the command window
clear;
close all;
clc;

% Define a discrete time vector from -10 to 10
n = -10:10;

% Calculation of x1[n]
subplot(3,3,1)
x1 = [zeros(1,5) -ones(1,5) ones(1,6) zeros(1,5)];
[x1_even, x1_odd] = decompose_even_odd(x1);
stem(n, x1)
title('Original signal x1[n]')
xlabel('n')
ylabel('x1[n]')

subplot(3,3,2)
stem(n, x1_even)
title('Even Signal Part of x1[n]')
xlabel('n')
ylabel('x1[n] even')

subplot(3,3,3)
stem(n, x1_odd)
title('Odd Signal Part of x1[n]')
xlabel('n')
ylabel('x1[n] odd')

% Calculation of x2[n]
subplot(3,3,4)
x2 = [zeros(1,8) 1 2 3 zeros(1,6) 1 zeros(1,3)];
[x2_even, x2_odd] = decompose_even_odd(x2);
stem(n, x2)
title('Original signal x2[n]')
xlabel('n')
ylabel('Value')

subplot(3,3,5)
stem(n, x2_even)
title('Even Signal Part of x2[n]')
xlabel('n')
ylabel('x2[n] even')

subplot(3,3,6)
stem(n, x2_odd)
title('Odd Signal Part of x3[n]')
xlabel('n')
ylabel('x2[n] odd')

% Calculation of x3[n]
subplot(3,3,7)
x3 = [zeros(1,6) -1 2 2 1 1 2 1 -1 zeros(1,7)];
[x3_even, x3_odd] = decompose_even_odd(x3);
stem(n, x3)
title('Original signal x3[n]')
xlabel('n')
ylabel('x3[n]')

subplot(3,3,8)
stem(n, x3_even)
title('Even Signal Part of x3[n]')
xlabel('n')
ylabel('x3[n] even')

subplot(3,3,9)
stem(n, x3_odd)
title('Odd Signal Part of x3[n]')
xlabel('n')
ylabel('x3[n] odd')

%%
% Define the continuous time vector from 0 to 10 with a step of 0.1
t = 0:0.1:10;

% Define a continuous function, for example, a sinusoidal function
x_t = sinc(t);

% Use the command plot to graph the continuous signal:
figure();

subplot(3,1,1)
plot(t, x_t)
title('Original signal x(t)')
xlabel('t')
ylabel('x(t) even')

% Decompose the continuous function into even and odd parts
[x_t_even, x_t_odd] = decompose_even_odd(x_t);

% Plot the even part of the signal
subplot(3,1,2)
plot(t, x_t_even)
title('Even Signal Part of x(t)')
xlabel('t')
ylabel('x(t) even')

% Plot the odd part of the signal
subplot(3,1,3)
plot(t, x_t_odd)
title('Odd Signal Part of x(t)')
xlabel('t')
ylabel('x(t) odd')
