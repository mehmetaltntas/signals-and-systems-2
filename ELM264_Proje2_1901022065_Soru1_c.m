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
plot(f, Y_f_phase, 'DisplayName', '∠Y(f)', 'Color', [1, 0.5, 0]); % 
xlabel('f');
ylabel('∠Y(f)');
title('Faz Spektrumu');
grid on;
legend show;

sgtitle('Genlik ve Faz Spektrumu');
