M=512;
N=512;
center=[floor(M/2),floor(N/2)];
P=20;
pointDis=20;
for i=1:P
    X1(i,1:P)=i;
    Y1(i,1:P)=i;
end
X1=reshape(X1',size(X1,1)*size(X1,2),1);
Y1=reshape(Y1,size(Y1,1)*size(Y1,2),1);
X1=X1*pointDis-P*pointDis/2+center(1);
Y1=Y1*pointDis-P*pointDis/2+center(2);

lengthX1=length(X1);
for i=1:lengthX1
    X1(i)=X1(i)+floor((rand-.5)*10);
    Y1(i)=Y1(i)+floor((rand-.5)*10);
end    