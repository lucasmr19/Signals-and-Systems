% In this exercise, we will perform arithmetic operations
% with signals and visualize the results, emphasizing the differences.

% Clear the workspace, close all figures, and clear the command window
clear; 
close all;
clc;

% Define the time vector "n"
n = 0:1:30;

% Create the discrete signals x1[n] and x2[n]
x1_n = sin((pi * n / 4));
x2_n = cos((pi * n / 7));

% Perform arithmetic operations on the signals.
% IMPORTANT: we use the "." operator for element-wise operations.
y1_n = x1_n + x2_n;     % Addition
y2_n = x1_n - x2_n;     % Subtraction
y3_n = x1_n .* x2_n;    % Multiplication
y4_n = x1_n ./ x2_n;    % Division
y5_n = 2 * x1_n;        % Scalar multiplication
y6_n = x1_n .^ x2_n;    % Element-wise exponentiation

% Notice that the y6[n] signal is complex.
% We are going to graph its real and imaginary parts like we've done in the
% exercise 4.

% Plot x1[n]
subplot(4, 2, 1);
stem(n, x1_n);
title('Original $$x_1[n]=\sin[\frac {\pi n}{4}]$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$x_1[n]$$', 'Interpreter', 'latex');

% Plot x2[n]
subplot(4, 2, 2);
stem(n, x2_n);
title('Original $$x_2[n]=\cos[\frac {\pi n}{7}]$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$x_2[n]$$', 'Interpreter', 'latex');

% Plot y1
subplot(4, 2, 3);
stem(n, y1_n);
title('$$y_1[n] = x_1[n] + x_2[n]$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$y_1[n]$$', 'Interpreter', 'latex');

% Plot y2[n]
subplot(4, 2, 4);
stem(n, y2_n);
title('$$y_2[n] = x_1[n] - x_2[n]$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$y_2[n]$$', 'Interpreter', 'latex');

% Plot y3[n]
subplot(4, 2, 5);
stem(n, y3_n);
title('$$y_3[n] = x_1[n] \cdot x_2[n]$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$y_3[n]$$', 'Interpreter', 'latex');

% Plot y4[n]
subplot(4, 2, 6);
stem(n, y4_n);
title('$$y_4[n] = \frac{x_1[n]}{x_2[n]}$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$y_4[n]$$', 'Interpreter', 'latex');

% Plot y5
subplot(4, 2, 7);
stem(n, y5_n);
title('$$y_5[n] = 2x_1[n]$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$y_5[n]$$', 'Interpreter', 'latex');

% Plot y6[n]
subplot(4, 2, 8);
stem(n, real(y6_n));
hold on
stem(n, imag(y6_n));
title('$$y_6[n] = x_1[n]^{x_2[n]}$$', 'Interpreter', 'latex');
xlabel('$$n$$', 'Interpreter', 'latex');
ylabel('$$y_6[n]$$', 'Interpreter', 'latex');

% Add legend for this plot (Complex signal)
legend('Real Part', 'Imaginary Part', 'Location','best');
