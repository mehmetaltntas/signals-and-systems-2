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

