clear;

% add functions
addpath("functions")

% Read images using readMNIST function
image_file_path = "MNIST//train//train-images.idx3-ubyte";
labels_file_path = "MNIST//train//train-labels.idx1-ubyte";
[nSamples, images, labels] = readMNIST(image_file_path, labels_file_path);

% data pre-processing
X = reshape(images, [], size(images, 3))';
X = double(X) / 255;
Y = labels;

% Split data into training and testing dataset
trainSize = 0.8;
range = round(trainSize * nSamples);

X_train = X(1:range, :);
X_test = X(range+1:end, :);
Y_train = Y(1:range);
Y_test = Y(range+1:end);

% Fit multi-class SVM model
% model = fitcecoc(X_train, Y_train, "Coding", "onevsall", "Verbose", true);

% load model
load("model.mat");

% predict
predictions = predict(model, X_test)';

% Evaluate the model
% disp(size(Y_test));
% disp(size(predictions));
accuracy = sum(predictions == Y_test) / numel(Y_test);
disp(["System accuracy" num2str(accuracy * 100)]);


% Confusion matrix
% Create confusion matrix
C = confusionmat(Y_test, predictions);

% Display confusion matrix
disp('Confusion Matrix:');
disp(C);
