function approx_image = reconstruct(network, step, classification)
k = 1; 

for i = 1:step:1024
    for j = 1:step:1024
        block = network.IW{1}(classification(k),:);
        approx_image(i:i+step-1, j:j+step-1) = reshape(block, 32, 32);
        k = k + 1;
        
    end
end

end