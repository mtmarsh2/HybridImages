function [ imgout ] = hybridImage( im1, im2, cutoff_low, cutoff_high )
%Creates a hybrid image
%   
filter1 = fspecial('gaussian',5*cutoff_low,cutoff_low);
filter2 = fspecial('gaussian', 5*cutoff_high, cutoff_high);
img1 = imfilter(im1, filter1, 'same');
figure(11), imshow(img1);

%Show fft of 1st image
figure(3), imagesc(log(abs(fftshift(fft2(img1)))))
im3 = imfilter(im2, filter2, 'same');
img12 = im2-im3;
figure(22), imshow(img12);

%fft of 2nd image
figure(4), imagesc(log(abs(fftshift(fft2(img12)))))
imgout = img12 + img1;

%fft of 3rd image 
figure(5), imagesc(log(abs(fftshift(fft2(imgout)))))




end

