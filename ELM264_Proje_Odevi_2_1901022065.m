% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 1_a
% t aralığını belirleyelim
t = linspace(-2, 2, 400);

% x(t) fonksiyonunu tanımlayalım
x = (abs(t) < 1) .* (1 - abs(t));

% Grafiği çizelim
figure;
plot(t, x, 'DisplayName', 'x(t) = tri(t)');
xlabel('t');
ylabel('x(t)');
title('Üçgen Darbe Biçiminde Sürekli Zamanlı İşaret - x(t)');
grid on;
legend show;


% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 1_b
% Frekans aralığını belirleyelim
f = linspace(-5, 5, 400);

% sinc fonksiyonunu tanımlayalım
sinc_func = @(x) arrayfun(@(y) (y == 0) * 1 + (y ~= 0) * sin(pi*y)./(pi*y), x);

% Genlik spektrumunu hesaplayalım
X_f = sinc_func(f).^2;

% Faz spektrumu
angle_X_f = angle(X_f);

% Genlik spektrumu grafiği
figure('Position', [100, 100, 1200, 600]);

subplot(2, 1, 1);
plot(f, X_f, 'DisplayName', '|X(f)|');
xlabel('f');
ylabel('|X(f)|');
title('Genlik Spektrumu');
grid on;
legend show;

% Faz spektrumu grafiği
subplot(2, 1, 2);
plot(f, angle_X_f, 'DisplayName', '∠X(f)', 'Color', 'r');
xlabel('f');
ylabel('∠X(f)');
title('Faz Spektrumu');
grid on;
legend show;

sgtitle('x(t) işaretinin Genlik ve Faz Spektrumu');


% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 1_c
% Frekans aralığını belirleyelim
f = linspace(-5, 5, 400);

% sinc fonksiyonunu tanımlayalım
sinc_func = @(x) arrayfun(@(y) (y == 0) * 1 + (y ~= 0) * sin(pi*y)./(pi*y), x);

% Genlik spektrumunu hesaplayalım
X_f = sinc_func(f).^2;
Y_f_magnitude = X_f;

% Faz spektrumu
Y_f_phase = -2 * pi * f * 5;

% Genlik spektrumu grafiği
figure('Position', [100, 100, 1200, 600]);

subplot(2, 1, 1);
plot(f, Y_f_magnitude, 'DisplayName', '|Y(f)|');
xlabel('f');
ylabel('|Y(f)|');
title('Genlik Spektrumu');
grid on;
legend show;

% Faz spektrumu grafiği
subplot(2, 1, 2);
plot(f, Y_f_phase, 'DisplayName', '∠Y(f)', 'Color', [1, 0.5, 0]); 
xlabel('f');
ylabel('∠Y(f)');
title('Faz Spektrumu');
grid on;
legend show;

sgtitle('y(t)=x(t−5) işaretinin Genlik ve Faz Spektrumu');


% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 1_d
% Frekans aralığını belirleyelim
f = linspace(-2e6, 2e6, 4000);

% sinc fonksiyonunu tanımlayalım
sinc_func = @(x) arrayfun(@(y) (y == 0) * 1 + (y ~= 0) * sin(pi*y)./(pi*y), x);

% Genlik spektrumunu hesaplayalım
X_f_pos = sinc_func((f - 927e3) / pi).^2;
X_f_neg = sinc_func((f + 927e3) / pi).^2;
Y_f_magnitude = 0.5 * (X_f_pos + X_f_neg);

% Faz spektrumu
Y_f_phase = zeros(size(f));

% Genlik spektrumu grafiği
figure('Position', [100, 100, 1200, 600]);

subplot(2, 1, 1);
plot(f, Y_f_magnitude, 'DisplayName', '|Y(f)|');
xlabel('f (Hz)');
ylabel('|Y(f)|');
title('Genlik Spektrumu');
grid on;
legend show;

% Faz spektrumu grafiği
subplot(2, 1, 2);
plot(f, Y_f_phase, 'DisplayName', '∠Y(f)', 'Color', [1, 0.5, 0]); 
xlabel('f (Hz)');
ylabel('∠Y(f)');
title('Faz Spektrumu');
grid on;
legend show;

sgtitle('y(t) = x(t)cos(2𝜋.927.(10^3)t) işaretinin Genlik ve Faz Spektrumu');


% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 1_e
% Frekans aralığını belirleyelim
f = linspace(-5, 5, 1000);

% sinc fonksiyonunu tanımlayalım
sinc_func = @(x) arrayfun(@(y) (y == 0) * 1 + (y ~= 0) * sin(pi*y)./(pi*y), x);

% Genlik spektrumunu hesaplayalım
magnitude_spectrum = 3 * sinc_func(3 * f).^2;

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 600]);
plot(f, magnitude_spectrum, 'DisplayName', '|Y(f)|');
title('Genlik Spektrumu ');
xlabel('f (Hz)');
ylabel('|Y(f)|');
grid on;
legend show;

% Faz spektrumu sıfır
phase_spectrum = zeros(size(f));

% Faz spektrumunu çizelim
figure('Position', [100, 100, 1000, 600]);
plot(f, phase_spectrum, 'DisplayName', ' ∠Y(f)');
title('Faz Spektrumu ');
xlabel('f (Hz)');
ylabel('∠Y(f)');
grid on;
legend show;

sgtitle('y(t) = (1/3)x(t/3) işaretinin Genlik ve Faz Spektrumu');

% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 1_f
% Sinc fonksiyonunu tanımlayalım
sinc_func = @(x) sin(pi*x)./(pi*x);

% Frekans aralığını tanımlayalım
f = linspace(-5, 5, 1000);

