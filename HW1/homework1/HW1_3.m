clear;
close all;

pixels_og = imread('data/football.bmp');
% pixels_og = imread('data/hestain.bmp');
pixels = reshape(pixels_og, [],3);

k = 6;

% MATLAB Version
[cluster, center] = imsegkmeans(pixels_og,k);
b = label2rgb(cluster,im2double(center));



% My Version

[class_og, centroid] = kMeans(k,pixels);
class = reshape(class_og,412,620);

b1 = label2rgb(class,im2double(centroid));
imshow([pixels_og, b, b1])


for i=1:6
    clust(:,i) = kMeans(k,pixels);
end

ev = evalclusters(double(pixels),clust,"CalinskiHarabasz")















