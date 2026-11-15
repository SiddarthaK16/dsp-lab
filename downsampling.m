clc; clear all; close all;
D=input('enter the downsampling factor');
L=input('enter the length of the input signal');
f1=input('enter the frequency of first sinusoidal');
f2=input('enter the frequency of second sinusoidal');

n=0:L-1;
x=sin(2*pi*f1*n)+sin(2*pi*f2*n);
y=decimate(x,D,'fir');

subplot(2,1,1); stem(n,x);
title('input sequence'); xlabel('time(n)'); ylabel('amplitude');

m=0:L/D-1;
subplot(2,1,2); stem(m,y);
title('decimated sequence'); xlabel('time(n)'); ylabel('amplitude');