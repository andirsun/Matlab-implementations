function metodoGaussSeidel(A,b,x0,tol,m)
    n=length(b);
    D=diag(diag(A));
    U=triu(A,1);
    L=tril(A,-1);
    T=-inv(D+L)*U
    rT=radioEspectral(T)
    C=inv(D+L)*b';
    for i=1:m
        y=T*x0 + C;
        if max(y-x0) < tol
            result=y;
            break
        end
        x0=y;
    end          
end


function f=radioEspectral(A)
    
    f=max(abs(eig(A)));
end