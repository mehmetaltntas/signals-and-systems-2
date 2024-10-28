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

sgtitle('Genlik ve Faz Spektrumu');




