function m=normaDos(A)
    m=sqrt(max(abs(eig(A'*A))));
end