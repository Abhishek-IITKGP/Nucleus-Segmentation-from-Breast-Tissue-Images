%load image
img = imread('brst-08.jpg');
img_h = imread('brst-08_h.png');

%converting the colour image to grayscale image
gray_img1 = rgb2gray(img);

imhist(gray_img1);

%contrast enhancement using adaptive histogram equilisation
hist_eq_img = adapthisteq(gray_img1);

%thresholding of the image
threshold = graythresh(gray_img1);

%segmentation
nucleus1 = imbinarize(gray_img1,0.3);
imshow(nucleus1);

%show
subplot(2,2,1);
imshow(img);
title('original image')
subplot(2,2,2);
imshow(img_h);
title('hematoxylin image');
subplot(2,2,3);
imshow(gray_img1);
title('gray image');
subplot(2,2,4);
imshow(hist_eq_img);
title('histogram equlisation');

subplot(1,3,1);
imshow(img);
title('original image');
subplot(1,3,2);
imshow(nucleus1);
title('segmented image');
subplot(1,3,3);
imshowpair(img,nucleus1);
title('segmentated image');

