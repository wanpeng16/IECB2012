R=8;
M=2*R+1;
for i=1:M
    for j=1:M
        if (i-M/2)^2+(j-M/2)^2<(M/2)^2
            sphere(i,j)=1;
        else
            sphere(i,j)=0;
        end
    end
end