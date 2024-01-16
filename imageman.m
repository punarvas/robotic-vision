% Clear all
clear;

% Read the image
path = "gallary/sample.jpg";
image = imread(path);

% Take slice of image
imcopy_hor = image;
imcopy_ver = image;
[height, width, channel] = size(image);

k = width;
for i = 1:width
    imcopy_hor(:, i, :) = image(:, k, :);  % Horizontal flip
    k = k - 1;
end

k = height;
for i = 1:height
    imcopy_ver(i, :, :) = image(k, :, :);  % Vertical flip
    k = k - 1;
end

% imcopy(:, 1:10, :) = imcopy(:, 11:20, :);

% Visualize
% imshow(imcopy), title("Piece of image");
subplot(1, 3, 1), imshow(image), title("Original image");
subplot(1, 3, 2), imshow(imcopy_hor), title("Horizontal flip");
subplot(1, 3, 3), imshow(imcopy_ver), title("Vertical flip");
