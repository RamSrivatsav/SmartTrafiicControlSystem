function Pt = emer(n)
TcountE1M=6;
TcountE2M=10;
o=input('case:');
switch(o)
    case 1
        TcountE1=[2 0 2 5];
        TcountE2=[1 4 3 5];
    case 2
        TcountE1=[0 1 1 0];
        TcountE2=[0 0 0 0];
    case 3
        TcountE1=[0 0 1 0];
        TcountE2=[0 0 0 0];
    otherwise
        TcountE1=[0 0 0 0];
        TcountE2=[0 0 0 0];
end
for i=1:n
    Pt(i)=0.8*(TcountE1(i)/TcountE1M)+0.2*(TcountE2(i)/TcountE2M);
end
