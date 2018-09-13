clc;
close all;
clear all;
l=input('l=1 for training ,rest for the task:');
n=input('no of road convergening at the junction:');
a=arduino;
for i=1:n
    [filename]=imgetfile('InitialPath','C:\Users\RAM SRIVATSAV\Desktop');
    imCell{i}=imread(filename);
    imCell{i}=imresize(imCell{i},[956,1940]);
    imCell{i}=rgb2gray(imCell{i});
end


if l==1
    for i=1:n
        ref();
    end
else
    M=0;
%     for k=1:n
    Y=xlsread('C:\Users\RAM SRIVATSAV\Desktop\Traffic Fully Filled Road.xlsx',1);
    C1=submeth(Y);
    X11=gradmeth(Y);
%     Y=xlsread('C:\Users\RAM SRIVATSAV\Desktop\Traffic Fully Filled Road.xlsx',k);
%     C1=submeth(Y,k);
%     X11=gradmeth(Y,k);
    X12=C1|X11;
    for i=1:956
            for j=1:1940
                if X12(i,j)>=1
                    M=M+1;
                else
                    M=M;
                end
            end
    end
% end
    for k=1:n
        It(k)=0;
%         C=submeth(imCell{k},k);
%         X1=gradmeth(imCell{k},k);
        C=submeth(imCell{k});
        X1=gradmeth(imCell{k});
        X=C|X1;
        for i=1:956
            for j=1:1940
                if X(i,j)>=1
                    It(k)=It(k)+1;
                else
                    It(k)=It(k);
                end
                
            end
        end                
    end
end
It=It/M;
P=Fuzzification(It,n);
for i=1:n
        Ton(i)=120*P(i)+2;
end
% % if(serial('COM4'))
% h=1;
% fprintf(b,'%s',char(h));
% for i=1:n
% TcountE1(i)=fread(b);
% TcountE2(i)=fread(b);
% end
% end

Pt=emer(n);
for k=1:n
if max(Pt)~=0
  Z=Pfac(Pt,n);
  Pt(Z)=0;  
  if Pfac(Pt,n)==1
      writeDigitalPin(a,'A3',1);
      writeDigitalPin(a,'D10',0);
      writeDigitalPin(a,'A5',0);
      writeDigitalPin(a,'D12',0);
  elseif Pfac(Pt,n)==2
      writeDigitalPin(a,'A5',1);
      writeDigitalPin(a,'A3',0);
      writeDigitalPin(a,'D10',0);
      writeDigitalPin(a,'D12',0);
  elseif Pfac(Pt,n)==3
      writeDigitalPin(a,'D12',1);
      writeDigitalPin(a,'A3',0);
      writeDigitalPin(a,'D10',0);
      writeDigitalPin(a,'A5',0);
  elseif Pfac(Pt,n)==4
      writeDigitalPin(a,'D10',1);
      writeDigitalPin(a,'A5',0);
      writeDigitalPin(a,'D12',0);
      writeDigitalPin(a,'A3',0);
  else
      writeDigitalPin(a,'D10',0);
      writeDigitalPin(a,'A5',0);
      writeDigitalPin(a,'D12',0);
      writeDigitalPin(a,'A3',0);
  end
  Interupt(Z,Ton,a);
end
if max(Pt)==0
for i=1:n
    if i==1
        writeDigitalPin(a,'D2',1);
        writeDigitalPin(a,'D7',1);
        writeDigitalPin(a,'D8',1);
        writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'D13',1);
writeDigitalPin(a,'A4',1);
        L=Ton(i);
        for j=1:L
        L=L-1
        pause(1);
        clc;
        end
         
        writeDigitalPin(a,'D2',0);
        writeDigitalPin(a,'D7',0);
        writeDigitalPin(a,'D8',0);
        writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'D13',0);
writeDigitalPin(a,'A4',0);
    end

  
    if i==2
        writeDigitalPin(a,'D3',1);
        writeDigitalPin(a,'D6',1);
        writeDigitalPin(a,'D8',1);
        writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'D13',1);
writeDigitalPin(a,'A2',1);
        L=Ton(i);
        for j=1:L
        L=L-1
        pause(1);
        clc;
        end
 
        writeDigitalPin(a,'D3',0);
        writeDigitalPin(a,'D6',0);
        writeDigitalPin(a,'D8',0);
        writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'D13',0);
writeDigitalPin(a,'A2',0);
    end
    
    if i==3
        writeDigitalPin(a,'D4',1);
        writeDigitalPin(a,'D6',1);
        writeDigitalPin(a,'D7',1);
        writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'A2',1);
writeDigitalPin(a,'A4',1);
        L=Ton(i);
        for j=1:L
        L=L-1
        pause(1);
        clc;
        end
        writeDigitalPin(a,'D4',0);
        writeDigitalPin(a,'D6',0);
        writeDigitalPin(a,'D7',0);
        writeDigitalPin(a,'D9',0);
writeDigitalPin(a,'D11',0);
writeDigitalPin(a,'A2',0);
writeDigitalPin(a,'A4',0);
    end
    
    if i==4
        writeDigitalPin(a,'D5',1);
        writeDigitalPin(a,'D6',1);
        writeDigitalPin(a,'D7',1);
        writeDigitalPin(a,'D8',1);
writeDigitalPin(a,'D13',1);
writeDigitalPin(a,'A2',1);
writeDigitalPin(a,'A4',1);
        L=Ton(i);
        for j=1:L
        L=L-1
        pause(1);
        clc;
        end
        writeDigitalPin(a,'D5',0);
        writeDigitalPin(a,'D6',0);
        writeDigitalPin(a,'D7',0);
        writeDigitalPin(a,'D8',0);
writeDigitalPin(a,'D13',0);
writeDigitalPin(a,'A2',0);
writeDigitalPin(a,'A4',0);
    end
end
    break;
end
end