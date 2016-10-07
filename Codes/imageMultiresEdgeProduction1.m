%% Multi Resolution Image 1;
Im1s1=Im1;
Im1s2=imresize(Im1,.5);
Im1s4=imresize(Im1,.25);
%% Edge of Image 1;
Edge1=edge(Im1s1,'canny',.15,.8);%Edge1=myCanny(Im1);
Edge2=edge(Im1s2,'canny',.15,.8);
Edge4=edge(Im1s4,'canny',.15,.8);
%% Scale of Edged Image 1;
Edg1s1=im2double(Edge1);
Edg1s2=im2double(Edge2);
Edg1s4=im2double(Edge4);

