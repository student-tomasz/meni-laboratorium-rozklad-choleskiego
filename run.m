A = [
    2 1 1 3 2;
    1 2 2 1 1;
    1 2 9 1 5;
    3 1 1 7 1;
    2 1 5 1 8;
];
b = [1 2 4 5 3]';

% L * (L' * x) = b
% L * y = b
% L' * x = y

[L, U] = cholesky(A);
y = podstawienie_zstepujace(L, b);
x = podstawienie_wstepujace(U, y);

%disp('Wynik: ')
x

%disp('Blad rozkladu: ')
blad_rozkladu = A - L*U

%disp('Blad wyniku: ')
blad_wyniku = x - A\b