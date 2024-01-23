% F1, Recall, and precision

function [f1, recall, precision] = metric(confusion_matrix)
    disp(size(confusion_matrix))
    f1 = 0.0;
    recall = 0.0;
    precision = 0.0;
end