function [ ch ] = getFeatureChannel( im )
%GETFEATURECHANNEL Summary of this function goes here
%   Detailed explanation goes here

    if (size(size(im), 2) == 3)
        gim = rgb2gray(im);
    else
        gim = im;
    end

    ch = cell(10, 1);
    ch(1:6, 1) = getOrientedGradient(gim);
    [ch{7, 1}, ~] = imgradient(gim);
    dim = double(im);
    luv = colorspace('RGB->Luv', dim);
    ch{8, 1} = luv(:, :, 1);
    ch{9, 1} = luv(:, :, 2);
    ch{10, 1} = luv(:, :, 3);
    for i=1:10
        ch{i, 1} = normalizeMatrix(ch{i, 1});
    end
end

