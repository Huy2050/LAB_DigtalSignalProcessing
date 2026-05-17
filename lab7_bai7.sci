// ====================================================================
// Bài tập 7: Tính tích chập tuyến tính bằng DFT (FFT) có Zero-padding
// ====================================================================

// Hàm: Tính tích chập tuyến tính dùng FFT
function y = linear_conv_fft(x, h)
    Nx = length(x);
    Nh = length(h);
    N = Nx + Nh - 1; // Chiều dài yêu cầu cho tích chập tuyến tính

    // Zero-padding để cả 2 mảng đạt chiều dài N
    x_pad = [x, zeros(1, N - Nx)];
    h_pad = [h, zeros(1, N - Nh)];

    // Áp dụng FFT
    X = fft(x_pad);
    H = fft(h_pad);
    Y = X .* H;
    y = ifft(Y);
endfunction

// ====================================================================
// Phần kiểm chứng (Verification test) và Vẽ đồ thị
// ====================================================================

// Tạo 2 dãy tín hiệu ngẫu nhiên có độ dài khác nhau
x = rand(1, 10);
h = rand(1, 5);

// Gọi hàm tính toán
y_fft = linear_conv_fft(x, h);
y_builtin = conv(x, h); // Lệnh có sẵn của Scilab

// 1. In kết quả ra màn hình Console
disp("Custom FFT Convolution: ");
disp(y_fft);

disp("Built-in conv(): ");
disp(y_builtin);

// 2. Vẽ đồ thị so sánh trực quan
N_y = length(y_builtin); // Chiều dài mảng kết quả (10 + 5 - 1 = 14)
n_axis = 0:(N_y-1);      // Trục thời gian rời rạc n

clf(); // Xóa cửa sổ Figure cũ nếu có

// Đồ thị 1: Kết quả từ hàm tự viết (dùng FFT)
subplot(2, 1, 1);
plot2d3(n_axis, y_fft); 
xtitle("Linear Convolution using FFT (Zero-padded)", "n", "Amplitude");
xgrid(1);

// Đồ thị 2: Kết quả từ hàm có sẵn conv() của Scilab
subplot(2, 1, 2);
plot2d3(n_axis, y_builtin);
xtitle("Built-in conv() function", "n", "Amplitude");
xgrid(1);
