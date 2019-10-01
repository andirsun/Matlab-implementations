function [A,B,c,b,d,p]=poliCubico(x,y,xin)
% x=[-3 -2 1 4]
% y=[2 0 3 1]
    h=calcH(x);
    [A,B]=sistema(x,y,h);
    c=metodoJacobi(A,B,xin,0.0001,400);
    [b,d]=calcBD(y,h,c);
    p=polinomioCubico(A,B,c,b,d,x,y,xin)
end


function h=calcH(x)
    for i=2:length(x)
        h(i-1)=x(i)-x(i-1);
    end
end

function [A,b]=sistema(x,y,h)
    A=zeros(length(x),length(x));
    A(1,1)=1;
    A(length(x),length(x))=1;
    b(1)=0;
    b(length(x))=0;
    j=1;
    for i=2:length(x)-1
        A(i,j)=h(i-1);
        A(i,j+1)=2*(h(i-1)+h(i));
        A(i,j+2)=h(i);
        b(i)=((3/h(i))*(y(i+1)-y(i)))-((3/h(i-1))*(y(i)-y(i-1)));
        j=j+1;
    end
end

function  [b,d]=calcBD(y,h,c)
    for i=1:length(y)-1
        b(i)=((y(i+1) - y(i))/h(i)) - ((2*c(i)+c(i+1))*(h(i)/3));
        d(i)=((c(i+1)-c(i)))/(3*h(i));
    end
end

function p=polinomioCubico(A,B,c,b,d,x,y,xin)
    p="a";
    for i=1:length(x)-1
        if xin < x(i+1) && x(i) <= xin
            p=y(i) + b(i)*(xin - x(i)) + c(i)*(xin-x(i))^2 +d(i)*(xin-x(i))^3;
        end
    end
    
end

function result=metodoJacobi(A,b,x0,tol,m)
    result=0;
    n=length(b);
    D=diag(diag(A));
    U=triu(A,1);
    L=tril(A,-1);
    T=-inv(D)*(L+U);
    C=inv(D)*b';
    for i=1:m
        y=T*x0 + C;
        if max(y-x0) < tol
            result=y;
            break
        end
        x0=y;
    end        
end
