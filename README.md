# **Signals and Systems - MATLAB© Practices**

This repository contains MATLAB exercises and practical sessions focusing on various topics related to "Signals and Systems".

### PRACTICE 1: Signals in MATLAB
- [**Useful functions:**](https://github.com/lucasmr19/Signals-and-Systems/tree/main/Practice%201/Useful%20functions)
    - [`decompose_even_odd`](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201/Useful%20functions/decompose_even_odd.m): returns the even and odd parts of a given signal.
    - [`get_Energy_x_t`](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201a/Useful%20functions/get_Energy_x_t.m): returns the energy of a continuous given signal $x(t), t \in \mathbb{R}$.
    - [`get_Energy_x_n`](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201/Useful%20functions/get_Energy_x_n.m): returns the energy of a discrete given signal $x[n], n \in \mathbb{Z}$.
    - [`get_Power`](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201/Useful%20functions/get_Power.m): returns the power of a given signal.
- [**Exercise 1:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201/exercise_1.m) Signal representation ([`stem`](https://www.mathworks.com/help/matlab/ref/stem.html) command for discrete signals and [`plot`](https://www.mathworks.com/help/matlab/ref/plot.html) command for continuous signals).
- [**Exercise 2:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201/exercise_2.m) Signal transformations (inversions and shiftings).
- [**Exercise 3:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201/exercise_3.m) Signal decompositions into even and odd parts using the `decompose_even_odd` function.
- [**Exercise 4:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201/exercise_4.m) Complex signal representation (using MATLAB commands [`real`](https://www.mathworks.com/help/matlab/ref/real.html), [`imag`](https://www.mathworks.com/help/matlab/ref/imag.html), [`abs`](https://www.mathworks.com/help/matlab/ref/abs.html), [`angle`](https://www.mathworks.com/help/matlab/ref/angle.html)).
- [**Exercise 5:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%201/exercise_5.m) Arithmetic operations with signals ([see here](https://www.mathworks.com/help/matlab/matlab_prog/matlab-operators-and-special-characters.html)).

### PRACTICE 2: Periodicity
- [**Useful functions:**](https://github.com/lucasmr19/Signals-and-Systems/tree/main/Practice%202/Useful%20functions)
    - [`f_test_period`](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%202/Useful%20functions/f_test_period.m): returns true if the *discrete* signal has the specified period and false otherwise.
    - [`f_get_period`](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%202/Useful%20functions/f_get_period.m): returns the fundamental period $N_0 \in \mathbb{Z}^+$ of a *discrete* signal. If the signal is non-periodic, it returns 0.
- [**Exercise 1:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%202/exercise_1.m) Study the evolution of $w_0, N_0$ of a discrete cosine signal.
- [**Exercise 2:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%202/exercise_2.m) Study the evolution of $w_0, N_0$ of a discrete sine signal.
- [**Exercise 3:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%202/exercise_3.m) Study the evolution of $w_0, N_0$ of a discrete complex exponential signal.
- [**Exercise 4:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%202/exercise_4.m) Compare the evolution of $T_0 \in \mathbb{R^+}, N_0 \in \mathbb{Z}^+$ of continuous and discrete signals.
- [**Exercise 5:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%202/exercise_5.m) Study the periodicity of the discrete periodic signals addition using the `f_get_period` function.
- [**Exercise 6:**](https://github.com/lucasmr19/Signals-and-Systems/blob/main/Practice%202/exercise_6.m) Study the periodicity of the discrete periodic signals multiplication using the `f_get_period` function.

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
