function normaFrobenius(a,n)
    sum=0;
    for i=1:n
        for j=1:n
            sum=sum + a(i,j)^2;
        end
    end
end