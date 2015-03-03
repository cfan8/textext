charDirPath = 'data/chartrain';
charXmlPath = [charDirPath  '/char.xml'];
charXml = xmlread(charXmlPath);
root = charXml.getDocumentElement();
imgList = root.getElementsByTagName('image');
for i=0:imgList.getLength() - 1
    node = imgList.item(i);
    filename = node.getAttribute('file');
    tag = node.getAttribute('tag');
end
