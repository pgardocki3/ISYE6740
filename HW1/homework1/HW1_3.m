clear;
close all;

pixels_m = imread('data/football.bmp');
pixels = reshape(pixels_m, 255440,3);

k = 5;

% MATLAB Version
%class = imsegkmeans(pixels_m,5);
%b = labeloverlay(pixels_m,class);
%imshow(b)


% My Version

cluster = kMeans(9,pixels)

%b = labeloverlay(pixels,cluster');
imshow(b)