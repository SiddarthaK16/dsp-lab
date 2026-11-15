clc; clear all; close all;
N = input('enter the number of cycles....');
t1 = 0:25;              % one tooth: ramps up from 0 to 25
t = [];
for i = 1:N
    t = [t,t1];         % repeat the tooth N times
end

subplot(211);
plot(t); grid on;
xlabel('---> time');
ylabel('---> amplitude');
title('analog saw tooth signal');

subplot(212);
stem(t); grid on;
xlabel('---> time');
ylabel('---> amplitude');
title('discrete saw tooth signal');
