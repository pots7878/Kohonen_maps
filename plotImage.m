function plotImage(og_image, image, image_type, dim)

%show image
figure()
imshow(og_image);
title('Original Image')

figure();
hAxes = gca;
imshow(uint8(image), 'Parent', hAxes);
title( hAxes, image_type(1:length(image_type)-1) + " Image " + image_type(length(image_type)) + " of " + dim + "x" + dim+ " Network");

end