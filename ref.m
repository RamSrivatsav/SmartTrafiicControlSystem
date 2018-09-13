function []=ref()
[filename]=imgetfile('InitialPath','C:\Users\RAM SRIVATSAV\Desktop');
A=imread(filename);
A=imresize(A,[956,1940]);
%  for i=1:956
%      for j=1:1940
%          if A(i,j,1)==0 && A(i,j,2)==0 && A(i,j,3)==0  %if roads are black uncomment these commented lines 
%              B(i,j,1)=255;
%              B(i,j,2)=0;
%              B(i,j,3)=0;
%          end
%          else
%              B(i,j)=A(i,j);
%          end
%      end
%  end
A=rgb2gray(A);
[filename]=imgetfile('InitialPath','C:\Users\RAM SRIVATSAV\Desktop');% if roads are black then comment this and the below 3 lines
B=imread(filename);
B=imresize(B,[956,1940]);
B=rgb2gray(B);
xlswrite('C:\Users\RAM SRIVATSAV\Desktop\Traffic reference.xlsx',A,1);
xlswrite('C:\Users\RAM SRIVATSAV\Desktop\Traffic Fully Filled Road.xlsx',B,1);