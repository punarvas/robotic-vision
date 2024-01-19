clear;

% Read the image
path = "gallary/sample.jpg";
image = imread(path);

image = rgb2gray(image);
no_effect = [0 0 0; 0 1 0; 0 0 0];  % Does not affect the image at all
smoothing = ones(3) / 2^3;  % Smoothes the image
kernel = smoothing;

filtered_image = conv2(double(image), kernel, "same");
% convert image
filtered_image = uint8(filtered_image);

subplot(1, 2, 1), imshow(image), title("Original image");
subplot(1, 2, 2), imshow(filtered_image), title("Filter output");
