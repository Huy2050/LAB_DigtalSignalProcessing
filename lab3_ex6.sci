function [yn, yorigin] = convolution (xn, xorigin, hn, horigin)
    yn = convol(xn,hn);
    yorigin = xorigin + horigin - 1;
    n = (1:length(yn)) - yorigin;
    n1 = (1: length(xn)) - xorigin;
    n2 = (1: length(hn)) - horigin;
    nMin = min(n);
    xEx = zeros(1,length(n));
    hEx = zeros(1, length(n));
    pos1 = n1 - nMin + 1;
    pos2 = n2 - nMin + 1;
    xEx(pos1) = xEx(pos1) + xn;
    hEx(pos2) = hEx(pos2) + hn;
    // Ve do thi cho x, h và y
    clf
    subplot(3,1,1)
    plot2d3(n,xEx, 5)
    title('x(n)');
    xlabel('n');
    ylabel('x(n)');
    subplot(3,1,2)
    plot2d3(n,hEx,5);
    title('h(n)');
    xlabel('n');
    ylabel('h(n)');
    subplot(3,1,3)
    plot2d3(n,yn,5);
    title('y(n) = x(n) * h(n)');
    xlabel('n');
    ylabel('y(n)');
endfunction
[y_ketqua, goc_y] = convolution([0, 1, 3, -2], 1, [1, 1, 2, 3], 2);

// In kết quả ra màn hình để xem
disp("Mảng kết quả yn là:");
disp(y_ketqua);

disp("Vị trí gốc yorigin là:");
disp(goc_y);
