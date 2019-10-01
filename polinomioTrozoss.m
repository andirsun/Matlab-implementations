function p=polinomioTrozoss(X,Y,xin)
    tam=length(X);
    [A,b]=CrearSistema(2*(tam-1),X,Y)
    r=inv(A)*b'
    if xin <= X(1)
        p=r(1)*xin + r(2);
    else
        if xin >= X(length(X))
            p=r(length(r)-1)*xin + r(length(r));
        else
            cont=1;
            for i=1:2:length(r)-1
                if xin <= X(cont+1) && xin > X(cont)
                    p=r(i)*xin + r(i+1);
                    break
                end
                cont=cont+1;
            end
        end
    end
end



function [A,b]=CrearSistema(n,x,Y)
    A=zeros(n,n);
    conti=1;
    contx=1;
    for j=1:2:n
        A(conti,j)=x(contx);
        A(conti,j+1)=1;
        A(conti+1,j)=x(contx+1);
        A(conti+1,j+1)=1;
        conti=conti+2;
        contx=contx+1;
    end
    contb=2;
    b(1)=Y(1);
    for i=2:length(Y)-1
        b(contb)=Y(i);
        b(contb+1)=Y(i);
        contb=contb+2;
    end
    b(length(b)+1)=Y(length(Y));
end