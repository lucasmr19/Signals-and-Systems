function [E_x_n] = get_Energy_x_n(x)
    % Calculates the energy of a DISCRETE signal.
    %
    % Input:
    %   x: Signal vector
    %
    % Output:
    %   E_x_n: Energy of the signal
    %
    % Usage example:
    %
    %   % Define a discrete signal with a step of 1
    %   n = 0:1:100;
    %   x_n = sin(n);
    %
    %   % Calculate the energy of the signal using the function
    %   energy_x_n = get_Energy_x_n(x_n);
    
    E_x_n = sum(abs(x).^2);
    return;
end
