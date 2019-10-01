function x=matrizTriangularInf(A,b)
    tam_b=size(b);
    tam_a=size(A);
    x(1)=b(1)/A(1,1);
    for i=2:tam_a(1)
        sum=0;
        for k=i-1:-1:1
            sum=sum+A(i,k)*x(k);    
        end
        x(i)=(b(i) - sum)/A(i,i);
    end
end