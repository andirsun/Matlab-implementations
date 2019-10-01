function normap(p)
    hold off
    x=linspace(-1,1);
    y1 = ( 1 - abs(x.^p)).^(1/p);
    y2 = -( 1 - abs(x.^p)).^(1/p);
    plot(x,y1)
    hold on
    plot(x,y2)
    plot([-2,2],[0,0],'k')
    plot([0,0],[-2,2],'k')
end
