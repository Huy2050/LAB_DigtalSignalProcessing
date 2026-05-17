// ====================================================================
// Bài tập: Kiểm chứng tính chất tích chập vòng của DFT trong Scilab
// ====================================================================

// Hàm 1: Tính tích chập vòng sử dụng DFT (FFT trong Scilab)
function y = circ_conv_fft(x, h)
    X = fft(x);
    H = fft(h);
    Y = X .* H;
    y = ifft(Y);
endfunction

/// Hàm 2: Tính tích chập vòng trực tiếp 
function y = circ_conv_direct(x, h)
    N = length(x);
    y = zeros(1, N);
    for n = 0:N-1
        for m = 0:N-1
            // Sửa modulo thành pmodulo để xử lý số âm trong Scilab
            idx = pmodulo(n - m, N); 
            y(n+1) = y(n+1) + x(m+1) * h(idx+1);
        end
    end
endfunction

// ====================================================================
// Phần kiểm chứng (Verification test)
// ====================================================================

// Khởi tạo 2 dãy tín hiệu (độ dài bằng nhau)
x = [1, 2, 1, -1];
h = [0, 1/3, -1/3, 1/3];

// Gọi hàm tính toán
y_fft = circ_conv_fft(x, h);
y_direct = circ_conv_direct(x, h);

// 1. In kết quả ra màn hình Console để so sánh số liệu
disp("Result using FFT: ");
disp(y_fft);

disp("Result using direct method: ");
disp(y_direct);

// 2. Vẽ đồ thị so sánh trực quan (để đưa vào báo cáo)
N = length(x);
n_axis = 0:(N-1); // Trục thời gian rời rạc n

clf(); // Xóa cửa sổ Figure cũ nếu có

// Đồ thị 1: Kết quả từ hàm dùng FFT
subplot(2, 1, 1);
plot2d3(n_axis, y_fft); // Dùng plot2d3 để vẽ tín hiệu rời rạc
xtitle("Circular Convolution using FFT", "n", "Amplitude");
xgrid(1);

// Đồ thị 2: Kết quả từ hàm tính trực tiếp
subplot(2, 1, 2);
plot2d3(n_axis, y_direct);
xtitle("Direct Circular Convolution", "n", "Amplitude");
xgrid(1);
