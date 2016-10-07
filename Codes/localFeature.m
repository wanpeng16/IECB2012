function b1=localFeature(a1,R,sphere)
% this function gives an image and a radius around its point and calculates
% its feaatures as definied in IMHIST.m
fun = @(block_struct) ...
    IMHIST(block_struct.data,R,sphere);
b1=blockproc(a1,[1 1],fun,'Bordersize',[R R]);   
end
