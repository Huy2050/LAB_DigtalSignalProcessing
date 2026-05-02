w = linspace(-%pi, %pi, 1000);

Y = (1 + exp(-%i * w)) ./ (1 - 0.5 * exp(-%i * w));

amp_Y = abs(Y);
phase_Y = atan(imag(Y), real(Y));

scf(2); 
clf;

subplot(2, 1, 1);
plot(w, amp_Y, 'b', 'LineWidth', 2);
xgrid(1);
title('Amplitude Spectrum of y(n)', 'fontsize', 3);
xlabel('$\omega$ (rad/sample)');
ylabel('$|Y(\omega)|$');

subplot(2, 1, 2);
plot(w, phase_Y, 'r', 'LineWidth', 2);
xgrid(1);
title('Phase Spectrum of y(n)', 'fontsize', 3);
xlabel('$\omega$ (rad/sample)');
ylabel('$\angle Y(\omega)$ (rad)');
