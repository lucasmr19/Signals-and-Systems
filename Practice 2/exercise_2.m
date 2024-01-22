% Similarly to Exercise 1 in this practice, we are going to define 
% a discrete sine signal and study how its fundamental angular
% frequency (w0) and fundamental period (N_0) change for different values of 
% "k".

% Clearing the workspace, closing all figures, and clearing the command window
clear;
close all;
clc;

% Define the range of values for the variable "n"
n = 0:10;

figure('Name','Initial signals')

% Loop through values of 'k' from 0 to 8
for k = 0:8
    % Generate a discrete sine signal for the given value of 'k'
    x1 = sin((2*k*pi*n)/8);
    subplot(3,3,k+1)
    stem(n, x1)
    str = sprintf('$ \\sin\\left(\\frac{2\\pi \\cdot %d \\cdot n}{8}\\right) $', k);
    title(str, 'Interpreter', 'latex');
    xlabel('$n$', 'Interpreter', 'latex')
    ylabel(['$x_' num2str(k) '[n]$'], 'Interpreter', 'latex')
end

% If we look carefully, the graphs of x4[n] and x8[n] both must be
% exactly 0 for any "n" value (if we analyze them analytically, we can observe 
% that). Although in the plot, these two signals may appear different, 
% they are essentially zero, differing only in a scale of 1e-15, 
% making them effectively zero.

% Due to this fact, we are going to repeat the rounding of the values of the 
% signal to a lower precision.

precision = 8;

figure('Name','Corrected Signals')

for k = 0:8
    % Generate a discrete sine signal for the given value of 'k'
    x1 = sin((2*k*pi*n)/8);
    
    % Round the values to 8 decimal places for correction
    x1 = round(x1*10.^precision) / 10.^precision;
    subplot(3,3,k+1)
    stem(n, x1)
    str = sprintf('$ \\sin\\left(\\frac{2\\pi \\cdot %d \\cdot n}{8}\\right) $', k);
    title(str, 'Interpreter', 'latex');
    xlabel('$n$', 'Interpreter', 'latex')
    ylabel(['$x_' num2str(k) '[n]$'], 'Interpreter', 'latex')
end
