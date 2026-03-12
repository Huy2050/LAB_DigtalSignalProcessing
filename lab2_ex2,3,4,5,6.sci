function ex2()
    n = -5:5;
    msignal = bool2s(n>=0);
    plot2d3(n, msignal)
endfunction
function ex3()
    n = -5:5;
    msignal = bool2s(n==0);
    plot2d3(n,msignal)
endfunction
function ex4()
    clear
    clf
    n = -5:5;
    y = bool2s(n>=0).*n;
    plot2d3(n,y)
    title("Unit ramp signal");
    xlabel('n');
    ylabel('u_r(n)');
endfunction
function ex5()
    clear
    clf
    xn = [1, 3, -2]; // x(n)
    x_n = [-2, 3, 1]; // x(-n)
    xe = 1/2 * (xn + x_n); //thành phần chẵn
    xo = 1/2 * (xn - x_n); //thành phần lẻ
    n = -1 : 1; //khoảng thời gian
    disp("Thành phần lẻ xo(n):"); disp(xo);
    disp("Thành phần chẵn xe(n):"); disp(xe);
    // Đồ thị 1: x(n)
    subplot(3,1,1);
    plot2d3(n, xn,5);
    title('x(n)'); xlabel('n'); ylabel('x(n)');
    //Đồ thị 2: xo(n)
    subplot(3,1,2);
    plot2d3(n, xo,5);
    title('xo(n)'); xlabel('n'); ylabel('xo(n)');
    //Đồ thị 3: xe(n)
    subplot(3,1,3);
    plot2d3(n, xe,5);
    title('xe(n)'); xlabel('n'); ylabel('xe(n)');
endfunction
function ex6()
    clear
    clf
    x1 = [0, 1, 3, -2];
    x2 = [0, 1, 2, 3];
    n1 = 0:3;
    n2 = -1: 2;
    nMin = min(min(n1), min(n2)); //Tìm khoảng bên trái chung
    nMax = max(max(n1), max(n2)); //tìm khoảng bên phải chung
    n = nMin : nMax;
    nLength = length(n)
    x1_n = zeros(1, nLength)
    x2_n = zeros(1, nLength)
    idx1_start = min(n1) - nMin + 1;
    idx1_end = max(n1) - nMin + 1;
    x1_n(idx1_start : idx1_end) = x1;
    idx2_start = min(n2) - nMin + 1;
    idx2_end = max(n2) - nMin + 1;
    x2_n(idx2_start : idx2_end) = x2;
    y = x1_n + x2_n;
    //vẽ đồ thị x1
    subplot(3,1,1)
    plot2d3(n,x1_n,2);
    title('x1');
    xlabel('x1');
    ylabel('n');
    //vẽ đồ thị x2
    subplot(3,1,2)
    plot2d3(n,x2_n,2);
    title('x2'); xlabel('x2'); ylabel('n');
    //vẽ đồ thị y
    subplot(3,1,3)
    plot2d3(n,y,2);
    title('y(n) = x1(n) + x2(n)'); xlabel('y(n)'); ylabel('n');
endfunction
// Khi chạy bài nào thì mình uncomment bài đó
//ex2()
//ex3()
//ex4()
ex5()
//ex6()
