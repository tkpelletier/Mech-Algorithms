# findroots.m
findroots.m performs and increment seach over a function to identify where roots could be found. The function may miss roots if the step size inputed is too large. findroots.m is also able to identify exactly where a root is if one of the upper or lower bounds happens to be a root.
## Inputs
func - function in terms of x (To input function start with "@(x)")
a,b - start and end of serach respectively where a<b
dx - step size
## Outputs
num_roots - the number of roots found
increments - the increments where a root was identified
Displayed as a matrix where the rows are the min and max of the increment
