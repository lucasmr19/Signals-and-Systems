% Similarly to exercise 5, using the `f_get_period` function,
% we are going to study the periodicity of the periodic signals
% multiplication.

% Clearing the workspace, closing all figures, and clearing the command window
clear; 
close all; 
clc;

% Define discrete time values
n = 0:50;

% First set of signals (x1[n] = x1_1[n] * x1_2[n])
x1_1 = sin((pi*n)/4);
x1_2 = cos((pi*n)/4);
x1 = x1_1 .* x1_2;

% Get fundamental periods of individual signals
N01_1 = f_get_period(x1_1);
N01_2 = f_get_period(x1_2);
N01 = f_get_period(x1);

% Repeat with the others signals
x2_1 = cos((pi*n)/4);
x2_2 = x2_1;
x2 = x2_1 .* x2_2;

N02_1 = f_get_period(x2_1);
N02_2 = f_get_period(x2_2);
N02 = f_get_period(x2);


x3_1 = sin((pi*n)/4);
x3_2 = cos((pi*n)/8);
x3 = x3_1 .* x3_2;

N03_1 = f_get_period(x3_1);
N03_2 = f_get_period(x3_2);
N03 = f_get_period(x3);

% Plot the combined signals
figure();

subplot(3,1,1)
stem(n,x1) 
title('x1[n] = x1_1[n] * x1_2[n]')
xlabel('n')
ylabel('x1[n]')
grid on

subplot(3,1,2)
stem(n,x2) 
title('x2[n] = x2_1[n] * x2_2[n]')
xlabel('n')
ylabel('x2[n]')
grid on

subplot(3,1,3)
stem(n,x3)
title('x3[n] = x3_1[n] * x3_2[n]')
xlabel('n')
ylabel('x3[n]')
grid on

% Now, plot a single period of each periodic signal:

n1 = 0:N01;
x1_period = x1(1:N01+1);

n2 = 0:N02;
x2_period = x2(1:N02+1);

n3 = 0:N03;
x3_period = x3(1:N03+1);

figure();

subplot(3,1,1)
stem(n1,x1_period) 
title('x1[n] (1 period)')
xlabel('n')
ylabel('x1[n]')
grid on

subplot(3,1,2)
stem(n2,x2_period) 
title('x2[n] (1 period)')
xlabel('n')
ylabel('x2[n]')
grid on

subplot(3,1,3)
stem(n3,x3_period)
title('x3[n] (1 period)')
xlabel('n')
ylabel('x3[n]')
grid on
