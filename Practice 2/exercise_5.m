% In this exercise, using the f_get_period function from "Useful
% functions", we are going to study the periodicity of the periodic signals
% addition.

% Clearing the workspace, closing all figures, and clearing the command window
clear;
close all;
clc;

% Define discrete time values
n = 0:100;

% Common factor divider
N = 6; 

figure();

subplot(3,1,1)

% First set of signals (x1[n] = x1_1[n] + x1_2[n])
x1_1 = cos((2*pi*n)/N);
x1_2 = 2*cos((3*pi*n)/N);

% Get fundamental periods of individual signals
N01_1 = f_get_period(x1_1);
N01_2 = f_get_period(x1_2);

% Combine signals
x1 = x1_1 + x1_2;

% Get fundamental period of combined signal
N01 = f_get_period(x1);

% Plot the combined signal
stem(n,x1) 
title('x1[n]= x1_1[n] + x1_2[n]')
xlabel('n')
ylabel('x1[n]')
grid on

% Repeat with the others signals

subplot(3,1,2)

x2_1 = cos((2*n)/N);
x2_2 = cos((pi*n)/N);

N02_1 = f_get_period(x2_1); % x2_1[n]is NOT periodic
N02_2 = f_get_period(x2_2);

x2 = x2_1 + x2_2;

N02 = f_get_period(x2); % The signal x2[n] is NOT periodic cause x2_1[n]

stem(n,x2) 
title('x2[n]= x2_1[n] + x2_2[n]')
xlabel('n')
ylabel('x2[n]')
grid on

subplot(3,1,3)

x3_1 = cos((2*pi*n)/N);
x3_2 = 3*cos((5*pi*n)/(2*N));

N03_1 = f_get_period(x3_1);
N03_2 = f_get_period(x3_2);

x3 = x3_1 + x3_2;

N03 = f_get_period(x3);

stem(n,x3)
title('x2[n]= x3_1[n] + x3_2[n]')
xlabel('n')
ylabel('x3[n]')
grid on

%%
% Now, graph the signals in the obtained period. For x2[n] (aperiodic),
% graph in the interval [0,50]

figure();

subplot(3,1,1)

n1 = 0:N01;
x1 = x1(1:N01+1);

stem(n1,x1) 
title('x1[n] (1 period)')
xlabel('n')
ylabel('x1[n]')
grid on

subplot(3,1,2)

n2 = 0:50;
x2 = x2(1:51);

stem(n2,x2) 
title('x2[n] (aperiodic)')
xlabel('n')
ylabel('x2[n]')
grid on

subplot(3,1,3)

n3 = 0:N03;
x3 = x3(1:N03+1);

stem(n3,x3) 
title('x3[n] (1 period)')
xlabel('n')
ylabel('x3[n]')
grid on
