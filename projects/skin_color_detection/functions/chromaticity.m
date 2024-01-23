function [x, y] = chromaticity(pixel)
    Rn = pixel(:, :, 1) / 255;
    Gn = pixel(:, :, 2) / 255;
    Bn = pixel(:, :, 3) / 255;

    tristimulus = [0.4124564 0.357561 0.1804375;
                   0.2126729 0.7151522 0.0721750;
                   0.0193339 0.1191920 0.9503041];

    XYZ = tristimulus * [Rn; Gn; Bn];
    X = XYZ(1, :);
    Y = XYZ(2, :);
    Z = XYZ(3, :);

    x = X / (X + Y + Z);
    y = Y / (X + Y + Z);
end