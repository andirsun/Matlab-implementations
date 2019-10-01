function c=polinomioNewton(x,y)
    n=length(x);
    m=zeros(n);
    for i=1:n
        pro=1;
        for j=1:i
            if j==1
                m(i,j)=1;
            else
                pro=pro*(x(i)-x(j-1));
                m(i,j)=pro;
            end
            
        end
    end
    c=matrizTriangularInf(m,y);
    %graficar(c,a,b)
end


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


function graficar(c,a,b)
    n=length(c)-1;
    x=linspace(a,b);
    for i=1:length(x)
        sum=0;
        for j=0:n
            sum=sum+c(j+1)*x(i)^(j);
        end
        y(i)=sum;
    end
    plot(x,y)
    hold on
end