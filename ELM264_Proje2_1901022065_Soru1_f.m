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

sgtitle('Genlik ve Faz Spektrumları');
