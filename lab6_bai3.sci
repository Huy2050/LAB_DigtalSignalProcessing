w = linspace(-%pi, %pi, 1000);

X1 = 1 ./ (1 - 0.1 * exp(-%i * w));

amp_X1 = abs(X1); 
phase_X1 = atan(imag(X1), real(X1)); 

X2 = 1 + exp(-%i * w) + exp(-%i * 2 * w) + exp(-%i * 3 * w);

amp_X2 = abs(X2); 
phase_X2 = atan(imag(X2), real(X2)); 

scf(0); 
clf;    


subplot(2, 2, 1);
plot(w, amp_X1, 'b', 'LineWidth', 2);
xgrid(1); 
title('Amplitude Spectrum of x_1(n) = 0.1^n u(n)', 'fontsize', 3);
xlabel('$\omega$ (rad/sample)');
ylabel('$|X_1(\omega)|$');

subplot(2, 2, 3);
plot(w, phase_X1, 'r', 'LineWidth', 2);
xgrid(1);
title('Phase Spectrum of x_1(n)', 'fontsize', 3);
xlabel('$\omega$ (rad/sample)');
ylabel('$\angle X_1(\omega)$ (rad)');

subplot(2, 2, 2);
plot(w, amp_X2, 'b', 'LineWidth', 2);
xgrid(1);
title('Amplitude Spectrum of x_2(n)', 'fontsize', 3);
xlabel('$\omega$ (rad/sample)');
ylabel('$|X_2(\omega)|$');

subplot(2, 2, 4);
plot(w, phase_X2, 'r', 'LineWidth', 2);
xgrid(1);
title('Phase Spectrum of x_2(n)', 'fontsize', 3);
xlabel('$\omega$ (rad/sample)');
ylabel('$\angle X_2(\omega)$ (rad)');
