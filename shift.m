function[imFinal] = shift(im1, channel, value)
imFinal = rgb2lab(im1);
imFinal(:,:,channel) = imFinal(:,:,channel)*value;
imFinal = lab2rgb(imFinal);
