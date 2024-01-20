% Highlight common background color
% clear
clear;

% Read the image
path = "gallary/sample1.jpg";
image = imread(path);

highlightedImage5 = highlight(image, 5);
highlightedImage25 = highlight(image, 25);
highlightedImage75 = highlight(image, 75);

% visualize
subplot(1, 3, 1), imshow(highlightedImage5), title("Intensity 5");
subplot(1, 3, 2), imshow(highlightedImage25), title("Intensity 25");
subplot(1, 3, 3), imshow(highlightedImage75), title("Intensity 75");