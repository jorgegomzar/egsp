function [b] = sustitucion_pro(A,b)
    N = length(A);
    
    for i = 1:N
        for j=1:(i-1)
            b(i) = b(i) - A(i,j) * b(j);
        end
        b(i) = b(i);
    end
    
end