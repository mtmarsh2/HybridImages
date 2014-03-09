close all; % closes all figures
im1filename = ''
im2filename = ''


% read images and convert to single format
im1 = im2single(imread(im1filename));
im2 = im2single(imread(im2filename));
im1 = rgb2gray(im1); % convert to grayscale
im2 = rgb2gray(im2);
figure(1), imagesc(log(abs(fftshift(fft2(im1)))))
figure(2), imagesc(log(abs(fftshift(fft2(im2)))))

% use this if you want to align the two images (e.g., by the eyes) and crop
% them to be of same size
[im2, im1] = align_images(im2, im1);

% uncomment this when debugging hybridImage so that you don't have to keep aligning
% keyboard; 

%% Choose the cutoff frequencies and compute the hybrid image (you supply
%% this code)
%arbitrary_value = 100;
cutoff_low = 2;
cutoff_high = 10; 
im12 = hybridImage(im1, im2, cutoff_low, cutoff_high);
figure, imshow(im12)

%% Crop resulting image (optional)
%%figure(1), hold off, imagesc(im12), axis image, colormap gray
%%disp('input crop points');
%%[x, y] = ginput(2);  x = round(x); y = round(y);
%%im12 = im12(min(y):max(y), min(x):max(x), :);
%%figure(1), hold off, imagesc(im12), axis image, colormap gray

%% Compute and display Gaussian and Laplacian Pyramids (you need to supply this function)
N = 5; % number of pyramid levels (you may use more or fewer, as needed)
%%pyramids(im12, N);
