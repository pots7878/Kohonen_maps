function [result, net] = somNetwork(N, image)
net = selforgmap([N,N]);
[net] = train(net, image);
view(net);
network_window = net(image);
result = vec2ind(network_window);
end