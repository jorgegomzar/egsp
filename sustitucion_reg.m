function [b] = sustitucion_reg(A,b)
	N = length(A);
    
    for i = N:-1:1
        for j=(i+1):N
            b(i) = b(i) - A(i,j) * b(j);
        end
        b(i) = b(i)/A(i,i);
    end
    
end