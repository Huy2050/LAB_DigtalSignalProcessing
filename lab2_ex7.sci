// //////////////////////////
// Ex 7
// Khai bao chi so n
n = -4:4;

// Khai bao tin hieu x1 (n) va x2 (n)
x1 = [0 0 0 0 0 1 3 -2 0];
x2 = [0 0 0 0 1 2 3 0 0];

// Nhan hai tin hieu theo chi so tuong ung
y = x1 .* x2;

// Ve 3 tin hieu tren cung mot cua so
scf(1); clf();

subplot(3, 1, 1);
plot2d3(n, x1);
title("Tin hieu x1(n)");
xlabel("n"); ylabel("x1(n)");

subplot(3, 1, 2);
plot2d3(n, x2);
title("Tin hieu x2(n)");
xlabel("n"); ylabel("x2(n)");

subplot(3, 1, 3);
plot2d3(n, y);
title("Tich tin hieu y(n) = x1(n) * x2(n)");
xlabel("n"); ylabel("y(n)");
