function v=sucesionConvergente(m,tol)
    v=0;
    v0=[3,1,-2];
    for i=2:m
        v=[(1/i)+2,exp(1-i),(-2/i^2)];
        r=abs(v-v0);
        if (r(1)<tol) && (r(2)<tol) && (r(3)<tol)
            disp("Converge");
            break
        end
        v0=v;
    end
end