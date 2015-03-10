function [ og ] = getOrientedGradient( im)
%GETORIENTEDGRADIENT Summary of this function goes here
%   Detailed explanation goes here

    dirs = 0:60:300;
    og = cell(6, 1);
    [gx gy] = imgradientxy(im);
    for i = 1 : 6
        theta = dirs(1, i);
        rad = theta / 180 * pi;
        dx = cos(rad);
        dy = sin(rad);
        og{i, 1} = dx * gx + dy * gy;
    end
end

