function sefr=sefrNum(R)
%computes the number of pixel btw rectangular and sphere with equal
%diameter and length for sphere and rectangular
sefr=0;
yek=0;
for i=1:2*R+1
    for j=1:2*R+1
        if (i-(R+1))^2+(j-(R+1))^2<R*R
            dayre(i,j)=1;
            yek=yek+1;
        else 
            dayre(i,j)=0;
            sefr=sefr+1;
        end
    end
end