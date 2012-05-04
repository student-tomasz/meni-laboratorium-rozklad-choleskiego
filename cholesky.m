function [ L, U ] = cholesky( A )

n = length(A);
U = zeros(size(A));

for i = 1:n
    for j = i:n
        if j == 1
            sum = A(i, i);   
        else
            sum = A(i, j) - U(1:i-1, i)' * U(1:i-1, j);
        end
        
        if j > i
            U(i, j) = sum / U(i, i);
        else
            U(i, i) = sqrt(sum);
        end
    end
end
L = U';

end
