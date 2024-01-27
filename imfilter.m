% Highlight common background color
% clear
clear;

% Read the image
path = "gallary/sample.jpg";
image = imread(path);

% filter multiplier
[height, width, channel] = size(image);
filter_vector = ones(1, height).';  % .' transposes the row vector to column vector
range = 1:(height/2);
filter_vector(range) = 0;

% result
image_copy = image;
for i = 1:height
    image_copy(i, :) = double(image(i, :)) * filter_vector;
end

% visualize
subplot(1, 2, 1), imshow(image), title("Original image");
subplot(1, 2, 2), imshow(image_copy), title("Filtered image");
