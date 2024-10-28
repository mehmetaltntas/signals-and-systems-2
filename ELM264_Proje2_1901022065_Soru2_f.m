% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_f
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Frekans yanıtı H(e^jω)
H_mag = abs(exp(-1j * omega * 5));
H_phase = angle(exp(-1j * omega * 5));

% Genlik spektrumunu çizelim
figure('Position', [100, 100, 1000, 400]);

subplot(1, 2, 1);
plot(omega, H_mag);
title('Genlik Spektrumu');
xlabel('f (ω)');
ylabel('|H(e^{jω})|');
grid on;

% Faz spektrumunu çizelim
subplot(1, 2, 2);
plot(omega, H_phase);
title('Faz Spektrumu');
xlabel('f (ω)');
ylabel('∠H(e^{jω})');
grid on;

sgtitle('Genlik ve Faz Spektrumu');


