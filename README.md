# DSP Lab

This repository contains MATLAB/Octave scripts from my Digital Signal Processing (DSP) lab coursework. I'm using this to learn MATLAB basics alongside my DSP lab course.

## Scripts Included

### Convolution
| Script | Description |
|--------|-------------|
| `Circular_convolution.m` | Circular convolution using DFT/IDFT approach |
| `Linear_convolution.m` | Direct linear convolution implementation |
| `auto_correlation.m` | Auto-correlation using built-in `xcorr` |
| `cross_correlation.m` | Cross-correlation of two sequences using `xcorr` |

### Filter Design
| Script | Description |
|--------|-------------|
| `IIR_butterworth_filter.m` | Butterworth IIR lowpass filter design (bilinear transform) |
| `chebyshev_filter.m` | Chebyshev Type I filter design (LPF, HPF, BPF, BSF) |

### Waveform Generation
| Script | Description |
|--------|-------------|
| `sin_and_cos.m` | Basic sine and cosine waveform generation |
| `triangular_waveform.m` | Triangular wave synthesis |
| `sawtooth_waveform.m` | Sawtooth wave with FFT spectrum |
| `square_waveform.m` | Square wave from line segments |
| `trapezoidal_waveform.m` | Trapezoidal wave (rise/stay/fall segments) |

### Sampling Rate Conversion
| Script | Description |
|--------|-------------|
| `upsampling.m` | Interpolation by factor L using `interp` |
| `downsampling.m` | Decimation by factor D using `decimate` (FIR) |

## Topics Covered

- **Convolution**: Linear vs circular convolution, time and frequency domain approaches
- **Correlation**: Auto-correlation and cross-correlation analysis
- **Filter Design**: Butterworth and Chebyshev IIR filter design techniques
- **Waveform Generation**: Fundamental signal synthesis (sinusoidal, triangular, sawtooth, square, trapezoidal)
- **Sampling Rate Conversion**: Upsampling (interpolation) and downsampling (decimation)
- **MATLAB Basics**: Script structure, plotting, signal processing functions

## Usage

Run any script in MATLAB or Octave:

```matlab
% Convolution
>> Circular_convolution
>> Linear_convolution
>> auto_correlation
>> cross_correlation

% Filter Design
>> IIR_butterworth_filter
>> chebyshev_filter

% Waveform Generation
>> sin_and_cos
>> triangular_waveform
>> sawtooth_waveform
>> square_waveform
>> trapezoidal_waveform

% Sampling Rate Conversion
>> upsampling
>> downsampling
```

Most scripts prompt for user input (frequencies, filter parameters, sequence values, etc.).

## Learning Goals

- Understand DSP concepts through practical implementation
- Gain proficiency in MATLAB/Octave for signal processing
- Build a reference library of common DSP algorithms
- Explore time-domain and frequency-domain signal analysis

## Requirements

- MATLAB R2018a+ or Octave 5.0+
- Signal Processing Toolbox (for `cheby1`, `cheb1ord`, `interp`, `decimate`, `xcorr`)

## Repository Structure

```
dsp-lab/
├── README.md
├── Circular_convolution.m
├── Linear_convolution.m
├── auto_correlation.m
├── cross_correlation.m
├── IIR_butterworth_filter.m
├── chebyshev_filter.m
├── sin_and_cos.m
├── triangular_waveform.m
├── sawtooth_waveform.m
├── square_waveform.m
├── trapezoidal_waveform.m
├── upsampling.m
└── downsampling.m
```
