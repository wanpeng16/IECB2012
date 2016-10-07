function b=norm_mat(a)
%normalize a 2d matrix with a transform :[min max] --> [0 1] 
b(:,:,:)=(a(:,:,:)-min(min(min(a))))/(max(max(max(a)))-min(min(min(a))));
end