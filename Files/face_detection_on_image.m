the_Image      = imread('Nuruzzaman-Faruqui.png');
[width, height] = size(the_Image);

if width>320
the_Image = imresize(the_Image,[320 NaN]);
end
faceDetector = vision.CascadeObjectDetector();

%finding the bounding box that encloses the face on video frame
face_Location = step(faceDetector, the_Image);
the_Image = insertShape(the_Image, 'Rectangle', face_Location);
figure; 
imshow(the_Image); 
title('Detected face');