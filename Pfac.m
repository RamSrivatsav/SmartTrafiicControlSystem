function P = Pfac(Pt,n)
if max(Pt)==0
    P=0;
else
    for i=1:n
        if max(Pt)==Pt(i)
            P=i;
        end 
    end 
end