function [data, labels] = loadCIFAR(filepath)
    batch = load(filepath);
    data = batch.data;
    labels = batch.labels;
end