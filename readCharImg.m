load('trainCharMap.mat');
imgSize = 24;
%trainCharMap = testCharMap;
trainCharImg = cell(size(trainCharMap, 1), 2);
for i=1:size(trainCharMap, 1)
    fileList = trainCharMap{i, 2};
    classImg = cell(size(fileList, 1), 1);
    for j = 1:size(fileList, 1)
        im = imread(fileList{j, 1});
        im = imresize(im, [imgSize imgSize]);
        classImg{j, 1} = im;
    end
    trainCharImg(i, :) = {trainCharMap{i, 1}, classImg};
    i
end