clear
clf
n = -5:5;
y = bool2s(n>=0).*n;
plot2d3(n,y)
title("Unit ramp signal");
xlabel('n');
ylabel('u_r(n)');
