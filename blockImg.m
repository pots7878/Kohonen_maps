function X = blockImg(image)

%Constructing image blocks 
%preallocate size for X
X = zeros(1024, 1024);

%initialize k 
k = 1;
%step size 
step = 32;
%loop through pixels of image 
for i = 1:step:1024
    for j = 1:step:1024
        %split into 1024 blocks of 16x16
        block = image(i:i+step-1, j:j+step-1);
        %reshape each block into a vector of length 1024
        block = reshape(block, 1, 1024);
        X(:,k) = block;
        k = k + 1;
    end
end

end