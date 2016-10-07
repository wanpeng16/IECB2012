%deletes points which has a distance more than threshold parameter
lengthX=length(X1);
thr=8;
j=1;
for i=1:lengthX
    if (X2(i)-X1(i))^2+(Y2(i)-Y1(i))^2<thr^2
        temp1(j,:)=[X1(i) Y1(i)];
        temp2(j,:)=[X2(i) Y2(i)];
        j=j+1;
    else

    end
end
clear X2 Y2 X1 Y1
X1=temp2(:,1);
Y1=temp2(:,2);
X2=temp1(:,1);
Y2=temp1(:,2);