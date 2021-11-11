function [A] = factorizacion(A)
    [n,n] = size(A);
    L = eye(n);
    U = eye(n);
    
    for k = 1:n
        L(k,k) = 1;
        U(1,k) = A(1,k);
        for i = k:n
            U(k,i) = A(k,i) - L(k,1:k-1) * U(1:k-1,i);
        end
        for i = (k+1):n
            L(i,k) = (A(i,k) - L(i,1:k-1) * U(1:k-1,k)) / U(k,k); 
        end
    end

    % Guardamos L y U en A
    L = L - eye(n);
    A = L+U;
    %disp("Matriz A factorizada:");
    %disp(A);
end