function [num_roots,increments] = findroots(func,a,b,dx)
%Incremental search for a function f(x)
%Outputs: [num_roots,increments]
%   Number of roots found and increments
%   Increments are displayed with each increments in its own row
%Inputs:(func,a,b,dx)
%   func = function in terms of x (To input function start with "@(x)")
%   a,b = start and end of serach respectively where a<b
%   dx = size of increments searching

%Check to see if function is used correctly
if a>=b
    error('a must be less than b')
elseif nargin<4
    dx=0.01;
elseif dx>abs(a-b)
    error('dx must be smaller than the gap between a and b')
elseif dx<0
    error('dx must be positive')
elseif nargin<3
    error('Must have an upper and lower bound')
end
%Taking user input to manipulate
x=(a:dx:b);
%Analyzing first values
f1=feval(func,x(1));
f2=feval(func,x(2));
%Constants for calculation
num_roots1=0;
num_roots2=0;
i=1;
j=1;
increments=[0,0];
root=(0);
for k=1:length(x)-1
    f1=feval(func,x(k));
    f2=feval(func,x(k+1));
    %Test to see if a root exists
    if f1==0 %If one of the values is zero record it
        num_roots2=num_roots2+1;
        root(j,1)=x(k);
        j=j+1;
    elseif f1*f2<0
        %If one does, record it
        num_roots1=num_roots1+1;
        increments(i,1)=x(k);
        increments(i,2)=x(k+1);
        i=i+1; 
    end
end
fprintf('There are %.0f roots between the increments:\n',num_roots1)
disp(increments)
if j>=2
    fprintf('Found %.0f roots exact location at:\n',num_roots2)
    disp(root)
end


