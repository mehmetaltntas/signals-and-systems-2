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
title('Üçgen Darbe Biçiminde Sürekli Zamanlı İşaret');
grid on;
legend show;