% Clear
clear;
addpath("functions")

% load data
[data, labels] = loadCIFAR("data\data_batch_1.mat");
disp(size(data));

% fit function
disp(fitClassifier(data, labels));