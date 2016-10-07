function m=momentum(Vect,Order)
%gives a vector and the order of the moment and returns its normalized
%moment
N=length(Vect);
m1=0;m2=0;
for i=1:N;
    m1=m1+(i^Order)*Vect(i);
    m2=m2+(i^Order);
end
m=m1/m2;
end