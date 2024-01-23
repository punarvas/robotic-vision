% Clear
clear;

% import functions
addpath("functions");

% Read image
filename = "face2.jpg";
image = imread(fullfile("gallary", filename));
[height, width, ~] = size(image);

chromatics = zeros(height, width, 2);
skin_threshold = [0.5, 0.3];
for i = 1:height
    for j = 1:width
        pixel = image(i, j, :);
        [x, y] = chromaticity(double(pixel));

        if (x > skin_threshold(1)) && (y > skin_threshold(2))
            image(i, j, :) = [255, 255, 0];
        end
    end
end

figure, imshow(image), title("Skin tone Chromatics");
imwrite(image, fullfile("output", filename));