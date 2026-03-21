function [yn, yorigin] = multi (x1n, x1origin, x2n, x2origin)
     // Xac dinh khoang cua x1 x2
    n1 = (1:length(x1n)) - x1origin;
    n2 = (1:length(x2n)) - x2origin;
    // Xac dinh khoang chung
    nMin = min(min(n1), min(n2));
    nMax = max(max(n1), max(n2));
    // Tao khoang cho y
    n = nMin:nMax;
    // Anh xa vi tri 2 vector
    pos1 = n1 - nMin + 1;
    pos2 = n2 - nMin + 1;
    // Thiet lap ham x1 va x2 de ve deu do thi
    x1Ex = zeros(1, length(n));
    x1Ex(pos1) = x1Ex(pos1) + x1n;
    x2Ex = zeros(1, length(n));
    x2Ex(pos2) = x2Ex(pos2) + x2n
    //Tinh yn
    yn = x1Ex .* x2Ex;
    yorigin = 1 - nMin;
    // Ve do thi cho x1, x2 và y
    clf
    subplot(3,1,1)
    plot2d3(n,x1Ex, 5)
    title('x1(n)');
    xlabel('n');
    ylabel('x1(n)');
    subplot(3,1,2)
    plot2d3(n,x2Ex,5);
    title('x2(n)');
    xlabel('n');
    ylabel('x2(n)');
    subplot(3,1,3)
    plot2d3(n,yn,5);
    title('y(n) = x1(n) . x2(n)');
    xlabel('n');
    ylabel('y(n)');
endfunction
[y_ketqua, goc_y] = multi([0, 1, 3, -2], 1, [1, 1, 2, 3], 2);

// In kết quả ra màn hình để xem
disp("Mảng kết quả yn là:");
disp(y_ketqua);

disp("Vị trí gốc yorigin là:");
disp(goc_y);
