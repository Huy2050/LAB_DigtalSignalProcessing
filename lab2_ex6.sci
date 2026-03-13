clear
clf
x1 = [0, 1, 3, -2];
x2 = [0, 1, 2, 3];
n1 = 0:3;
n2 = -1: 2;
nMin = min(min(n1), min(n2)); //Tìm khoảng bên trái chung
nMax = max(max(n1), max(n2)); //tìm khoảng bên phải chung
n = nMin : nMax;
nLength = length(n)
x1_n = zeros(1, nLength)
x2_n = zeros(1, nLength)
idx1_start = min(n1) - nMin + 1;
idx1_end = max(n1) - nMin + 1;
x1_n(idx1_start : idx1_end) = x1;
idx2_start = min(n2) - nMin + 1;
idx2_end = max(n2) - nMin + 1;
x2_n(idx2_start : idx2_end) = x2;
y = x1_n + x2_n;
//vẽ đồ thị x1
subplot(3,1,1)
plot2d3(n,x1_n,2);
title('x1');
xlabel('x1');
ylabel('n');
//vẽ đồ thị x2
subplot(3,1,2)
plot2d3(n,x2_n,2);
title('x2'); xlabel('x2'); ylabel('n');
//vẽ đồ thị y
subplot(3,1,3)
plot2d3(n,y,2);
title('y(n) = x1(n) + x2(n)'); xlabel('y(n)'); ylabel('n');

