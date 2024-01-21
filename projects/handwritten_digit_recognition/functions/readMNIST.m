function images = readMNIST(image_file_path)
    % Read file
    file = fopen(image_file_path, "rb");

    % read meta information on the file
    magicNumber = fread(file, 1, "int32", 0, "ieee-be");
    nImages = fread(file, 1, "int32", 0, "ieee-be");
    nRows = fread(file, 1, 'int32', 0, "ieee-be");
    nCols = fread(file, 1, "int32", 0, "ieee-be");

    % Read images
    images = fread(file, inf, "uint8");
    fclose(file);

    % Reshape and permute images
    images = reshape(images, nCols, nRows, nImages);
    images = permute(images, [2, 1, 3]);
end

