% 2x2 image resize that halves the dimensions
% clear
clear;

% Read the image
path = "gallary/sample.jpg";
image = imread(path);
[height, width, channel] = size(image);

filter = ones(3) / 3^2;
pooled_image = zeros(height, width, channel);

for row = 2:width-1
    for col = 2:height-1
        for c = 1:channel
            slice = double(image(row-1:row+1, col-1:col+1, c));
            filtered = mean(dot(slice, filter));
            pooled_image(row, col, c) = uint8(filtered);
        end
    end
end

% visualize
imshow(pooled_image), title("Pooled image");