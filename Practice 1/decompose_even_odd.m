function [x_even, x_odd] = decompose_even_odd(x)
    % Decomposes a signal into its even and odd components.
    %
    % Input:
    %   x: Signal vector
    %
    % Output:
    %   x_even: Even component of the signal
    %   x_odd: Odd component of the signal
    %
    % Description:
    %   This function takes a signal 'x' and decomposes it into its even
    %   (symmetric) and odd (antisymmetric) components using the formula:
    %
    %       x_even = (x + flip(x)) / 2;
    %       x_odd = x - x_even;
    %
    %   where 'flip' reverses the order of the elements in the input signal.
    %
    % Usage example:
    %
    %   % Define a signal
    %   n = 1:1:100;
    %   x_n = sin(n);  % Example sinusoidal signal
    %
    %   % Decompose the signal into even and odd components
    %   [even_part, odd_part] = decompose_even_odd(x_n);
    
    x_even = (x + fliplr(x)) / 2;
    x_odd = x - x_even;
    return;
end
