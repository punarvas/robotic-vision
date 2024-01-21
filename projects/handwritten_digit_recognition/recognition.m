clear;

% add functions
addpath("functions")

% Read images using readMNIST function
images = readMNIST("MNIST//train//train-images.idx3-ubyte");

% print size of images
disp(size(images))