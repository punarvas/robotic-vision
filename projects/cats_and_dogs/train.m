% Clear
clear;
clc;

load("dataset.mat");
X = cell(numel(images), 1);
y = cell(numel(labels), 1);

for i = 1:numel(images)
    image = images{i};
    image = double(reshape(image, 1, []));
    X(i) = image;
    y(i) = labels{i};
end

clear images;
clear labels;
