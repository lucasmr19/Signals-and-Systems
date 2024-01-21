function [P_x] = get_Power(x) 
    P_x = sum(abs(x).^2) / length(x); 
    return;
