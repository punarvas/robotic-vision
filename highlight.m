% Highlight important pixels
function highlightedImage = highlight(image, intensity)
    [height, width, ~] = size(image);
    highlightedImage = image;
    genm = mean(mean(mean(image)));
    for i = 1:width
        for j = 1:height
            m = mean(image(i, j, :));
            if (genm - intensity <= m) && (m <= genm + intensity)
                highlightedImage(i, j, :) = [255, 255, 0];
            end
        end
    end
end