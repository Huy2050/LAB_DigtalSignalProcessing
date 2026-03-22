// Dinh nghia tin hieu x(n)
xn = [2, 3, 4, 5, 6];
xorigin = 3; // Vi tri cua gia tri 4 (n=0)
nx = (1:length(xn)) - xorigin;

// Tim x(-n)
xn_fold = xn($:-1:1);
nx_fold = -nx($:-1:1); 

// Tinh toan thanh phan chan (xe) va le (xo)
xe = 0.5 * (xn + xn_fold);
xo = 0.5 * (xn - xn_fold);

// Hien thi ra console
disp('Thanh phan chan x_e(n) la:');
disp(xe);
disp('Thanh phan le x_o(n) la:');
disp(xo);

// Ve do thi
clf;
subplot(3,1,1);
plot2d3(nx, xn, 5);
title('x(n)'); xlabel('n'); ylabel('x(n)');

subplot(3,1,2);
plot2d3(nx, xe, 5);
title('Thanh phan chan x_e(n)'); xlabel('n'); ylabel('x_e(n)');

subplot(3,1,3);
plot2d3(nx, xo, 5);
title('Thanh phan le x_o(n)'); xlabel('n'); ylabel('x_o(n)');
