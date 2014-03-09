im1 = imread('colorshift.jpg');

%more red
im2 = shift(im1, 2, 2);
figure(2), imshow(im2)

%less yellow
im3 = shift(im1, 3, .4);
figure(3), imshow(im3)
