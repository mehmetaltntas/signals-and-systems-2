% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_e
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Orijinal X(e^jω) fonksiyonu
Y = 0.5 * (X(omega - 0.1 * pi) + X(omega + 0.1 * pi));

% Genlik spektrumu
Y_mag = abs(Y);

% Faz spektrumu
Y_phase = angle(Y);

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, Y_mag);
title('Genlik Spektrumu');
xlabel('f (ω)');
ylabel('|Y(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, Y_phase);
title('Faz Spektrumu');
xlabel('f (ω)');
ylabel('∠Y(e^{jω})');
grid on;

sgtitle('Genlik ve Faz Spektrumu');

% Orijinal X(e^jω) fonksiyonunu tanımlayalım
function X_omega = X(omega)
    X_omega = 1 ./ (1 - 0.8 * exp(-1j * omega));
end
