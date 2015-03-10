charClass = 'A';
for i = 1: size(testCharImg, 1);
    if (strcmp(testCharImg{i, 1}, charClass))
        imgList = testCharImg{i, 2};
        for j = 1 : size(imgList, 1)
            image(imgList{j, 1});
        end
        break;
    end
end