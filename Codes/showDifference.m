imageRead;%calls original images
A=Im2-Im1;
B=tempImages(:,:,end)-Im1;
C=[A,B];
figure,
imshow(norm_mat(abs(C)));colormap jet