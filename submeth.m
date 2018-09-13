function C= submeth(A)
% function X1= gradmeth(A,k)
% x=xlsread('C:\Users\RAM SRIVATSAV\Desktop\Traffic reference.xlsx',k);
imref=xlsread('C:\Users\RAM SRIVATSAV\Desktop\Traffic reference.xlsx',1);
for i=1:956
    for j=1:1940
        x(i,j)=A(i,j)-imref(i,j);
    end
end
X=wiener2(x,[6 6]);
% X = medfilt2(X);
C=imfill(X,'holes');
se = strel('disk',3);
C=imclose(C,se);
C=double(C);
level = graythresh(C);
C=imbinarize(C,level);