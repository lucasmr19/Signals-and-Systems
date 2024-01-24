# **Signals and Systems - MATLAB© Practices**

This repository contains MATLAB exercises and practical sessions focusing on various topics related to "Signals and Systems".

### PRACTICE 1: Signals in MATLAB
- **Useful functions:**
    - `decompose_even_odd`: returns the even and odd parts of a given signal.
    - `get_Energy_x_t`: returns the energy of a continuous given signal $x(t), t \in \mathbb{R}$.
    - `get_Energy_x_n`: returns the energy of a discrete given signal $x[n], n \in \mathbb{Z}$.
    - `get_Power`: returns the power of a given signal.
- **Exercise 1:** Signal representation (`stem` command for discrete signals and `plot` command for continuous signals).
- **Exercise 2:** Signal transformations (inversions and shiftings).
- **Exercise 3:** Signal decompositions into even and odd parts using the `decompose_even_odd` function.
- **Exercise 4:** Complex signal representation (using MATLAB commands `real`, `imag`, `abs`, `angle`).
- **Exercise 5:** Arithmetic operations with signals (use the `.` operator for element-wise operations).

### PRACTICE 2: Periodicity
- **Useful functions:**
    - `f_test_period`: returns true if the *discrete* signal has the specified period and false otherwise.
    - `f_get_period`: returns the fundamental period $N_0 \in \mathbb{Z}^+$ of a *discrete* signal. If the signal is non-periodic, it returns 0.
- **Exercise 1:** Study the evolution of $w_0, N_0$ of a discrete cosine signal.
- **Exercise 2:** Study the evolution of $w_0, N_0$ of a discrete sine signal.
- **Exercise 3:** Study the evolution of $w_0, N_0$ of a discrete complex exponential signal.
- **Exercise 4:** Compare the evolution of $T_0 \in \mathbb{R^+}, N_0 \in \mathbb{Z}^+$ of continuous and discrete signals.
- **Exercise 5:** Study the periodicity of the discrete periodic signals addition using the `f_get_period` function.
- **Exercise 6:** Study the periodicity of the discrete periodic signals multiplication using the `f_get_period` function.

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
