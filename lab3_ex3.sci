function [yn, yorigin] = fold (xn, xorigin) 
    yorigin = length(xn) - xorigin + 1;
    yn = xn($:-1:1);
    nx = (1:length(xn)) - xorigin;
    ny = (1:length(yn)) - yorigin;
    // Mo rong khoang mau de ve do thi truc quan hon
    n_min = min(min(nx), min(ny)) - 1;
    n_max = max(max(nx), max(ny)) + 1;
    n = n_min : n_max;
    x = zeros(1:length(n));
    y = zeros(1:length(n));
    idxX = nx - n_min + 1;
    idxY = ny - n_min + 1;
    x(idxX) = xn;
    y(idxY) = yn;
    // Ve do thi
    clf;
    subplot(2,1,1);
    plot2d3(n,x,5);
    title('x(n)');
    xlabel('n');
    ylabel('x(n)');
    subplot(2,1,2);
    plot2d3(n,y,5);
    xlabel('n');
    ylabel('y(n)');
endfunction
[y_ketqua, goc_y] = fold ([1,  -2,  3,  6], 3);
// In kết quả ra màn hình để xem
disp("Mảng kết quả yn là:");
disp(y_ketqua);

disp("Vị trí gốc yorigin là:");
disp(goc_y);
