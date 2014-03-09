function[imFinal] = enhance(im1)

imHsv = rgb2hsv(im1);
imHsv(:,:,2) = imHsv(:,:,2)*2;
imFinal = hsv2rgb(imHsv);
imshow(imFinal);
