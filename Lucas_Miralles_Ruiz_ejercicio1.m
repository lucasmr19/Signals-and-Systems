clear; 
close all;
clc;

%%
% Ejercicio 1:
ini = -10;
n = ini+1:50;
x1_n = ( 2*1i*sin( (2*pi*n)/5 ) + 2*cos( (2*pi*n)/5 ) ) .* exp( (-1i*3*pi*n)/5);
x2_n = (sin( n/5 + (1i*pi)/2 ) ).^(n/30);

%%
% Apartado a)

% Graficar las señales
figure;

% Gráfico para x1[n]
subplot(2, 1, 1);
stem(n, real(x1_n));
title('Señal x1[n]');
xlabel('n');
ylabel('x_1[n]');
hold on
stem(n, imag(x1_n));
hold off
legend('Parte Real', 'Parte Imaginaria');

% Gráfico para x2[n]
subplot(2, 1, 2);
stem(n, real(x2_n));
title('Señal x2[n]');
xlabel('n');
ylabel('x_2[n]');
hold on
stem(n,imag(x2_n));
hold off
legend('Parte Real', 'Parte Imaginaria');

%%
% Apartado b)
% Energía de las señales
E_x1_n = sum(abs(x1_n).^2);
E_x2_n = sum(abs(x2_n).^2);

%%
% Apartado c)

a = [1 0 -1/3 1/3];
b = [2 0 0 -1/2];

y1_n = filter(b,a,x1_n);
y2_n = filter(b,a,x2_n);

% Graficar las señales
figure;

% Gráfico para y1[n]
subplot(2, 1, 1);
stem(n, real(y1_n));
title('Señal y1[n]');
xlabel('n');
ylabel('y_1[n]');
hold on
stem(n, imag(y1_n));
hold off
legend('Parte Real', 'Parte Imaginaria');

% Gráfico para x2[n]
subplot(2, 1, 2);
stem(n, real(y2_n));
title('Señal y_2[n]');
xlabel('n');
ylabel('y_2[n]');
hold on
stem(n,imag(y2_n));
hold off
legend('Parte Real', 'Parte Imaginaria');
%%
% Energía de las señales de salida
E_y1_n = sum(abs(y1_n).^2);
E_y2_n = sum(abs(y2_n).^2);

%%
H1 = y1_n./x1_n; % Esta función no se estabiliza, no es autofunción
H2 = y2_n./x2_n; % Mirando en los valores finales de H2 tiende al autovalor
                 % 0.110151837684940 - 0.348873989385023j. Por tanto es autofunción.

% Esto NO es necesario pero ayuda a visualizarlo
figure();

subplot(2,1,1)
stem(n,abs(H1))
title('H1[n]')
xlabel('n')
ylabel('H1[n]')
ylim([-2,4])
xlim([0,50])
hold on
stem(n,angle(H1))
hold off
legend('|H1[n]|','ang(H1)')


subplot(2,1,2)
stem(n,abs(H2))
title('H2[n]')
xlabel('n')
ylabel('H2[n]')
ylim([-5,10])
xlim([0,50])

hold on
stem(n,angle(H2))
legend('|H2[n]|','ang(H2)')
hold off

%%
% Apartado 2)
n = -52:1:156-1;
x3_n_periodo = [repmat(-2, 1, 13) repmat(-1, 1, 13) ones(1,13) repmat(2, 1, 13)];

x3_n = repmat(x3_n_periodo, 1, 4); % Se repite 4 veces porque (156 + 52)/(4 * 13) = 4

x4_n = x3_n + sin((pi*n)/26);
%%
% e)
% Graficar
figure;

subplot(2,1,1)
stem(n, x3_n);
title('Señal x3[n]');
xlabel('n');
ylabel('x3[n]');
grid on

subplot(2,1,2)
stem(n, x4_n);
title('Señal x4[n]');
xlabel('n');
ylabel('x4[n]');
grid on

% Energía de las señales:
E_x3_n = sum(abs(x3_n).^2);
E_x4_n = sum(abs(x4_n).^2);

period_x4_n = 52; %Por la propia definición de la señal u observando el gráfico u observando el tamaño
                  % del array x3_n_periodo. 

                  
%%
% i)
n_grafica = 0:51;
x4_n_periodo = x4_n(1:period_x4_n); % Cogemos solo 1 periodo

a_k = (1/period_x4_n)*fft(x4_n_periodo);

% Graficar los ak
figure;

subplot(2,1,1)
stem(n_grafica, abs(a_k))
xlabel('k');
ylabel('|a_k|');
xlim([0 51])
title('Coeficientes a_k (modulo)')
grid on

subplot(2,1,2)
stem(n_grafica, angle(a_k))
xlabel('k');
ylabel('fase a_k');
xlim([0 51])
title('Coeficientes a_k (fase)')
grid on

%% 
n2 = 0:51;
% Inicializamos b_k con ceros
b_k = zeros(size(a_k));

% Asignamos los valores de a_k en las posiciones pares de b_k
b_k(1:2:end) = a_k(1:2:end);

% Graficar los bk
figure;

subplot(2,1,1)
stem(n2, abs(b_k))
xlabel('k');
ylabel('|b_k|');
xlim([0,52])
title('Coeficientes b_k (modulo)')
grid on

subplot(2,1,2)
stem(n2, angle(b_k))
xlabel('k');
ylabel('fase b_k');
xlim([0,52])
title('Coeficientes b_k (fase)')
grid on

%%
% Calcular y4[n] a partir de los b_k

N = length(b_k);
y4_n = N*ifft(b_k);

% Definir el rango de n
n2 = 0:N-1;

% Mostrar el resultado
figure;

stem(n2, y4_n);
title('Señal y4[n]')
xlim([0 51])
xlabel('n');
ylabel('(2 periodos) y_4[n]');

% Energía de la señal y4[n]:
E_y4_n = sum(abs(y4_n).^2);