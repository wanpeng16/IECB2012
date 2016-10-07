%% Read Two Image;
% pre-distorted image read
Im1=imread('PreDistortion.bmp');
% Im1=rgb2gray(Im1);
Im1=im2double(Im1);
% Im1=imresize(Im1,.5);
%Im1=histeq(Im1);
%after-distortion image read
Im2=imread('PostDistortion.bmp');
% Im2=rgb2gray(Im2);
Im2=im2double(Im2);
% Im2=imresize(Im2,.5);
%Im2=histeq(Im2);
