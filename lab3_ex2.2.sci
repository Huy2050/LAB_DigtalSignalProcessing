function y = x_funct(nSample)
    y = zeros(1,length(nSample));
    for idx = 1:length(nSample)
        if (nSample(idx) >= -1 & nSample(idx) <= 2) then
            y(idx) = 1;
        elseif (nSample(idx) >= 3 & nSample(idx) <= 4) then
            y(idx) = 1/2;
        else 
            y(idx) = 0;
        end 
    end
endfunction
//Thanh lap cac ham theo yeu cau
n = -8:8; //Tao khoang mau chung
//ya = x(n-2)
ya =  x_funct(n - 2);
//yb = x(4-n)
yb = x_funct(4-n);
//yc = x(n+2)
yc = x_funct(n+2);
//yd = x(n).u(2-n)
//Tim ham u(2-n) truoc
un = zeros(1,length(n));
un(find(2-n>=0)) = 1;
yd = x_funct(n).*un;
//ye = x(n-1).delta(n-3)
//Tim ham delta(n-3)
delta = zeros(1,length(n));
delta(find(n-3 == 0)) = 1;
ye = x_funct(n-1).*delta;
//yf = x(n^2)
yf = x_funct(n.*n);
//yg = even(x(n))
yg = 1/2 * [x_funct(n) + x_funct(-n)];
//yh = odd(x(n))
yh = 1/2 * [x_funct(n) - x_funct(-n)];
// Hien thi ket qua len console
disp('Ket qua cac ham la:');
disp('x(n-2) = ',ya);
disp('x(4-n) = ',yb);
disp('x(n+2) = ',yc);
disp('x(n)u(n) = ',yd);
disp('x(n-1)delta(n-3) = ',ye);
disp('x(n^2) = ', yf);
disp('Thanh phan chan x(n) la: ', yg);
disp('Thanh phan le x(n) la: ', yh);
// Ve cac do thi
subplot(4,2,1);
plot2d3(n,ya,5);
title('x(n-2)');
xlabel('n');
ylabel('x(n-2)');
subplot(4,2,2);
plot2d3(n,yb,5);
title('x(4-n)');
xlabel('n');
ylabel('x(4-n)');
subplot(4,2,3);
plot2d3(n,yc,5);
title('x(n+2)');
xlabel('n');
ylabel('x(n+2)');
subplot(4,2,4);
plot2d3(n,yd,5);
title('x(n)u(2-n)');
xlabel('n');
ylabel('x(n).u(2-n)');
subplot(4,2,5);
plot2d3(n,ye,5);
title('x(n-1)delta(n-3)');
xlabel('n');
ylabel('x(n-1)delta(n-3)');
subplot(4,2,6);
plot2d3(n,yf,5);
title('x(n^2)');
xlabel('n');
ylabel('x(n^2)');
subplot(4,2,7);
plot2d3(n,yg,5);
title('Phan chan x(n)');
xlabel('n');
ylabel('Phan chan x(n)');
subplot(4,2,8);
plot2d3(n,yh,5);
title('Phan chan x(n)');
xlabel('n');
ylabel('Phan chan x(n)');
