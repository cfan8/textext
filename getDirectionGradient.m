function [ dig ] = getDirectionGradient( im, theta)
%GETDIRECTIONGRADIENT Summary of this function goes here
%   Detailed explanation goes here

s = size(im);
if (size(s, 2) == 3)
    gim = rgb2gray(im);
else
    gim = im;
end
rad = theta / 180 * pi;
dx = cos(rad);
dy = sin(rad);
[gx gy] = imgradientxy(im);
dig = dx * gx + dy * gy;

end

