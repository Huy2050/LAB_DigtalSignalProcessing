// Khoi tao tin hieu de
x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];
nx = 0:(length(x) -1);
N = length(x);
//Yeu cau: tinh bang phuong phap folding and shifting
y_1 = zeros(1,length(x)-1); //Tao ham y chua ket qua
for n = 0:N-1
    sum_val = 0;
    for k = 0: N -1
        //Tinh chi so gap (n-k) mod N
        idx = pmodulo(n-k,N) + 1; //Vi chi so bat dau tu 1 nen ta cong 1
        sum_val = sum_val + h(k+1)*x(idx);
    end
    y_1(n+1) = sum_val;
end
disp("Ket qua y(n) su dung folding va shifting la:",y_1);
//Yeu cau: tinh bang phuong phap ma tran
//Tao ma tran vong H
H = zeros(N,N);
//Xay dung gia tri cho H
for j= 1: N //duyet qua cot
    for i = 1: N //duyet qua hang
        idx = pmodulo(i-j,N) + 1; //Tinh chi so
        H(i,j) = h'(idx);
    end
end
//Tinh y
y_2 = H*x';
disp("Ma tran vong H: ",H);
disp("Ket qua tich chap la: ",y_2');
//Yeu cau: ve do thi x(n), y(n) va cac tin hieu nang luong cua chung
//Tinh tin hieu nang luong
E_x = x .^2;
E_y = y_1 .^2;
//Ve do thi
figure(1);
clf;
//x(n)
subplot(2,2,1);
plot2d3(nx,x);
plot(nx,x,'r.');
xtitle("x(n)");
xlabel("n");
ylabel("x(n)");
//y(n)
subplot(2,2,3);
plot2d3(nx,y_1);
plot(nx,y_1,'r.');
xtitle("y(n)");
xlabel("n");
ylabel("y(n)");
//E_x(n))
subplot(2,2,2);
plot2d3(nx,E_x);
plot(nx,E_x,'r.');
xtitle("E_x(n)");
xlabel("n");
ylabel("E_x(n)");
//E_y(n)
subplot(2,2,4);
plot2d3(nx,E_y);
plot(nx,E_y,'r.');
xtitle("E_y(n)");
xlabel("n");
ylabel("E_y(n)");
