function [b] = egsp(A,b)
% A -> matriz de coef. del sistema de ecuaciones n x n
% b -> termino independiente del sistema
% x -> vector con la solucion del problema (escrita en b)
    A = factorizacion(A); % L y U dentro de A
    b = sustitucion_pro(A,b); % L*y = b -> y reescrita en b
    b = sustitucion_reg(A,b); % U*x = y -> x reescrita en y
end

