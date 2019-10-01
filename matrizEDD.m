function matrizEDD(A)
    rf=matrizEDDf(A);
    rc=matrizEDDc(A);
    
    if rf==1
        disp("A es EDD por filas")
    else 
        disp("A no es EDD por filas")
    end
    
    if rc==1
        disp("A es EDD por columnas")
    else 
        disp("A no es EDD por columnas")
    end
end


function r=matrizEDDc(A)
    tam=size(A);
    f=0;
    for i=1:tam(2)
        sumcol=0;
        for j=1:tam(1)
            if i ~= j
                sumcol=sumcol + abs(A(j,i));
            end
        end
        if abs(A(i,i)) > sumcol
            f=f+1;
        end
    end
    if f==tam(2)
        r=1;
    else
        r=0;
    end
    
end

function r=matrizEDDf(A)
    tam=size(A);
    f=0;
    for i=1:tam(1)
        sumfila=0;
        for j=1:tam(2)
            if i ~= j
                sumfila=sumfila + abs(A(i,j));
            end
        end
        if abs(A(i,i)) > sumfila
            f=f+1;   
        end
    end
    if f==tam(1)
        r=1;
    else
        r=0;
    end
    
end