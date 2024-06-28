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

[x_t, Fs] = audioread('ejercicio3_2023.wav');
inct = 1/Fs;
N = size(x_t, 1);
L = (N-1)*inct;
t = 0:inct:L;
x_t = x_t';

figure();

plot(t,x_t)
title('Señal x(t)')
xlabel('Tiempo(s)')
ylabel('x(t)')
xlim([1.5 3])
grid on

% Encuentra los índices donde se cumple la condición:
index_t_1 = find(t == 1.5);
index_t_2 = find(t == 3);

E_x_t_intervalo = sum(abs(x_t(index_t_1:index_t_2)).^2) * inct;

%%
% b)

incw = (2*pi)/(N*inct);
w = -pi/inct:incw:(pi/inct)-incw;
Xw = fftshift(fft(x_t)*inct);
f = w./(2*pi);


figure;

plot(f,abs(Xw))
title('Señal |X(f)|')
xlabel('Frecuencia (Hz)')
ylabel('|X(f)|')
grid on

% Hallar w máxima y luego sacar f dividiendo entre 2pi:
Xw_maxima = max(abs(Xw));
indice_Xw_maxima = find(abs(Xw) == Xw_maxima); % Hay dos valores ya que la Xw es simétrica 

omega_MAX1 = w(indice_Xw_maxima(1)); 
omega_MAX2 = w(indice_Xw_maxima(2));

f_MAX1 = omega_MAX1/(2*pi);
f_MAX2 = omega_MAX2/(2*pi);

%%
% c) Filtro paso banda
f1 = f_MAX2;
f2 = 2 + f_MAX2;

H = 1 * (abs(f) >= f1 & abs(f) <= f2); % Filtro con ganancia 1
X2w = Xw .* H;
x2_t = ifft(ifftshift(X2w)) / inct;

% Graficar la respuesta en frecuencia del filtro
figure;

% Graficar la señal x2(t)
subplot(2,1,1)
plot(t, real(x2_t));
title('Señal x_2(t)');
xlabel('Tiempo (s)');
ylabel('x_2(t)');
grid on;

subplot(2,1,2)
plot(f, abs(X2w));
title('Señal |X_2(f)|');
xlabel('Frecuencia (Hz)');
ylabel('|X_2(f)|');
grid on;
