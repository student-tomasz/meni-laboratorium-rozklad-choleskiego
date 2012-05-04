function [ x ] = podstawienie_wstepujace( U, y )

n = length(U);
x = zeros(n, 1);

for i = n:-1:1
    x(i) = (y(i) - sum(x(i:n).*U(i, i:n)')) / U(i, i);
end

end

