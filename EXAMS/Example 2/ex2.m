%%
%Author: 
%  ___                                                       _     __      
% /\_ \                                                    /' \  /'_ `\    
% \//\ \   __  __   ___     __      ____   ___ ___   _ __ /\_, \/\ \L\ \   
%   \ \ \ /\ \/\ \ /'___\ /'__`\   /',__\/' __` __`\/\`'__\/_/\ \ \___, \  
%    \_\ \\ \ \_\ /\ \__//\ \L\.\_/\__, `/\ \/\ \/\ \ \ \/   \ \ \/__,/\ \ 
%    /\____\ \____\ \____\ \__/.\_\/\____\ \_\ \_\ \_\ \_\    \ \_\   \ \_\
%    \/____/\/___/ \/____/\/__/\/_/\/___/ \/_/\/_/\/_/\/_/     \/_/    \/_/
%%
clear; 
close all;
clc;

%%
% a)
inct = 0.01;
T = 5;
t = 0:inct:T-inct;

s1_t = exp( (-2 + 1i)*t ) .* ( sin( 21*pi*t +pi/2 ) + 3*cos( 10*pi*t )  );

% Transformada:
N= 500; % Elegir N de tal manera que T = N * inct
incw = 2*pi/((N-1)*inct); % Calcula w (rad/s)
w = -pi/inct:incw:pi/inct;

% Calcular la Transformada de Fourier continua
S1_f = fftshift(fft(s1_t)*inct);
f = w./(2*pi);

% Graficando la s1(t) y el módulo de S1(f):
figure;

subplot(2,1,1)
plot(t, real(s1_t))
hold on
plot(t, imag(s1_t))
hold off
xlabel('t')
ylabel('s_1(t)')
title('Señal s_1(t)')
grid on
legend('Parte Real', 'Parte Imaginaria');

subplot(2,1,2)
plot(f, abs(S1_f))
xlabel('Frecuencia (Hz)')
ylabel('|S_1(f)|')
title('Módulo de S_1(f)')
grid on

% Energía de s1(t):
E_s1_t = inct * sum(abs(s1_t).^2);

% Hallar la w tal que |Xw| sea máximo:
[~, ind_max] = max(abs(S1_f));
frecuencia_maxima = w(ind_max);

%%
% b)
N2 = 500; % Elegir N de tal manera que T = N * inct
s2_t = sinc(10*t);

incw2 = 2*pi/((N2-1)*inct); 
w2 = -pi/inct:incw2:pi/inct;
f2 = w2./(2*pi);

% Calcular la Transformada de Fourier continua
S2_f = fftshift(fft(s2_t)*inct);

figure;

subplot(2,1,1)
plot(t, s2_t)
xlabel('t')
ylabel('s_2(t)')
title('Señal s_2(t)')
grid on

subplot(2,1,2)
plot(f2, abs(S2_f))
xlabel('Frecuencia (Hz)')
ylabel('|S_2(f)|')
title('Módulo de S_2(f)')
grid on

%%
%
E_s2_t = inct * sum(abs(s2_t).^2);

%%
% Apartado c)
% Debemos utilizar la propiedad x(t)*h(t) -> (FT) X(f) . H(f)
S3_f = S1_f .* S2_f;

% Ahora hacemos la transformada inversa para recuperar s3(t):
s3_t = ifft(ifftshift(S3_f)/inct);

% Graficamos:

figure;

subplot(2,1,1)
plot(t, real(s3_t));
hold on
plot(t, imag(s3_t));
xlabel('t')
ylabel('s_3(t)')
title('Señal s_3(t)')
grid on
legend('Parte Real', 'Parte Imaginaria');

subplot(2,1,2)
plot(f, abs(S3_f))
xlabel('Frecuencia (Hz)')
ylabel('|S_3(f)|')
title('Módulo de S_3(f)')
grid on

E_s3_t = inct * sum(abs(s3_t).^2);
