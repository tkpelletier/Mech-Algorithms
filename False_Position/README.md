# falsePosition.m
falsePosition.m uses the False Position numerical method to estimate the root to a function. The function includes stopping criteria for number of iterations and approximate error.
## Inputs
func - function being exaluated in terms of x (start with "@(x)")\
xl - lower bound for estimate\
xu - upper bound for estimate\
es - desired relative error (stopping criteria in percent) (OPTIONAL)\
maxiter - desired number of iterations (OPTIONAL)
## Ouputs
root - estimated location of root between specified interval\
fx - value of the function at the estimated root\
ea - relative error calculated (Not calculated if iter = 1)\
iter - number of iterations performed for estimate
