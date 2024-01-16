clear;

% Read the image
path = "gallary/sample.jpg";
image = imread(path);

% Manipulate image
% image = image / 0.90;  % Brighten whole image by 10 percent

% Adjust brightness of individual channel
red = image(:, :, 1);  % Adjust red channel brightness
green = image(:, :, 2);  % Adjust green channel brightness
blue = image(:, :, 3);  % Adjust blue channel brightness

% Update image
% image(:, :, 1) = red;
% image(:, :, 2) = green;
% image(:, :, 3) = blue;

% display a pixel
pixel = image(1, 1, :);
disp(pixel);

% Convert the color image to a grayscale image
gray_image = 0.299 * red + 0.587 * green + 0.114 * blue;
gray_image1 = 0.299 * blue + 0.587 * red + 0.114 * green;

% NOTE: Swapping intensities does not make a significant change in
% appearance

% Display the image
% imshow(image);
subplot(1, 3, 1), imshow(image), title("Original image (w: 1, 1, 1)");
subplot(1, 3, 2), imshow(gray_image), title("Gray Image (w: 0.299, 0.587, 0.114)");
subplot(1, 3, 3), imshow(gray_image1), title("Gray Image (w: 0.587, 0.114, 0.299)");
% title("UofM Main Campus");