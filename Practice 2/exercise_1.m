% In this exercise, we are going to define a discrete cosine signal and study
% the evolution of its fundamental angular frequency and fundamental period
% for different values of "k".

% Clearing the workspace, closing all figures, and clearing the command window
clear;
close all;
clc;

% Define the range of values for the variable "n" 
n = 0:10;

figure;

% Loop through values of 'k' from 0 to 8.
for k = 0:8
    % Generate a discrete cosine signal for the given value of 'k'
    x_n = cos((2*k*pi*n)/8);
    subplot(3, 3, k+1);
    stem(n, x_n);
    title(['$ \cos\left(\frac{2\pi ' num2str(k) 'n}{8}\right) $'], 'Interpreter', 'latex');
    xlabel('$n$', 'Interpreter', 'latex');
    ylabel(['$x_' num2str(k) '[n]$'], 'Interpreter', 'latex');
end
