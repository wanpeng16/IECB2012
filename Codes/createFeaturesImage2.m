
%% Local Feature Extraction for Image 2;
Loc2s1=localFeature(Im2s1,R);
clc;disp('Loc2s1 Finished')
Loc2s2=localFeature(Im2s2,R);
clc;disp('Loc2s2 Finished')
Loc2s4=localFeature(Im2s4,R);
clc;disp('Loc2s4 Finished')

%% Local Feature Extraction for Edge 2;
EdgeLoc2s1=localFeature(Edg2s1,R);
clc;disp('EdgeLoc2s1 Finished')
EdgeLoc2s2=localFeature(Edg2s2,R);
clc;disp('EdgeLoc2s2 Finished')
EdgeLoc2s4=localFeature(Edg2s4,R);
clc;disp('EdgeLoc2s4 Finished')