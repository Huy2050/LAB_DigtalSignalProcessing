// --- Initialize signals ---
x = [1, 2, -3, 2, 1];
h = [1, 0, -1];
nx = 0:(length(x)-1); // Time axis for x(n)

// --- Method 1: Convolution using built-in function ---
y_conv = convol(h, x);
ny = 0:(length(y_conv)-1); // Time axis for y(n)
disp("Result y(n) using convol function:");
disp(y_conv);

// --- Method 2: Convolution using Matrix method ---
N = length(x);
M = length(h);
L = N + M - 1;
H_mat = zeros(L, N); // Create an L x N matrix of zeros

// Fill the H matrix diagonally
for i = 1:N
    H_mat(i:i+M-1, i) = h';
end

// Matrix multiplication
y_matrix = H_mat * x';
disp("Result y(n) using Matrix method:");
disp(y_matrix');

// --- Plotting Signals and Energy ---
// Local energy of a discrete signal is the squared amplitude
E_x = x.^2; 
E_y = y_conv.^2;

figure(1);
clf; // Clear previous figure if any

// 1. Plot x(n)
subplot(2, 2, 1);
plot2d3(nx, x);
plot(nx, x, 'r.'); // Add red dots at peaks
xtitle("Signal x(n)", "n", "Amplitude");

// 2. Plot y(n)
subplot(2, 2, 2);
plot2d3(ny, y_conv);
plot(ny, y_conv, 'r.');
xtitle("Signal y(n)", "n", "Amplitude");

// 3. Plot Energy of x(n)
subplot(2, 2, 3);
plot2d3(nx, E_x);
plot(nx, E_x, 'b.');
xtitle("Energy of x(n) : |x(n)|^2", "n", "Energy");

// 4. Plot Energy of y(n)
subplot(2, 2, 4);
plot2d3(ny, E_y);
plot(ny, E_y, 'b.');
xtitle("Energy of y(n) : |y(n)|^2", "n", "Energy");
