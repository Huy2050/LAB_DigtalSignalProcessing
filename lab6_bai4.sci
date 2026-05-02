H = 1 ./ (1 + 0.1 * exp(-%i * w) + 0.2 * exp(-%i * 2 * w));

amp_H = abs(H);
phase_H = atan(imag(H), real(H));

scf(1); 
clf;

subplot(2, 1, 1);
plot(w, amp_H, 'b', 'LineWidth', 2);
xgrid(1);
title('Amplitude Spectrum of h(n)', 'fontsize', 3);
xlabel('$\omega$ (rad/sample)');
ylabel('$|H(\omega)|$');

subplot(2, 1, 2);
plot(w, phase_H, 'r', 'LineWidth', 2);
xgrid(1);
title('Phase Spectrum of h(n)', 'fontsize', 3);
xlabel('$\omega$ (rad/sample)');
ylabel('$\angle H(\omega)$ (rad)');
