clc
clear all
image1=imread("shape.bmp");
imshow(image1);
title("Original Image")
imGray=rgb2gray(image1);

hexagon = imGray(1:30, 1:30);
figure 
imshow(hexagon);
title("Hexagon Template")
imwrite(hexagon,"hexagon.bmp")

ncc = normxcorr2(hexagon, imGray);%normalized cross correlation image
figure
imshow(ncc);
title("Normalized Cross Correlation");

goodMax = ncc > 0.89;
figure
imshow(goodMax);
title("Good Maximums of the Normalized Cross Correlation");

figure
[y, x] = find(goodMax);
plot(x, y, "ro", "MarkerSize", 20, "LineWidth", 2,"Color","g");
for i = 1:length(x)
    text(x(i), y(i), "+","HorizontalAlignment","center","Color","b","FontSize",20);
end
title("Good Maximums with "+" Symbols");

figure
plot(x,y)
text(0,0, ['Number of Hexagons: ' num2str(length(x))], "Color", "r", "FontSize", 25);
title("Number of Hexagons");
