function [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
% [root,fx,ea,iter] = falsePosition(func,xl,xu,es,maxiter)
%falsePosition uses the false position method to estimate a root
%   INPUTS:
%       func - function being exaluated in terms of x (start with "@(x)")
%       xl - lower bound for estimate
%       xu - upper bound for estimate
%       es - desired relative error (stopping criteria in percent) (OPTIONAL)
%       maxiter - desired number of iterations (OPTIONAL)
%   OUTPUTS:
%       root - estimated location of root between specified interval
%       fx - value of the function at the estimated root
%       ea - relative error calculated (Not calculated if iter = 1)
%       iter - number of iterations performed for estimate

%-------------------------------------------------------------------------

%Check input argumets
if nargin<3
    error('Must have first 3 inputs')
elseif nargin<4
    maxiter=200;
    es=0.0001; %Percent
elseif nargin<5
    maxiter=200;
end
%Check to see if inputs are valid (make sure user isn't a dummie)
f1=feval(func,xl);
f2=feval(func,xu);
if f1*f2>0
    error('Upper and lower bound of f(x) must be opposite signs')
elseif xl>xu
    error('xl must be less than xu')
elseif es>=100
    error('Stopping criteria must be less than 100%')
elseif maxiter<1
    error('Must have a minimum of 1 iterations')
end

%--------------------------------------------------------------------------
%Algorithm

%Set some initial values for variables
iter=0;
ea=100;
rootprev=0;
root=0;
%Find that root!
while es<=ea && maxiter>iter %Two stopping criteria
    iter=iter+1; %Counts iterations
    rootprev=root; %Store last root calculated
    f1=feval(func,xl); %evaluate function at bounds
    f2=feval(func,xu);
    root=xu-(f2*(xu-xl))/(f2-f1); %Calculate new root
    %Find what value to replace with xr
    if feval(func,root)*f1>0
        xl=root;
    else
        xu=root;
    end
    %Check approximate error
    if iter>=2
        ea=(root-rootprev)/root*100;
    end
end
format long
fx=feval(func,root); %Calculate f(x), should always be near zero

    













