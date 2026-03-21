// Tai su dung cac ham fold va delay
function [yn, yorigin] = fold (xn, xorigin) 
    yorigin = length(xn) - xorigin + 1;
    yn = xn($:-1:1);
endfunction
function [yn, yorigin] = delay (xn, xorigin, k)
    yn = xn;
    yorigin = xorigin - k;
endfunction

xn = [0, (1/3), (2/3), 1, 1, 1, 1]
xOrigin = 4
// Hien thuc ham bai 2.a
[x2a,x2aOrigin] = fold (xn, xOrigin);
[x2a,x2aOrigin] = delay (x2a,xOrigin, 4);
disp('Hàm xn sau ghi gấp và làm trễ tín hiệu 4 mẫu là: ');
disp(x2a);
disp('Gốc hàm là: ', x2aOrigin);
// Hien thuc ham bai 2.b
[x2b,x2bOrigin] = delay (xn, xOrigin, 4);
[x2b,x2bOrigin] = fold(x2b, x2bOrigin);
disp('Hàm xn sau khi làm trễ tín hiệu 4 mẫu và gấp là:: ');
disp(x2b);
disp('Gốc hàm là: ',x2bOrigin);
// Ve do thi 3 ham
nx = (1:length(xn)) - xOrigin;
nx2a = (1:length(x2a)) - x2aOrigin;
nx2b = (1:length(x2b))  - x2bOrigin;
nMin = min(min(nx2a),min(nx2b),min(nx));
nMax = max(max(nx2a),max(nx2b),max(nx));
n = nMin:nMax;
xExtend = zeros(1,length(n));
x = zeros(1,length(n));
y = zeros(1,length(n));
idxXn = nx - nMin + 1;
idxX = nx2a - nMin + 1;
idxY = nx2b - nMin + 1;
xExtend(idxXn)= xn;
x(idxX) = x2a;
y(idxY) = x2b;
clf;
subplot(3,1,1);
plot2d3(n,xExtend,5);
title('x(n)');
xlabel('n');
ylabel('x(n)');
subplot(3,1,2);
plot2d3(n,x,5);
title('x(-n+4)');
xlabel('n');
ylabel('x(-n+4)');
subplot(3,1,3);
plot2d3(n,y,5);
title('x(-n-4)');
xlabel('n');
ylabel('x(-n-4)');
