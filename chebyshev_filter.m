% Chebyshev IIR filters
rp = input('Enter the pass band ripple: ');
rs = input('Enter the stop band ripple: ');
wp = input('Enter the pass band frequency: ');
ws = input('Enter the stop band frequency: ');
fs = input('Enter the sampling frequency: ');

w1 = 2 * wp / fs;
w2 = 2 * ws / fs;

% Low-pass
[n, wn] = cheb1ord(w1, w2, rp, rs);
[b, a] = cheby1(n, rp, wn, 'low');
[H, w] = freqz(b, a, 512);

figure;

subplot(2, 2, 1);
plot(w, abs(H));
xlabel('Normalized frequency');
ylabel('abs(H)');
title('LPF');

% High-pass
[n, wn] = cheb1ord(w2, w1, rp, rs);
[b, a] = cheby1(n, rp, wn, 'high');
[H, w] = freqz(b, a, 512);

subplot(2, 2, 2);
plot(w, abs(H));
xlabel('Normalized frequency');
ylabel('abs(H)');
title('HPF');

% Band-pass
[b, a] = cheby1(n, rp, [w1 w2], 'bandpass');
[H, w] = freqz(b, a, 512);

subplot(2, 2, 3);
plot(w, abs(H));
xlabel('Normalized frequency');
ylabel('abs(H)');
title('BPF');

% Band-stop
[b, a] = cheby1(n, rp, [w1 w2], 'stop');
[H, w] = freqz(b, a, 512);

subplot(2, 2, 4);
plot(w, abs(H));
xlabel('Normalized frequency');
ylabel('abs(H)');
title('BSF');