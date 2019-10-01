function m=normaUno(a)
    tam=size(a);
    maxVector=[];
    for i=1:tam(2)
        sum=0;
        for j=1:tam(1)
            sum=sum + abs(a(j,i));
        end
        maxVector(i)=sum;
    end
    m=max(maxVector);
end