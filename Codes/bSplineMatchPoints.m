 % Fit the bspline grid to the corresponding landmarks
   options.Verbose=true;
   options.MaxRef=4;
   %x1:moving image points
   %x2:static image points
   [O_trans,Spacing]=point_registration(size(Im2),[X1(:) Y1(:)],[X2(:) Y2(:)],options);
 % Transform the 2D image  
   Ireg=bspline_transform(O_trans,Im2,Spacing,3);
 % Show the result
   figure,
    subplot(1,3,1),imshow(Im2); title('Moving Image'); 
%    hold on;for i=1:10, plot([Y1(i) Y2(i)],[X1(i) X2(i)],'b'); end
    subplot(1,3,2),imshow(Im1); title('Static Image');
    subplot(1,3,3),imshow(Ireg); title('Registered Image')
%    hold on;for i=1:10, plot([Y1(i) Y2(i)],[X1(i) X2(i)],'b'); end 
 % Show b-spline grid
   Igrid=make_grid_image(Spacing,size(Im2));
   figure, 
    subplot(1,2,1), imshow(Igrid)
    Ireg2=bspline_transform(O_trans,Igrid,Spacing,3);
    subplot(1,2,2), imshow(Ireg2)
    %hold on;for i=1:length(X1), plot([Y1(i) Y2(i)],[X1(i) X2(i)],'b'); end