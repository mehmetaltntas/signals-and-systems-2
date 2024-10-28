% Mehmet ALTINTAŞ 1901022065
% ELM 264 PROJE 2- PROBLEM 2_c
% Frekans aralığı
omega = linspace(-pi, pi, 400);

% Y(e^jω) fonksiyonunu çağırmak
Y_f = Y(omega);

% Genlik spektrumu
Y_mag = abs(Y_f);

% Faz spektrumu
Y_phase = angle(Y_f);

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
xlabel('f (ω)');
ylabel('∠Y(e^{jω})');
grid on;

sgtitle('Genlik ve Faz Spektrumu');

% Y(e^jω) fonksiyonunu tanımlayalım
function Y_f = Y(omega)
    X = 1 ./ (1 - 0.8 * exp(-1j * omega));
    dX_domega = 0.8 * exp(-1j * omega) ./ (1 - 0.8 * exp(-1j * omega)).^2;
    Y_f = 1j * dX_domega;
end
