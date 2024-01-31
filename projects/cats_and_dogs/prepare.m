% clear screen and memory
clear;
clc;

% program parameters
parentfolder = "PetImages";
classes = ["Cat", "Dog"];
fileformat = "*.jpg";
testsize = 0.2;  
valsize = 0.3;  % percentage of number of images used for test and validation

% Read all class images
for c = 1:numel(classes)
    files = dir(fullfile(parentfolder, classes(c), fileformat));
    for n = 1:numel(files)
        imagepath = fullfile("PetImages", "Cat", files(n).name);
        try
            image = imread(imagepath);
        catch
            continue
        end
        image = im2gray(image);
        % Resize and convert image to grayscale
        image = imresize(image, [224, 224]);
        image = reshape(image, 1, []);
    end
end