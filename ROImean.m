function m = ROImean(img, mask)
% get the mean of all non-zero element in img

c = length(find(mask(:)~=0));
m = -sum(img(:))/c;