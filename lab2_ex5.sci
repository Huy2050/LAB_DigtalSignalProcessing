clear
clf
xn = [1, 3, -2]; // x(n)
x_n = [-2, 3, 1]; // x(-n)
xe = 1/2 * (xn + x_n); //thành phần chẵn
xo = 1/2 * (xn - x_n); //thành phần lẻ
n = -1 : 1; //khoảng thời gian
disp("Thành phần lẻ xo(n):"); disp(xo);
disp("Thành phần chẵn xe(n):"); disp(xe);
// Đồ thị 1: x(n)
subplot(3,1,1);
plot2d3(n, xn,5);
title('x(n)'); xlabel('n'); ylabel('x(n)');
//Đồ thị 2: xo(n)
subplot(3,1,2);
plot2d3(n, xo,5);
title('xo(n)'); xlabel('n'); ylabel('xo(n)');
//Đồ thị 3: xe(n)
subplot(3,1,3);
plot2d3(n, xe,5);
title('xe(n)'); xlabel('n'); ylabel('xe(n)');
