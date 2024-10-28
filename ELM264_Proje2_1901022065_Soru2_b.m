% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_b
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Orijinal genlik ve faz spektrumları
X_mag = 1 ./ sqrt((1 - 0.8 * cos(omega)).^2 + (0.8 * sin(omega)).^2);
X_phase = -atan2(0.8 * sin(omega), 1 - 0.8 * cos(omega));

% Kaydırılmış sinyalin genlik spektrumu
Y_mag = X_mag;

% Kaydırılmış sinyalin faz spektrumu
Y_phase = X_phase - 5 * omega;

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, Y_mag);
title('Genlik Spektrumu');
xlabel('f(ω)');
ylabel('|Y(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, Y_phase);
title('Faz Spektrumu');
xlabel('f(ω)');
ylabel('∠Y(e^{jω})');
grid on;

sgtitle(' y[n] = x[n - 5] işaretinin Genlik ve Faz Spektrumu');

