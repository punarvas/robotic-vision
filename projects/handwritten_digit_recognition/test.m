clear;

% add functions
addpath("functions")

% Read images using readMNIST function
image_file_path = "MNIST//test//t10k-images.idx3-ubyte";
labels_file_path = "MNIST//test//t10k-labels.idx1-ubyte";
[nSamples, images, labels] = readMNIST(image_file_path, labels_file_path);

% Load model
model = load("model.mat");
predictions = predict(model, )