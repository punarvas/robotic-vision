clear;

% Read the image
path = "gallary/sample.jpg";
image = imread(path);

% Manipulate image
% image = image / 0.90;  % Brighten image by 10 percent
red = image(:, :, 1) / 0.34;  % Adjust red channel brightness
green = image(:, :, 2) / 0.94;  % Adjust green channel brightness
blue = image(:, :, 3) / 0.90;  % Adjust blue channel brightness

% Update image
image(:, :, 1) = red;
image(:, :, 2) = green;
image(:, :, 3) = blue;

% Display the image
imshow(image);
title("UofM Main Campus");