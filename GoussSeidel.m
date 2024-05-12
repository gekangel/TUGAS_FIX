% 662021001-kdkagl

function [x, iter] = GaussSeidel(A, b, x0, tol, max_iter);
    % Input 
    A = [4 1 2; 3 5 1; 1 2 4];  
    b = [8; 15; 7];  
    x0 = [0; 0; 0];  
    tol = 1e-6;  
    max_iter = 10;  
    if nargin < 5
        max_iter = 100; 
    end
    if size(A, 1) ~= size(A, 2) || size(b, 1) ~= size(A, 1)
        error('Input matrices must be square and compatible');
    end

    % inisialisasi
    n = size(A, 1);
    x = x0;
    iter = 0;
    error_rel = tol + 1;
    
    % Gauss-Seidel 
    while error_rel > tol && iter < max_iter
        x_prev = x;
        for i = 1:n
            sum_other_terms = 0;
            for j = 1:n
                if j ~= i
                    sum_other_terms = sum_other_terms + A(i, j) * x(j);
                end
            end
            x(i) = (b(i) - sum_other_terms) / A(i, i);
        end
        
        % relative error
        error_rel = norm(x - x_prev) / norm(x);
        iter = iter + 1;
    end
    
    % output
    if iter >= max_iter
        fprintf('Iteration stopped due to maximum number of iterations.\n');
    else
        fprintf('Iteration completed.\n');
    end
end