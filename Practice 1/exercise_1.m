% In this exercise, we are going to create a discrete signal and graph it.
% For graphing discrete signals, use the stem command.
% Also, for convention use the commands clear, close and clc in all the 
% scripts at the beginning:

clear; % Clear the workspace 
close all; % Close one of more figures
clc; % clears all the text from the Command Window

% Define a discrete time vector from 0 to 16 with a step of 1 (USE THIS STEP ALWAYS FOR DISCRETE SIGNALS, n must be an integer)
n = 0:1:16;

% Create a discrete signal x1[n] = cos(pi*n/4)
x1_n = cos(pi * n / 4);

% Calculate the mean (average) of the signal x1[n]
mean_x1_n = mean(x1_n);

% Plot the discrete signal x1[n] using red stems
stem(n, x1_n, 'r')

% Add title and axis labels to the plot (it's not necesary to use LaTeX) 
title('$$x_1[n] = \cos(\frac{\pi n}{4})$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$x_1[n]$$', 'Interpreter', 'latex');
grid on % Optional, adds a grid to the graph

% Hold the current plot for overlaying additional elements
hold on

% Create a horizontal line representing the mean value (array repetition of the mean value)
mean_x1_n_array = mean_x1_n * ones(1, 17);

% Plot the mean value as a green line (we use the plot command for a continuous graph)
plot(n, mean_x1_n_array, 'g')

% Release the hold on the plot to prevent further overlay
hold off

% Add a legend to the plot
legend('$$x_1[n]$$', 'Mean $$x_1[n]$$', 'Interpreter', 'latex');
