clc; clear all; close all;
% Chebyshev IIR filters
rp=input('Enter the pass band ripple: ');
rs=input('Enter the stop band ripple: ');
wp=input('Enter the pass band frequency: ');
ws=input('Enter the stop band frequency: ');
fs=input('Enter the sampling frequency: ');
w1=2*wp/fs;
w2=2*ws/fs;
[n,wn]=cheb1ord(w1,w2,rp,rs);

%Low pass
[b,a]=cheby1(n,rp,wn);
[h,w]=freqz(b,a,512);
subplot(2,2,1); plot(w,abs(h)); title('Low pass filter');
xlabel('normalised frequency'); ylabel('abs(h)');

%High pass
[b,a]=cheby1(n,rp,wn,'high');
[h,w]=freqz(b,a,512);
subplot(2,2,2); plot(w,abs(h)); title('High pass filter');
xlabel('normalised frequency'); ylabel('abs(h)');

%Band pass
wn1=[w1 w2];
[b,a]=cheby1(n,rp,wn1);
[h,w]=freqz(b,a,512);
subplot(2,2,3); plot(w,abs(h)); title('Band pass filter');
xlabel('normalised frequency'); ylabel('abs(h)');

%Band stop
wn2=[w1 w2];
[b,a]=cheby1(n,rp,wn2,'stop');
[h,w]=freqz(b,a,512);
subplot(2,2,4); plot(w,abs(h)); title('Band stop filter');
xlabel('normalised frequency'); ylabel('abs(h)');