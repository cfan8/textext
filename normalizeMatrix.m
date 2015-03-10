function [ re ] = normalizeMatrix( ma )
%NORMALIZEMATRIX Summary of this function goes here
%   Detailed explanation goes here
    minv = min(ma(:));
    maxv = max(ma(:));
    length = max(abs(minv), abs(maxv));
    %re = (ma - minv) * (1000/length);
    re = ma * (1000/length);

end

