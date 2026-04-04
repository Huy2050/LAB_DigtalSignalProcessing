// 1. Load IPCV library
atomsLoad('IPCV');

// 2. Read and display the original image
img = imread('C:/Users/ADMIN/Downloads/xulitinhieuso/anh_test.jpg');
img_gray = rgb2gray(img);

figure(1);
imshow(img);
title("1. Original Image (Color)");

// 3. REQUIREMENT 1: Display Histogram
figure(2);
[count, bins] = imhist(img_gray);
bar(bins, count);
title("2. Histogram");

// 4. REQUIREMENT 2: Histogram Equalization
img_eq = imhistequal(img_gray);
figure(3);
imshow(img_eq);
title("3. Equalized Image");

// 5. REQUIREMENT 3: Image Blurring (Blur)
h = fspecial('average', 5);
img_blur = imfilter(img_gray, h);
figure(4);
imshow(img_blur);
title("4. Blurred Image");

// 6. REQUIREMENT 4: Watermarking
[rows, cols] = size(img_gray);
watermark_mask = zeros(rows, cols);
watermark_mask(rows-50:rows-10, cols-150:cols-10) = 255; 

alpha = 0.8; 
img_watermarked = uint8(double(img_gray)*alpha + double(watermark_mask)*(1-alpha));

figure(5);
imshow(img_watermarked);
title("5. Watermarked Image");
