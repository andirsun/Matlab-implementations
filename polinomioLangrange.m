function p=polinomioLangrange(xin,X,Y)
    sum=0;
    for i=1:length(X)
        lx=calculoLX(xin,i,X);
        sum=sum+(lx*Y(i));
    end
    p=sum;
end


function l=calculoLX(xin,n,X)
    multn=1;
    %Numerador
    for i=1:length(X)
        if i ~= n
            multn=multn*(xin-X(i));
        end
    end
    %Denominador
    
    multd=1;
    for i=1:length(X)
        if i ~= n
            multd=multd*(X(n)-X(i));
        end
    end
    l=(multn)/multd;
    
    
end