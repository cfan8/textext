include;
charDirPath = 'data/chartrain';
charXmlPath = [charDirPath  '/char.xml'];
charXml = xmlread(charXmlPath);
root = charXml.getDocumentElement();
imgList = root.getElementsByTagName('image');
charTrainList = struct('file', {}, 'tag', '');
for i=0:imgList.getLength() - 1
    node = imgList.item(i);
    filename = char(node.getAttribute('file'));
    tag = char(node.getAttribute('tag'));
    charTrainList(i + 1).file = [charDirPath '/' filename];
    charTrainList(i + 1).tag = tag;
end
charTrainList = nestedSortStruct(charTrainList, 'tag');
charTrainList(end + 1).tag = 'END';
charMap = cell(0, 2);
curChar = cell(0, 1);
for i=2:size(charTrainList, 2)
    curChar{end + 1, 1} = charTrainList(i - 1).file;
    if charTrainList(i).tag ~= charTrainList(i - 1).tag
        index = size(charMap, 1) + 1;
        charMap{index, 1} = charTrainList(i - 1).tag;
        charMap{index, 2} = curChar;
        curChar = cell(0, 1);
    end
end