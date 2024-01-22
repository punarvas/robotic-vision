function [nSamples, images, labels] = readMNIST(image_file_path, labels_file_path)
    % Read file
    im_file = fopen(image_file_path, "rb");
    lb_file = fopen(labels_file_path, "rb");


    % read meta information on the file
    im_magicNumber = fread(im_file, 1, "int32", 0, "ieee-be");
    lb_magicNumber = fread(lb_file, 1, "int32", 0, "ieee-be");

    % image file meta information
    nImages = fread(im_file, 1, "int32", 0, "ieee-be");
    nRows = fread(im_file, 1, 'int32', 0, "ieee-be");
    nCols = fread(im_file, 1, "int32", 0, "ieee-be");

    % labels file meta information
    nSamples = fread(lb_file, 1, "int32", 0, "ieee-be");

    % Read images and labels
    images = fread(im_file, inf, "uint8");
    labels = fread(lb_file, inf, "uint8");
    fclose(im_file);
    fclose(lb_file);

    % Reshape and permute images
    images = reshape(images, nCols, nRows, nImages);
    images = permute(images, [2, 1, 3]);
    labels = permute(labels, [2, 1]);
end

