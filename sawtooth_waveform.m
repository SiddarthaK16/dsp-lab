% Sawtooth Waveform Generation
% Generates a sawtooth wave using piecewise linear ramp segments

clear all; close all; clc;

% Parameters
fs = 1000;           % Sampling frequency (Hz)
f = 5;               % Fundamental frequency (Hz)
A = 1;               % Amplitude
duration = 1;        % Duration (seconds)
t = 0:1/fs:duration; % Time vector

% Generate sawtooth wave
% Using modulo operation to create the ramp
sawtooth_wave = A * (2 * (f * t - floor(f * t + 0.5)));

% Alternatively, using sawtooth function if available
% sawtooth_wave = A * sawtooth(2 * pi * f * t);

% Plot
figure;
subplot(2,1,1);
plot(t, sawtooth_wave, 'LineWidth', 1.5);
title('Sawtooth Waveform (Time Domain)');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
xlim([0 0.5]);

subplot(2,1,2);
n = length(sawtooth_wave);
freq = (0:n-1)*(fs/n);
magnitude = abs(fft(sawtooth_wave))/n;
plot(freq(1:n/2), magnitude(1:n/2), 'LineWidth', 1.5);
title('Magnitude Spectrum');
xlabel('Frequency (Hz)');
ylabel('Magnitude');
grid on;
xlim([0 100]);

disp('Sawtooth waveform generated successfully!');
disp(['Fundamental frequency: ', num2str(f), ' Hz']);
disp(['Sampling frequency: ', num2str(fs), ' Hz']);
disp(['Duration: ', num2str(duration), ' s']);
