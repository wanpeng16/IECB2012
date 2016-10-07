function momentVectorSphere=IMHIST(imageInp,R,sphere)
%IMHIST takes an image and a radius for determination of space around the
%point and gives a moment vector contains set of histogram momentum as
%features
M=size(imageInp,1);

%shaping sphere from original rectangular image
sphere=sphere.*imageInp;
%M moments space preparation
momentVectorSphere=zeros(M,M);

%histogram of sphere computed by only using fixed number of bins
sphereHistogram=imhist(sphere,32);
%elimination of the effect of space btw rectangular and sphere in histogram
sphereHistogram(1)=sphereHistogram(1)-sefrNum(R);
%normalization of computed histogram to bias the outputs of all pixels
sphereHistogram=normc(sphereHistogram);
% moment's vector calculation
momentVectorSphere((M+1)/2,(M+1)/2,1)=momentum(sphereHistogram,0);
momentVectorSphere((M+1)/2,(M+1)/2,2)=momentum(sphereHistogram,1);
momentVectorSphere((M+1)/2,(M+1)/2,3)=momentum(sphereHistogram,2);



