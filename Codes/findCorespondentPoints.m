%find the correspondent points in distenation image
lengthX1=length(X1);
%shows the Progress of Finding Correspondent Points
h = waitbar(0.4,'Please wait...',...
    'Color',[0.5 0.6 0.7],... % background color
    'Name','Progress of Finding Correspondent Points',... % figure title
    'Position',[500 300 288 60]); % position of the figure
for i=1:lengthX1
    [X2(i,1) Y2(i,1) Sim]=similarPoint(X1(i),Y1(i),...
        Loc1s1,Loc1s2,Loc1s4,...
        Loc2s1,Loc2s2,Loc2s4,...
        EdgeLoc1s1,EdgeLoc1s2,EdgeLoc1s4,...
        EdgeLoc2s1,EdgeLoc2s2,EdgeLoc2s4);
    waitbar(i/lengthX1,h,[num2str(floor(i/lengthX1*100)) '%'])

end
close(h)
clc