%% This is a HelloWorld project for using a pre-trained network.
clc; clearvars;
net = alexnet;
input_size = [227, 227]; % as required in the pre-trained network
img = imread('peppers.png'); % preloaded image
img = imresize(img, input_size);

%% calling the network
[label, score] = classify(net, img)
[~, idx] = sort(score, 'descend'); % sort index by score

%% find the top 3 probable categories
idx = idx(1:3);
score(idx);
net.Layers(end).ClassNames(idx) % find the class name of top 3 prob
