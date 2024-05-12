%662021001-kdkagl

A = [4 1 2; 3 5 1; 1 2 4];
b = [8; 15; 7];
x0 = [0; 0; 0];
w = 1.5;
eps = 1e-6;
k = 0;
x = x0;
% SOR iteration
while norm(A*x - b) > eps
    for i = 1:3
        sigma = 0;
        for j = 1:i-1
            sigma = sigma + A(i,j)*x(j);
        end
        for j = i+1:3
            sigma = sigma + A(i,j)*x(j);
        end
        x(i) = (1 - w)*x(i) + w*(b(i) - sigma)/A(i,i);
    end
    k = k + 1;
end

% munculkan solusi
x