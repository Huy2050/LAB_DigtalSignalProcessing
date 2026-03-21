function [yn, yorigin] = delay (xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;
    nx = (1:length(xn)) - xorigin;
    ny = nx + k;
    n_min = min(min(nx), min(ny));
    n_max = max(max(nx), max(ny));
    n_chung = n_min : n_max; // Tao khoang mau chung
    
    // Tao 2 mang voi khoang mau n chung
    
    x_pad = zeros(1, length(n_chung));
    y_pad = zeros(1, length(n_chung));
    
    // Tinh index de gan gia tri vao
    // index = n - n_min + 1
    idx_x = nx - n_min + 1;
    idx_y = ny - n_min + 1;
    
    // Gan dung vi tri
    x_pad(idx_x) = xn;
    y_pad(idx_y) = xn;
    clf;
    subplot(2,1,1)
    plot2d3(n_chung,x_pad,5);
    title('x(n)');
    xlabel('n');
    ylabel('x(n)');
    subplot(2,1,2);
    plot2d3(n_chung,y_pad,5);
    title('y(n)');
    xlabel('n');
    ylabel('y(n)');
endfunction
[y_ketqua, goc_y] = delay ([1,  -2,  3,  6], 3, 1);

// In kết quả ra màn hình để xem
disp("Mảng kết quả yn là:");
disp(y_ketqua);

disp("Vị trí gốc yorigin là:");
disp(goc_y);
