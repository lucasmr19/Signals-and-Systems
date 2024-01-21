% In this exercise, we are going to define a discrete signal and
% make transformations: Inversions and shiftings.

% Clear the workspace, close all figures, and clear the command window
clear;
close all;
clc;

% Define a discrete time vector from -3 to 11 with a step of 1
n = -3:1:11;

% Define a discrete signal x[n]
x = [zeros(1,3) 2 0 1 -1 3 zeros(1,7)];

% Plot the original discrete signal x[n]
figure();
stem(n, x)
title('Original Discrete Signal x[n]')
xlabel('x[n]')
ylabel('n')

% Create subplots for transformed signals
figure();

% Subplot 1: Forward shift of 2 units (y1[n] = x[n-2])
subplot(2,2,1)
y1 = x;
ny1 = n + 2;
stem(ny1, y1)
title('x[n-2]. Forward shift by 2')
xlabel('n')
ylabel('x[n-2]')

% Subplot 2: Backward shift of 1 unit (y2[n] = x[n+1])
subplot(2,2,2)
y2 = x;
ny2 = n - 1;
stem(ny2, y2)
title('x[n+1]. Backward shift by 1')
xlabel('n')
ylabel('x[n+1]')

% Subplot 3: Inversion (y3[n] = x[-n])
subplot(2,2,3)
y3 = x;
ny3 = -1 * n;
stem(ny3, y3)
title('x[-n]. Inverted')
xlabel('n')
ylabel('x[-n]')

% Subplot 4: Backward shift of 1 unit and inversion (y4[n] = x[-n+1])
subplot(2,2,4)
y4 = x;
ny4 = n + 1;
ny4 = -1 * ny4;
stem(ny4, y4)
title('x[-n+1]. Backward shift by 1 and Inverted')
xlabel('n')
ylabel('x[-n+1]')
