function [E_x_t] = get_Energy_x_t(x, tstep)
    % Calculates the energy of a CONTINUOUS signal.
    %
    % Input:
    %   x: Signal vector
    %   tstep: Time step between samples
    %
    % Output:
    %   E_x_t: Energy of the signal
    %
    % Usage example:
    %
    %   % Define a continuous signal with a time step of 0.01 seconds
    %   inct = 0.01;
    %   t = 0:inct:100;
    %   x_t = sin(t);  % Example sinusoidal signal
    %
    %   % Calculate the energy of the signal using the function
    %   energy_x_t = get_Energy_x_t(x_t, inct);
    
    E_x_t = tstep * sum(abs(x).^2);
    return;
end
