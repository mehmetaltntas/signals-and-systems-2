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

sgtitle('Genlik ve Faz Spektrumu');
