function it= Fuzzification(It,n)
% It=[0.2,0.3,0.1,0.4];
% n=4;
a=0;
b=1;
for i=1:n
low(i)=triangularPulse(a,a+0.2,It(i));
bavg(i)=triangularPulse(a+0.2,a+0.4,It(i));
avg(i)=triangularPulse(a+0.4,b-0.4,It(i));
aavg(i)=triangularPulse(b-0.4,b-0.2,It(i));
high(i)=triangularPulse(b-0.2,b,It(i));
end
for i=1:n
    m=[low(i) bavg(i) avg(i) aavg(i) high(i)];
    m=max(m);
    if m==low(i)
        it(i)=b*(1/5);
    elseif m==bavg(i)
        it(i)=b*(2/5);
    elseif m==avg(i)
        it(i)=b*(3/5);
    elseif m==aavg(i)
        it(i)=b*(4/5);
    else
        it(i)=b;
    end
end