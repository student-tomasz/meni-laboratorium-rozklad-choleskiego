function [ y ] = podstawienie_zstepujace( L, b )

n = length(L);
y = zeros(n, 1);

for i = 1:n
    y(i) = (b(i) - sum(y(1:i).*L(i, 1:i)')) / L(i, i);
end

end
