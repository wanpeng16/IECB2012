function [X2i Y2i Sim]=similarPoint(X1i,Y1i,Loc1s1,Loc1s2,Loc1s4,Loc2s1,Loc2s2,Loc2s4,EdgeLoc1s1,EdgeLoc1s2,EdgeLoc1s4,EdgeLoc2s1,EdgeLoc2s2,EdgeLoc2s4)
%gives features of a point and finds its correspondent point
m=size(Loc1s1,1);
n=size(Loc1s1,2);
a_u=zeros(m,n);
a_v=zeros(m,n);
e_u=zeros(m,n);
e_v=zeros(m,n);
Sim=zeros(m,n);
for i=X1i-5:X1i+5
    for j=Y1i-5:Y1i+5
        a_u(i,j,1,1:3)=Loc1s1(i,j,1:3);
        a_v(i,j,1,1:3)=Loc2s1(X1i,Y1i,1:3);
        e_u(i,j,1,1:3)=EdgeLoc1s1(i,j,1:3);
        e_v(i,j,1,1:3)=EdgeLoc2s1(X1i,Y1i,1:3);
        a_u(i,j,2,1:3)=Loc1s2(floor(i/2)+1,floor(j/2)+1,1:3);
        a_v(i,j,2,1:3)=Loc2s2(floor(X1i/2)+1,floor(Y1i/2)+1,1:3);
        e_u(i,j,2,1:3)=EdgeLoc1s2(floor(i/2)+1,floor(j/2)+1,1:3);
        e_v(i,j,2,1:3)=EdgeLoc2s2(floor(X1i/2)+1,floor(Y1i/2)+1,1:3);
        a_u(i,j,3,1:3)=Loc1s4(floor(i/4)+1,floor(j/4)+1,1:3);
        a_v(i,j,3,1:3)=Loc2s4(floor(X1i/4)+1,floor(Y1i/4)+1,1:3);
        e_u(i,j,3,1:3)=EdgeLoc1s4(floor(i/4)+1,floor(j/4)+1,1:3);
        e_v(i,j,3,1:3)=EdgeLoc2s4(floor(X1i/4)+1,floor(Y1i/4)+1,1:3);
        Sim(i,j)=1;
        for q=1:3
            multiplyHist=1;
            for t=1:3
                multiplyHist=multiplyHist*(1-abs(a_u(i,j,q,t)-a_v(i,j,q,t)));
            end
            Sim(i,j)=Sim(i,j)*(1-abs(e_u(i,j,q)-e_v(i,j,q)))*multiplyHist;
        end
    end
end
P=max_mat(Sim);
Y2i=P(2);
X2i=P(1);
end