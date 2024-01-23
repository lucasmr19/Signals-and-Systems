function fundamental_period = f_get_period(signal)
    %   Determines the fundamental period of a DISCRETE-time signal.
    %   If the signal is non-periodic, it returns 0,
    %   and if the signal is a constant value, it returns 1.
    %
    %   Parameters:
    %      - signal: Discrete-time signal for which the fundamental period is to be determined.
    %
    %   Returns:
    %      - fundamental_period: Positive integer representing the fundamental period of the signal.
    %                            0 if the signal is non-periodic, and 1 if it is a constant signal.
    %
    %   This function checks if the signal is a constant value and, if not, iterates through
    %   different periods from 1 to half the length of the signal. It uses the function
    %   `f_test_period` to determine if the signal is periodic with the current period.
    %
    %   Example:
    %      signal = [1, 2, 3, 1, 2, 3, 1, 2, 3]; % A periodic signal with period 3
    %      result = f_get_period(signal); % Returns 3

    fundamental_period = 0;
    
    if all(signal == signal(1))
        fundamental_period = 1;
        return; % Constant signal
    end
    
    for period = 1:length(signal)/2
        % Calls f_test_period_n
        if strcmp(f_test_period(signal, period), 'True')
            fundamental_period = period;
            return; % Periodic signal
        end
    end
end
