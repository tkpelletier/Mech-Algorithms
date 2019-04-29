# Mech-Algorithms
These are a few algorithms that I developed in Mech 105 in Sping 2019
## Algorithms
All algorithms are developed for MATLAB and all specific usage can be found in the functions themselves
### findroots.m
This function is an increment search that finds were roots are, between [a,b]. This can be used to specify bounds for numerical bracketing methods, such as bisection.
### falsePosition.m
This function uses the false position method to estimate the root of a function. A function and upper and lower bound are required inputs, and you may specificy stopping conditions. The estimate stops when it reaches a certain realtive error or number of iterations.
### luFactor.m
This function performs LU Factorization on a square matrix. It takes an inputed square matrix A and ouputs the L and U matrices for A. This function uses partial pivoting to run without errors and ensure accuracy.
### Simpson.m
This function approximates the integral of tabular data using the Simpson's 1/3 rule. If the function has an odd number of intervals, the last interval is approximated using the trapezoidal rule. The x data must be evenly spaced and y data must correspond to the x values to receive accurate results.
