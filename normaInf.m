function m=normaInf(a)
    tam=size(a);
    maxVector=[];
    for i=1:tam(2)
        sum=0;
        for j=1:tam(1)
            sum=sum + abs(a(i,j));
        end
        maxVector(i)=sum;
    end
    m=max(maxVector);
end