# luFactor.m
luFactor.m performs LU Factorization with partial pivotong on a square matrix. The L matrix is formed from the ratios used to perform Gauss elimination, and U is generated using Gauss elimination. A pivot matrix is also created to track the pivots made while performing the factorization.
## Inputs
A - coeffiecient matrix (MUST BE SQUARE)
## Outputs
L - lower triangular matrix
U - upper triangular matrix
P - pivot matrix
