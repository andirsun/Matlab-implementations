function interDirecta(x,y,a,b)
    hold off
    n=length(x);
    for i=1:n
        for j=0:n-1
            m(i,j+1)=x(i)^j;
        end
    end
    c=inv(m)*y';
    graficar(c,a,b)
    plot(x,y,'.')
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