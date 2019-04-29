function I = Simpson(x,y)
%I = Simpson(x,y)
%Simpson approximates the integral of tabular data unsing the Simpson's 1/3
%rule. If the function has an odd number of intervals, the last interval is
%approximated using the trapezoidal rule
%   INPUTS:
%       x - an array of x-values with equal spacing (same length as y)
%       y - an array of y-values corresoponding to the x values
%   OUTPUTS:
%       I - approximated integral using Simpson's 1/3 rule

%--------------------------------------------------------------------------

%Check input arguments
if nargin<2
    error('MUST HAVE TWO INPUTS')
end
%Check array sizes and x intervals
xs=length(x);
ys=length(y);
xint=std(diff(x));
if ys~=xs
    error('ARRAYS MUST BE SAME LENGTH')
elseif xs<=1
    error('ARRAYS MUST HAVE AT LEAST TWO INPUTS')
elseif xint>10*eps
    error('X MUST BE EQUALLY SPACED')
end
%--------------------------------------------------------------------------

%Algorithm

%Check if intervals are even or odd then do procedure
j=1;
h=x(2)-x(1);
I=zeros(1,xs);
if mod(xs,2) %Determines if intervals are even
    for i=1:2:xs-2
        I(1,j)=h/3*(y(i)+4*mod(7y(i+1)+y(i+2));%1/3 rule
        j=j+1;
    end
else
    for i=1:2:xs-3
        I(1,j)=h/3*(y(i)+4*y(i+1)+y(i+2));%1/3 rule
        j=j+1;
    end
    I(1,j)=h/2*(y(xs)+y(xs-1));%Trap rule
end
I=sum(I);%Add all iterations
end
