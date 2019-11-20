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

%% Benign image 1 5x5 Network

%run neural network 
[b1_result_1, b1_network_1] = somNetwork(5, benign1);
%reconstruct image
B11 = reconstruct(b1_network_1, 32, b1_result_1);
%display image from the network
plotImage(B11, 'Benign1', 5);

%% Benign Image 1 10x10 Network

%run neural network 
[b1_result_2, b1_network_2] = somNetwork(10, benign1);
%reconstruct image
B12 = reconstruct(b1_network_2, 32, b1_result_2);
%display image from the network
plotImage(B12, 'Benign1', 10);

%% Benign Image 1 25x25 Network

%run neural network 
[b1_result_3, b1_network_3] = somNetwork(25, benign1);
%reconstruct image
B13 = reconstruct(b1_network_3, 32, b1_result_3);
%display image from the network
plotImage(B13, 'Benign1', 25);

%% Benign image 2 5x5 Network

%run neural network 
[b2_result_1, b2_network_1] = somNetwork(5, benign2);
%reconstruct image
B21 = reconstruct(b2_network_1, 32, b2_result_1);
%display image from the network
plotImage(B21, 'Benign2', 5);

%% Benign Image 2 10x10 Network

%run neural network 
[b2_result_2, b2_network_2] = somNetwork(10, benign2);
%reconstruct image
B22 = reconstruct(b2_network_2, 32, b2_result_2);
%display image from the network
plotImage(B22, 'Benign2', 10);

%% Benign Image 2 25x25 Network

%run neural network 
[b2_result_3, b2_network_3] = somNetwork(25, benign2);
%reconstruct image
B23 = reconstruct(b2_network_3, 32, b2_result_3);
%display image from the network
plotImage(B23, 'Benign2', 25);

%% Malignant image 1 5x5 Network

%run neural network 
[m1_result_1, m1_network_1] = somNetwork(5, malignant1);
%reconstruct image
M11 = reconstruct(m1_network_1, 32, m1_result_1);
%display image from the network
plotImage(M11, 'Malignant1', 5);

%% Malignant Image 1 10x10 Network

%run neural network 
[m1_result_2, m1_network_2] = somNetwork(10, malignant1);
%reconstruct image
M12 = reconstruct(m1_network_2, 32, m1_result_2);
%display image from the network
plotImage(M12, 'Malignant1', 10);

%% Malignant Image 1 25x25 Network

%run neural network 
[m1_result_3, m1_network_3] = somNetwork(25, malignant1);
%reconstruct image
M13 = reconstruct(m1_network_3, 32, m1_result_3);
%display image from the network
plotImage(M13, 'Malignant1', 25);

%% Malignant Image 2 5x5 Network

%run neural network 
[m2_result_1, m2_network_1] = somNetwork(5, malignant1);
%reconstruct image
M21 = reconstruct(m2_network_1, 32, m2_result_1);
%display image from the network
plotImage(M21, 'Malignant2', 5);

%% Malignant Image 2 10x10 Network

%run neural network 
[m2_result_2, m2_network_2] = somNetwork(10, malignant1);
%reconstruct image
M22 = reconstruct(m2_network_2, 32, m2_result_2);
%display image from the network
plotImage(M22, 'Malignant2', 10);

%% Malignant Image 2 25x25 Network

%run neural network 
[m2_result_3, m2_network_3] = somNetwork(25, malignant1);
%reconstruct image
M23 = reconstruct(m2_network_3, 32, m2_result_3);
%display image from the network
plotImage(M23, 'Malignant2', 25);