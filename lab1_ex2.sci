// Khai bao cac tham so
f = 50;             // Tan so tin hieu analog (Hz)
T = 1/f;            // Chu ky (s)
Fs = 300;           // Tan so lay mau (samples/s)
Ts = 1/Fs;          // Chu ky lay mau
N_periods = 5;      // So chu ky can ve

// --- a) Xac dinh mien thoi gian lien tuc cho xa(t) ---
t = 0 : Ts/10 : N_periods * T; 
xa = 3 * sin(100 * %pi * t);

// --- b) & c) Tin hieu roi rac thoi gian x(n) ---
// n chay tu 0 den (5 chu ky * 300 mau/giay * 0.02 giay/chu ky)
n = 0 : N_periods * T * Fs; 
xn = 3 * sin(100 * %pi * n * Ts);

// --- d) Tin hieu luong tu hoa (Truncated) ---
Delta = 0.1;
xq = Delta * floor(xn / Delta);

// --- Ve cac tin hieu tren cung 1 cua so ---
scf(0); clf();

// Ve xa(t)
subplot(3, 1, 1);
plot(t, xa, 'b'); 
title("Tin hieu tuong tu xa(t)");
xlabel("Thoi gian (s)"); xgrid();

// Ve x(n)
subplot(3, 1, 2);
plot2d3(n * Ts, xn); 
plot(n * Ts, xn, 'r.'); 
title("Tin hieu roi rac thoi gian x(n)");
xlabel("Thoi gian (s)"); xgrid();

// Ve xq(n) - Tin hieu luong tu hoa
subplot(3, 1, 3);
plot2d3(n * Ts, xq);
plot(n * Ts, xq, 'g.'); 
title("Tin hieu luong tu hoa xq(n) (Delta = 0.1)");
xlabel("Thoi gian (s)"); xgrid();