% Genlik ve faz spektrumunu hesaplayalım
H_f = sinc_func(f);
amplitude_spectrum = abs(H_f);
phase_spectrum = angle(H_f);

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1200, 600]);

subplot(2, 1, 1);
plot(f, amplitude_spectrum);
title('Genlik Spektrumu');
xlabel('f(Hz)');
ylabel('|H(f)|');
grid on;

% Faz spektrumunu çizelim
subplot(2, 1, 2);
plot(f, phase_spectrum);
title('Faz Spektrumu');
xlabel('f(Hz)');
ylabel('∠H(f)');
grid on;

sgtitle('m(t) = rect(t) Genlik ve Faz Spektrumları');


% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_a
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Genlik spektrumu
X_mag = 1 ./ sqrt((1 - 0.8 * cos(omega)).^2 + (0.8 * sin(omega)).^2);

% Faz spektrumu
X_phase = -atan2(0.8 * sin(omega), 1 - 0.8 * cos(omega));

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, X_mag);
title('Genlik Spektrumu ');
xlabel('f(ω)');
ylabel('|X(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, X_phase);
title('Faz Spektrumu');
xlabel('f(ω)');
ylabel('∠X(e^{jω})');
grid on;

sgtitle(' x[n] işaretinin Genlik ve Faz Spektrumu');



% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_b
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Orijinal genlik ve faz spektrumları
X_mag = 1 ./ sqrt((1 - 0.8 * cos(omega)).^2 + (0.8 * sin(omega)).^2);
X_phase = -atan2(0.8 * sin(omega), 1 - 0.8 * cos(omega));

% Kaydırılmış sinyalin genlik spektrumu
Y_mag_shifted = X_mag;

% Kaydırılmış sinyalin faz spektrumu
Y_phase_shifted = X_phase - 5 * omega;

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, Y_mag_shifted);
title('Genlik Spektrumu');
xlabel('f(ω)');
ylabel('|Y(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, Y_phase_shifted);
title('Faz Spektrumu');
xlabel('f(ω)');
ylabel('∠Y(e^{jω})');
grid on;

sgtitle(' y[n] = x[n - 5] işaretinin Genlik ve Faz Spektrumu');

% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_c
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Y(e^jω) fonksiyonunu çağırmak
Y_f_derivative = Y_func(omega);

% Genlik spektrumu
Y_mag_derivative = abs(Y_f_derivative);

% Faz spektrumu
Y_phase_derivative = angle(Y_f_derivative);

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, Y_mag_derivative);
title('Genlik Spektrumu');
xlabel('f(ω)');
ylabel('|Y(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, Y_phase_derivative);
title('Faz Spektrumu');
xlabel('f(ω)');
ylabel('∠Y(e^{jω})');
grid on;

sgtitle('y[n] = nx[n] işaretinin Genlik ve Faz Spektrumu');


% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_d
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Orijinal genlik ve faz spektrumları
X_mag = 1 ./ sqrt((1 - 0.8 * cos(omega)).^2 + (0.8 * sin(omega)).^2);
X_phase = -atan2(0.8 * sin(omega), 1 - 0.8 * cos(omega));

% Yansıyan sinyalin genlik spektrumu
Y_mag_reflected = X_mag;

% Yansıyan sinyalin faz spektrumu
Y_phase_reflected = -X_phase;

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, Y_mag_reflected);
title('Genlik Spektrumu');
xlabel('f(ω)');
ylabel('|Y(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, Y_phase_reflected);
title('Faz Spektrumu');
xlabel('f(ω)');
ylabel('∠Y(e^{jω})');
grid on;

sgtitle('y[n] = x[-n] işaretinin Genlik ve Faz Spektrumu');


% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_e
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Orijinal X(e^jω) fonksiyonu
Y_bandlimited = 0.5 * (X_func(omega - 0.1 * pi) + X_func(omega + 0.1 * pi));

% Genlik spektrumu
Y_mag_bandlimited = abs(Y_bandlimited);

% Faz spektrumu
Y_phase_bandlimited = angle(Y_bandlimited);

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, Y_mag_bandlimited);
title('Genlik Spektrumu');
xlabel('f(ω)');
ylabel('|Y(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, Y_phase_bandlimited);
title('Faz Spektrumu');
xlabel('f(ω)');
ylabel('∠Y(e^{jω})');
grid on;

sgtitle('y[n] = x[n]cos(0.1𝜋n) işaretinin Genlik ve Faz Spektrumu');


% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_f
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Frekans yanıtı H(e^jω)
H_mag_shifted = abs(exp(-1j * omega * 5));
H_phase_shifted = angle(exp(-1j * omega * 5));

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, H_mag_shifted);
title('Genlik Spektrumu');
xlabel('f(ω)');
ylabel('|H(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, H_phase_shifted);
title('Faz Spektrumu');
xlabel('f(ω)');
ylabel('∠H(e^{jω})');
grid on;

sgtitle('y[n] = 𝛿[n-5] LTI sistemin Genlik ve Faz Spektrumu');

% Fonksiyon tanımlamaları
% Y(e^jω) fonksiyonunu tanımlayalım
function Y_f = Y_func(omega)
    X = 1 ./ (1 - 0.8 * exp(-1j * omega));
    dX_domega = 0.8 * exp(-1j * omega) ./ (1 - 0.8 * exp(-1j * omega)).^2;
    Y_f = 1j * dX_domega;
end

% Orijinal X(e^jω) fonksiyonunu tanımlayalım
function X_omega = X_func(omega)
    X_omega = 1 ./ (1 - 0.8 * exp(-1j * omega));
end
