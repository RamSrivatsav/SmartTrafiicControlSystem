function X1= gradmeth(A)
% function X1= gradmeth(A,k)
% x=xlsread('C:\Users\RAM SRIVATSAV\Desktop\Traffic reference.xlsx',k);
x=xlsread('C:\Users\RAM SRIVATSAV\Desktop\Traffic reference.xlsx',1);
x=edge(x,'canny');
A=edge(A,'canny');
for i=1:956
    for j=1:1940
        X(i,j)=A(i,j)-x(i,j);
    end
end
X1=wiener2(X,[6 6]);
% X1 = medfilt2(X1);
X1=imfill(X1,'holes');
se = strel('disk',3);
X1=imclose(X1,se);
X1=double(X1);
level = graythresh(X1);
X1=imbinarize(X1,level);