% In this exercise, we are going to combine the discrete sine and cosine
% signals from the last exercises to create exponential signals
% (with complex values). Again, we will visualize the values of the
% fundamental angular frequency (w0) and fundamental period (N0) for
% different values of "k."

% Clearing the workspace, closing all figures, and clearing the command window
clear;
close all;
clc;

% Define the range of values for the variable "n"
n = 0:10;

figure()

% Loop through values of 'k' from 0 to 8
for k = 0:8
    % Generate a discrete sine signal for the given value of 'k'.
    x = exp(1i * 2 * k * pi * n / 8);

    subplot(3,3,k+1)
    stem(n, real(x))
    hold on
    stem(n, imag(x))
    hold off
    str = sprintf('$ x[n] = e^{j \\frac{2\\pi \\cdot %d \\cdot n}{8}} $', k);
    title(str, 'Interpreter', 'latex');
    xlabel('$n$', 'Interpreter', 'latex')
    ylabel(['$x_' num2str(k) '[n]$'], 'Interpreter', 'latex')
    grid on
end
