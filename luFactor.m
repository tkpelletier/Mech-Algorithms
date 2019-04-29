function [L,U,P] = luFactor(A)
%[L,U,P] = luFactor(A)
%Performs LU Factorization with parital pivoting on a square matrix
%   INPUTS:
%       A - coeffiecient matrix (MUST BE SQUARE)
%   OUTPUTS:
%       L - lower triangular matrix
%       U - upper triangular matrix
%       P - pivot matrix

%--------------------------------------------------------------------------
%Make sure matrix is square
[m,n]=size(A);
if m~=n
    error('COEFFICIENT MATRIX MUST BE SQUARE')
end
%Set up L and P
L=eye(m); %L has ones along the diagonal
P=L; %P is just the identity matrix
%Perform Factorization
for j=1:n-1
    %Swap rows so that the max is on top
    [mx,r]=max(abs(A(j:m,j))); %Finds row with max
    r=r+j-1; %check if same row
    if r~=j
        A([j r],:)= A([r j],:); %Swap current row with row with max
        P([j r],:)= P([r j],:); %Swap pivots
        if j>1
            L([j r],1:j-1)= L([r j],1:j-1); %Swap L matrix after first column
        end
    end
    for i=j+1:m
        %Solve for U matrix and L components using Gauss
        L(i,j)=A(i,j)/A(j,j); %ratio for elimnation
        A(i,:)=A(i,:)-L(i,j)*A(j,:); %subtracting rows and eliminating
    end
end
U=A;%Make U the reduced A
end

