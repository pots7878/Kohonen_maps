%% Read im images 

%benign images 
benign_1 = imread('mdb001.pgm');
benign_2 = imread('mdb002.pgm');

%malignant images 
malignant_1 = imread('mdb023.pgm');
malignant_2 = imread('mdb028.pgm');

%% Block image

%call blockImg function 
benign1 = blockImg(benign_1);
benign2 = blockImg(benign_2);
malignant1 = blockImg(malignant_1);
malignant2 = blockImg(malignant_2);

%% Benign image 2 5x5 Network

b1_network_1 = selforgmap([5,5]);
[b1_network_1, tr1] = train(b1_network_1, benign1);
view(b1_network_1)
b1_window_1 = b1_network_1(benign1);
b1_result_1 = vec2ind(b1_window_1);
B11 = reconstruct(b1_network_1, 32, b1_result_1);

%% Show Benign Image 1 5x5 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(B11), 'Parent', hAxes );
title( hAxes, 'Benign Image 1 of 5x5 Network' );

%% Benign Image 1 10x10 Network

b1_network_2 = selforgmap([10,10]);
[b1_network_2, tr2] = train(b1_network_2, benign1);
view(b1_network_2)
b1_window_2 = b1_network_2(benign1);
b1_result_2 = vec2ind(b1_window_2);
B12 = reconstruct(b1_network_2, 32, b1_result_2);

%% Show Benign Image 1 10x10 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(B12), 'Parent', hAxes );
title( hAxes, 'Benign Image 1 of 10x10 Network' );

%% Benign Image 1 25x25 Network
b1_network_3 = selforgmap([25,25]);
[b1_network_3, tr3] = train(b1_network_3, benign1);
view(b1_network_3)
b1_window_3 = b1_network_3(benign1);
b1_result_3 = vec2ind(b1_window_3);
B13 = reconstruct(b1_network_3, 32, b1_result_3);
%% Show Benign Image 1 25x25 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(B13), 'Parent', hAxes );
title( hAxes, 'Benign Image 1 of 25x25 Network' );

%% Benign image 2 5x5 Network

b2_network_1 = selforgmap([5,5]);
[b2_network_1, tr1] = train(b2_network_1, benign2);
view(b2_network_1)
b2_window_1 = b2_network_1(benign2);
b2_result_1 = vec2ind(b2_window_1);
B21 = reconstruct(b2_network_1, 32, b2_result_1);

%% Show Benign Image 2 5x5 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(B21), 'Parent', hAxes );
title( hAxes, 'Benign Image 2 of 5x5 Network' );

%% Benign Image 2 10x10 Network
b2_network_2 = selforgmap([10,10]);
[b2_network_2, tr2] = train(b2_network_2, benign2);
view(b2_network_2)
b2_window_2 = b2_network_2(benign2);
b2_result_2 = vec2ind(b2_window_2);
B22 = reconstruct(b2_network_2, 32, b2_result_2);
%% Show Benign Image 2 10x10 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(B22), 'Parent', hAxes );
title( hAxes, 'Benign Image 2 of 10x10 Network' );

%% Benign Image 2 25x25 Network
b2_network_3 = selforgmap([25,25]);
[b2_network_3, tr3] = train(b2_network_3, benign2);
view(b2_network_3)
b2_window_3 = b2_network_3(benign2);
b2_result_3 = vec2ind(b2_window_3);
B23 = reconstruct(b2_network_3, 32, b2_result_3);
%% Show Benign Image 2 25x25 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(B23), 'Parent', hAxes );
title( hAxes, 'Benign Image 2 of 25x25 Network' );

%% Malignant image 1 5x5 Network
m1_network_1 = selforgmap([5,5]);
[m1_network_1, tr1] = train(m1_network_1, malignant1);
view(m1_network_1)
m1_window_1 = m1_network_1(malignant1);
m1_result_1 = vec2ind(m1_window_1);
M11 = reconstruct(m1_network_1, 32, m1_result_1);
%% Show Malignant Image 1 5x5 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(M11), 'Parent', hAxes );
title( hAxes, 'Malignant Image 1 of 5x5 Network' );

%% Malignant Image 1 10x10 Network
m1_network_2 = selforgmap([10,10]);
[m1_network_2, tr2] = train(m1_network_2, malignant1);
view(m1_network_2)
m1_window_2 = m1_network_2(malignant1);
m1_result_2 = vec2ind(m1_window_2);
M12 = reconstruct(m1_network_2, 32, m1_result_2);
%% Show Malignant Image 1 10x10 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(M12), 'Parent', hAxes );
title( hAxes, 'Malignant Image 1 of 10x10 Network' );

%% Malignant Image 1 25x25 Network
m1_network_3 = selforgmap([25,25]);
[m1_network_3, tr3] = train(m1_network_3, malignant1);
view(m1_network_3)
m1_window_3 = b1_network_3(malignant1);
m1_result_3 = vec2ind(m1_window_3);
M13 = reconstruct(m1_network_3, 32, m1_result_3);

%% Show Malignant Image 1 25x25 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(M13), 'Parent', hAxes );
title( hAxes, 'Malignant Image 1 of 25x25 Network' );

%% Malignant Image 2 5x5 Network

m2_network_1 = selforgmap([5,5]);
[m2_network_1, tr1] = train(m2_network_1, malignant2);
view(m2_network_1)
m2_window_1 = m2_network_1(malignant2);
m2_result_1 = vec2ind(m2_window_1);
M21 = reconstruct(m2_network_1, 32, m2_result_1);

%% Show Malignant Image 2 5x5 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(M21), 'Parent', hAxes );
title( hAxes, 'Malignant Image 2 of 5x5 Network' );

%% Malignant Image 2 10x10 Network
m2_network_2 = selforgmap([10,10]);
[m2_network_2, tr2] = train(m2_network_2, malignant2);
view(m2_network_2)
m2_window_2 = m2_network_2(malignant2);
m2_result_2 = vec2ind(m2_window_2);
M22 = reconstruct(m2_network_2, 32, m2_result_2);

%% Show Malignant Image 2 10x10 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(M22), 'Parent', hAxes );
title( hAxes, 'Malignant Image 2 of 10x10 Network' );

%% Malignant Image 2 25x25 Network
m2_network_3 = selforgmap([25,25]);
[m2_network_3, tr3] = train(m2_network_3, malignant2);
view(m2_network_3)
m2_window_3 = m2_network_3(malignant2);
m2_result_3 = vec2ind(m2_window_3);
M23 = reconstruct(m2_network_3, 32, m2_result_3);

%% Show Malignant Image 2 25x25 Network

hFig = figure; hAxes = gca;

hImage = imshow( uint8(M23), 'Parent', hAxes );
title( hAxes, 'Malignant Image 2 of 25x25 Network' );