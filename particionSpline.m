function particionSpline(a,b)
    hold off
    [x1,y1]=funcion(a,b);
    xx=linspace(a,b,200);
    y=(1./(1+25.*xx.^2));
    p=spline(x1,y1,xx);
    plot(x1,y1,'.');
    hold on
    plot(xx,y);
    plot(xx,p,'g');
end



function [x1,y1]=funcion(a,b)
    x1=linspace(a,b,10);
    y1=(1./(1+25.*x1.^2));
 
end
