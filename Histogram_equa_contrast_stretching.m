oldBuilding = imread('oldBuilding.jpg');
oldBuilding_afterHistEq = histeq(oldBuilding);

figure;
subplot(2,2,1);imshow(oldBuilding);title('Before Histogram Equalization');
subplot(2,2,2);imshow(oldBuilding);title('After Histogram Equalization');
subplot(2,2,3);imhist(oldBuilding);
subplot(2,2,4);imhist(oldBuilding_afterHistEq);

oldBuilding_afterHistEq2 = histeq(oldBuilding_afterHistEq);

figure;
subplot(2,2,1);imshow(oldBuilding_afterHistEq);title('After Histogram Equalization');
subplot(2,2,2);imshow(oldBuilding_afterHistEq);title('After Histogram Equalization x 2');
subplot(2,2,3);imhist(oldBuilding_afterHistEq2);
subplot(2,2,4);imhist(oldBuilding_afterHistEq2);

Inew = imadjust(oldBuilding, stretchlim(oldBuilding, [0.05 0.95]),[]);

figure;
subplot(2,3,1);imshow(oldBuilding);title('Original');
subplot(2,3,2);imshow(oldBuilding_afterHistEq);title('After Hist Eq');
subplot(2,3,3);imshow(Inew);title('After Contrast Stretching');
subplot(2,3,4);imhist(oldBuilding);
subplot(2,3,5);imhist(oldBuilding_afterHistEq);
subplot(2,3,6);imhist(Inew);