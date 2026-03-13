// //////////////////////////
// Ex 8
// Khai bao tin hieu x(n) va chi so n
n = [-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5];
x = [0, 0, 0, 1, -2, 3, 6, 0, 0, 0, 0];

// a) Dao nguoc tin hieu y1(n) = x(-n)
y1_n = n;
y1 = x($:-1:1);

// b) Dich trai y2(n) = x(n+3) => n' = n - 3
y2_n = n - 3;
y2 = x;

// c) y3(n) = 2*x(-n-2)
y3_n = n - 2;
y3 = 2 * x($:-1:1);

// Ve tin hieu x(n) va y1(n) tren cua so 1
scf(1); clf();
subplot(2, 1, 1); plot2d3(n, x, style=5);
title("Tin hieu goc x(n)"); xlabel("n"); ylabel("x(n)");
subplot(2, 1, 2); plot2d3(y1_n, y1, style=5);
title("Dao nguoc tin hieu y1(n) = x(-n)");
xlabel("n"); ylabel("y1(n)");

// Ve tin hieu x(n) va y2(n) tren cua so 2
scf(2); clf();
subplot(2, 1, 1); plot2d3(n, x, style=5);
title("Tin hieu goc x(n)"); xlabel("n"); ylabel("x(n)");
subplot(2, 1, 2); plot2d3(y2_n, y2, style=5);
title("Dich chuyen y2(n) = x(n+3)"); xlabel("n"); ylabel("y2(n)");

// Ve tin hieu x(n) va y3(n) tren cua so 3
scf(3); clf();
subplot(2, 1, 1); plot2d3(n, x, style=5);
title("Tin hieu goc x(n)"); xlabel("n"); ylabel("x(n)");
subplot(2, 1, 2); plot2d3(y3_n, y3, style=5);
title("Bien doi y3(n) = 2*x(-n-2)"); xlabel("n"); ylabel("y3(n)");
