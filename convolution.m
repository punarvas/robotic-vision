clear;

% Read the image
path = "gallary/sample.jpg";
image = imread(path);
image = rgb2gray(image);

% 1. Smooth image
kernel = ones(5) / 2^5;
smooth_image = confil(image, kernel);

% 2. sharpen image
kernel = [0 0 0; 0 2 0; 0 0 0] - (ones(3) / 2^3);
sharp_image = confil(image, kernel);

% 3. lowpass filter with long sigma (Gaussian filter)
kernel = fspecial("gaussian", [5 5], 30);
gauss_image = confil(image, kernel);

% Visualize
subplot(1, 4, 1), imshow(image), title("Original image");
subplot(1, 4, 2), imshow(smooth_image), title("Smooth image");
subplot(1, 4, 3), imshow(sharp_image), title("Sharp image");
subplot(1, 4, 4), imshow(gauss_image), title("Gauss image");


function filtered_image = confil(image, kernel)
    filtered_image = conv2(double(image), kernel, "same");
    filtered_image = uint8(filtered_image);
end
