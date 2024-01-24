# Signals and Systems - MATLAB© Practices

This repository contains MATLAB exercises and practical sessions focusing on various topics related to "Signals and Systems."

### PRACTICE 1: Signals in MatLab
- Useful functions:
    - decompose_even_odd: return the even and odd parts of a given signal.
    - get_Energy_x_t: return the energy of a continuous given signal $x(t), t \in \mathbb{R}$.
    - get_Energy_x_t: return the energy of a discrete given signal $x[n], n \in \mathbb{Z}$.
    - get_Power: return the power of a given signal.
- exercise 1: Signal representation (`stem` command for discrete signals and `plot` command for contniuous signals).
- exercise 2: Signal transformations (Inversions and shiftings).
- exercise 3: Signal decompositions in his even and odd parts.
- exercise 4: Complex signal representation (using the matlab commands `real`, `imag`, `abs`, `angle`).
- exercise 4: Arithmetic operations with signals ( we use the `.` operator for element-wise operations).

### PRACTICE 2: Periodicity
- Frequency range of discrete periodic exponentials.
- Periodicity in discrete-time signals (Comparison of discrete vs. continuous signals).
- Periodicity checking function, periodicity calculation function.

### PRACTICE 3: Convolution
- Convolution of discrete signals.
- 'Manual' convolution of finite causal signals.
- 'Manual' convolution of finite non-causal signals.
- MATLAB's conv function.
- Operations on discrete LTI systems:
  - Commutativity
  - Distribution with respect to addition
  - Associativity

### PRACTICE 4: Fourier Series
- Complex exponentials as eigenfunctions of LTI systems.
  - Causal LTI systems
  - Obtaining system output using the conv function.
  - Obtaining eigenvalues
  - Obtaining system output using the filter function.
- Fourier Series Expansion of discrete periodic signals.
  - DFS of discrete sinusoids.
  - Obtaining a signal from its coefficients.
  - DFS of discrete square signals.
  - Reconstruction of a signal from some of its coefficients.

### PRACTICE 5: Fourier Transform (FT)
- Numerical approximation of continuous-time Fourier Transform (TF).
- Obtaining TF of basic signals.
- Extracting parameters from the TF of basic signals.
- TF of an audio signal, obtaining and characterizing it.
- Synthesis of the TF of a real signal from its TF.

### PRACTICE 6: Applications of Fourier Transform
- Echo generation.
  - Echo generation in a sample signal.
  - Echo generation in an audio signal.
- Selective filtering.
  - Selective filtering of an audio signal.
- Encryption.
  - Encryption of an audio signal.
  - Decryption of an encrypted audio signal.

### EXAMS: (No specific content provided)
