clc; close all; clear all;
x=input('Enter the sequence : ');
y=xcorr(x,x);

figure;
subplot(2,1,1); stem(x);
xlabel('n->'); ylabel('Amplitude->'); title('Input sequence');
subplot(2,1,2); stem(fliplr(y));
xlabel('n->'); ylabel('Amplitude->'); title('Output sequence');

disp('the resultant is');
disp(fliplr(y));