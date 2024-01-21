function [P_x] = get_Power(x)
    % Calculates the power of a signal (DISCRETE OR CONTINUOUS).
    %
    % Input:
    %   x: Signal vector
    %
    % Output:
    %   P_x: Power of the signal
    %
    % Usage example:
    %
    %   % Example with a continuous signal
    %   inct = 0.01;
    %   t = 0:inct:100;
    %   x_t = cos(t);  % Example sinusoidal signal
    %
    %   % Calculate the power of the signal using the function
    %   power_x_t = get_Power(x_t);
    %
    %   % Example with a discrete signal
    %   n = 0:1:100;
    %   x_n = cos(n);  % Example sinusoidal signal
    %
    %   % Calculate the power of the signal using the function
    %   power_x_n = get_Power(x_n);

    P_x = sum(abs(x).^2) / length(x);
    return;
end
