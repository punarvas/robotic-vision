clear;

% Read the image
path = "gallary/sample.jpg";
image = imread(path);

image = rgb2gray(image);
no_effect = [0 0 0; 0 1 0; 0 0 0];  % Does not affect the image at all
smoothing = ones(5) / 2^5;  % Smoothes the image
sharpen = [0 0 0; 0 2 0; 0 0 0] - (ones(3) / 2^3);

% 2D Gaussian filter
gauss = fspecial("gaussian", [5 5], 30);
kernel = smoothing;

filtered_image = conv2(double(image), kernel, "same");
% convert image
filtered_image = uint8(filtered_image);

% gray outlined image
gray_outlines = uint8(image) - filtered_image;

% adding back
sharpened = image + gray_outlines;

subplot(1, 3, 1), imshow(image), title("Original image");
subplot(1, 3, 2), imshow(gray_outlines), title("Filter output");
subplot(1, 3, 3), imshow(sharpened), title("Filter output 2");
