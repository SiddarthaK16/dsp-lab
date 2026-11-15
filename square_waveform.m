clc; clear all; close all;

N = input('enter the number of cycles....');
M = input('enter the period....');
y = 0:0.001:2;
o = ones(size(y));

for j = 0:M/2:M*N             % VERTICAL lines
    plot(j*o, y, 'b'); grid on; hold on;
end

for k = 0:M:M*N               % TOP lines at height 2
    plot(k+y, 2*o, 'b'); grid on; hold on;
end

for k = 2:M:M*N               % BOTTOM lines at height 0
    plot(k+y, 0*o, 'b'); grid on; hold on;
end

hold off; axis([0 12 -0.5 2.5])
xlabel('---> time');
ylabel('---> amplitude');
title('Square signal');