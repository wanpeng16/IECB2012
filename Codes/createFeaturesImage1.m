%% Radius of Sphere around each pixel
R=8;
%% Local Feature Extraction for Image 1;
Loc1s1=localFeature(Im1s1,R,sphere);
clc;disp('Loc1s1 Finished')
Loc1s2=localFeature(Im1s2,R,sphere);
clc;disp('Loc1s2 Finished')
Loc1s4=localFeature(Im1s4,R,sphere);
clc;disp('Loc1s4 Finished')
%% Local Feature Extraction for Edge 1;
EdgeLoc1s1=localFeature(Edg1s1,R,sphere);
clc;disp('EdgeLoc1s1 Finished')
EdgeLoc1s2=localFeature(Edg1s2,R,sphere);
clc;disp('EdgeLoc1s2 Finished')
EdgeLoc1s4=localFeature(Edg1s4,R,sphere);
clc;disp('EdgeLoc1s4 Finished')