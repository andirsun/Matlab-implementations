function normaf=normaSubordinada(a,p)
    
    x=linspace(-1,1,500);
    y1=(1-abs(x).^p).^(1/p);
    y2=-(1-abs(x).^p).^(1/p);
    xp1=a(1,1).*x + a(1,2).*y1;
    yp1=a(2,1).*x + a(2,2).*y1;
    subplot (1,2,1)
    hold off
    plot(x,y1)
    hold on
    plot(x,y2)
    subplot (1,2,2)
    hold off
    plot(xp1,yp1)
    hold on
    xp2=a(1,1).*x + a(1,2).*y2;
    yp2=a(2,1).*x + a(2,2).*y2;
    plot(xp2,yp2)

    for i=1:length(xp1)
        v1=[xp1(i),yp1(i)];
        norma1(i)=vector_norma(v1,p,2);
    end
    
    for i=1:length(xp2)
        v2=[xp2(i),yp2(i)];
        norma2(i)=vector_norma(v2,p,2);
    end
    
    normaf=max(max(norma1),max(norma2));
    
end


function norm=vector_norma(x,p,n)
    sum=0;
    if length(x) <= n
        for i=1:n
            sum=sum+(x(i))^p;
        end
        norm=(sum)^(1/p);
    end
end

