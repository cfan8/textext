og = getFeatureChannel(im);
for i = 1:size(og, 1)
    imshow(og{i, 1}, [0, 1000]);
end