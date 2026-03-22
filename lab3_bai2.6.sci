function val = get_x(n_idx)
    if (n_idx >= 0 & n_idx <= 3) then
        val = 1;
    else
        val = 0;
    end
endfunction

n = -4:6; // Khoang thoi gian khao sat
x_n = zeros(1, length(n));
y_n = zeros(1, length(n));
y_n_minus_2 = zeros(1, length(n));
x_n_minus_2 = zeros(1, length(n));
y2_n = zeros(1, length(n));

for i = 1:length(n)
    ni = n(i);
    x_n(i) = get_x(ni);                     // (1) x(n)
    y_n(i) = get_x(ni^2);                   // (2) y(n) = x(n^2)
    y_n_minus_2(i) = get_x((ni - 2)^2);     // (3) y(n-2)
    x_n_minus_2(i) = get_x(ni - 2);         // (4) x(n-2)
    
    // (5) y2(n) = T[x2(n)] = x2(n^2) = x(n^2 - 2)
    y2_n(i) = get_x(ni^2 - 2);              
end

// Ve do thi
clf;
subplot(5,1,1); plot2d3(n, x_n, 5); title('(1) x(n)');
subplot(5,1,2); plot2d3(n, y_n, 5); title('(2) y(n) = x(n^2)');
subplot(5,1,3); plot2d3(n, y_n_minus_2, 5); title('(3) y(n-2)');
subplot(5,1,4); plot2d3(n, x_n_minus_2, 5); title('(4) x2(n) = x(n-2)');
subplot(5,1,5); plot2d3(n, y2_n, 5); title('(5) y2(n) = T[x2(n)]');

disp('Tu do thi ta thay y(n-2) (do thi 3) KHAC voi y2(n) (do thi 5). Ket luan: He thong Time-Variant.');
