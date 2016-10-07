clc;clear all;close all;
addpaths;
imageRead;
sphereCreation;
imageMultiresEdgeProduction1;
createFeaturesImage1;
for w=1:20
imageMultiresEdgeProduction2;
createFeaturesImage2;
normalizeFeatures;
defineBasePointSet;
findCorespondentPoints;
refinePoints;
bSplineMatchPoints;
clear X1 X2 Y1 Y2 temp1 temp2
Im2=Ireg;
tempImages(:,:,w)=Ireg(:,:);
figure,imshow(tempImages(:,:,w),[])
end
showDifference;