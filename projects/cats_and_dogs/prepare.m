% clear screen and memory
clear;
clc;

% Read images
dirlist = ["PetImages\Cat\*.jpg", "PetImages\Dog\*.jpg"];
pathlist = ["PetImages\Cat\", "PetImages\Dog\"];

images = [];
labels = [];

for c = 1:numel(dirlist)
    files = dir(dirlist(c));
    for i = 1:numel(files)
        filename = fullfile(pathlist(c), files(i).name);
        try
            image = imread(filename);
            image = rgb2gray(image);
        catch
            continue;
        end
        % Resize and convert image to grayscale
        image = imresize(image, [224, 224]);

        % save image and corresponding label
        images = [images, image];
        labels = [labels, c-1];
    end
end

disp("Statistics on image read");
disp(["Total images:", num2str(numel(images))]);

% Save dataset
savepath = "Dataset.mat";
save(savepath, "images", "labels");
disp("Images and corresponding labels stored in the Dataset.mat");
