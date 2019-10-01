function x=matrizTriangularSup(A,b)
    tam_b=size(b);
    tam_a=size(A);
    x(tam_b(2))=b(tam_b(2))/A(tam_a(1),tam_a(2));
    for i=tam_b(2)-1:-1:1
        sum=0;
        for k=i+1:tam_a(1)
            sum=sum+A(i,k)*x(k);    
        end
        x(i)=(b(i) - sum)/A(i,i);
    end
end