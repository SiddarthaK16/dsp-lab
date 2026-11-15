clc; clear all; close all;
N = input('enter the number of cycles....');
t = 0:0.05:N;
x = sin(2*pi*t);
y = cos(2*pi*t);

subplot(2,2,1); plot(t,x); title('analog sine');
xlabel('time'); ylabel('amplitude');
subplot(2,2,2); stem(t,x); title('discrete sine');
xlabel('time'); ylabel('amplitude');

subplot(2,2,3); plot(t,y); title('analog cosine');
xlabel('time'); ylabel('amplitude');
subplot(2,2,4); stem(t,y); title('discrete cosine');
xlabel('time'); ylabel('amplitude');