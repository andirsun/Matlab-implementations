function r = DiferenciaDivididaNewton(xin,X, Y)
    % X = [2 3 6 7 9]
    % Y = [15 39 243 375 771]
    r=0;
    [filas, columnas] = size(X);
    c = DiferenciaDivididaNewtonCoef(X, Y);
    for i = 1 : columnas
        coef = c(i);
        for j = 1 : i - 1
            coef = coef .* (xin - X(j));
        end
        r = r + coef;
    end
end

function coef = DiferenciaDivididaNewtonCoef(X, Y)
    [ fil, col ] = size(X); 
    f = zeros(col, col);
    f(:, 1) = Y';
    coef = zeros(1, col);
    for j = 2 : col
        for i = 1 : (col - j + 1)
            f(i,j) = (f(i + 1, j - 1) - f(i, j - 1)) / (X(i + j - 1) - X(i));
        end
    end
    disp(f)
    for i = 1 : col
        coef(i) = f(1, i);
    end
end

