function plotImage(image)

%show image
hAxes = gca;
imshow( uint8(image), 'Parent', hAxes );
title( hAxes, 'Benign Image 1 of 5x5 Network' );

end