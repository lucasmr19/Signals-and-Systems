function is_periodic = f_test_period(signal, period)
    %   Checks if a DISCRETE-time signal is periodic with a given period.
    %   It returns true if the signal has the specified period, 
    %   and false otherwise.
    %
    %   Parameters:
    %      - signal: Discrete-time signal to be tested for periodicity.
    %      - period: Positive integer representing the suspected period of the signal.
    %
    %   Returns:
    %      - is_periodic: Logical value, true if the signal is periodic with the given period,
    %                     false otherwise.
    %
    %   This function internally uses the 'length' function to determine the length of
    %   the signal and checks if the signal repeats with the specified period.
    %
    %   Example:
    %      signal = [1, 2, 3, 1, 2, 3, 1, 2, 3]; % A periodic signal with period 3
    %      period = 3;
    %      result = f_test_period(signal, period); % Returns True

    signal2 = signal(period + 1:end);

    if all(abs(signal2 - signal(1:length(signal2))) <= 10^(-8))
        is_periodic = 'True';
    else 
        is_periodic = 'False';
    end
end
