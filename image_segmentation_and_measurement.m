% Read and display the original image
obj = imread('rugby.jpg');
imshow(obj)

% Segmenting the image by dividing it into respective RGB intensities
red = obj(:,:,1);
green = obj(:,:,2);
blue = obj(:,:,3);

% Display the original image and the three color planes (Red, Green, Blue)
figure(1)
subplot(2,2,1); imshow(obj); title('Original Image');
subplot(2,2,2); imshow(red); title('Red Plane');
subplot(2,2,3); imshow(green); title('Green Plane');
subplot(2,2,4); imshow(blue); title('Blue Plane');

% Threshold the blue plane to create a binary image
figure(2)
level = 0.37;
bw2 = im2bw(blue, level);
subplot(2,2,1); imshow(bw2); title('Blue plane threshold')

% Remove noise by filling any holes in the binary image
fill = imfill(bw2, 'holes');
subplot(2,2,2); imshow(fill); title('Holes Filled');

% Remove any blobs on the border of the image
clear = imclearborder(fill);
subplot(2,2,3); imshow(clear); title('Remove blobs on border');

% Remove small blobs that are smaller than 7 pixels across
se = strel('disk', 7);
open = imopen(clear, se);
subplot(2,2,4); imshow(open); title('Remove small blobs')

% Measure object diameters in the processed binary image
diameter = regionprops(open, 'MajorAxisLength');

% Show the result with an interactive distance measurement tool
figure(3)
imshow(obj)
d = imdistline;  % Include a line to physically measure distances
