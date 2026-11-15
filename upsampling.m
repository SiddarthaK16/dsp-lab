clc; clear all; close all;
L=input('enter the upsampling factor');
N=input('enter the length of the input signal');
f1=input('enter the frequency of first sinusoidal');
f2=input('enter the frequency of second sinusoidal');

n=0:N-1;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
y=interp(x,L);

subplot(2,1,1); stem(n,x);
title('input sequence'); xlabel('time(n)'); ylabel('amplitude');

m=0:N*L-1;
subplot(2,1,2); stem(m,y);
title('output sequence'); xlabel('time(n)'); ylabel('amplitude');