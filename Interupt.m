function []= Interupt(Pfac,Ton,a)
  if Pfac==1
writeDigitalPin(a,'D2',1);
writeDigitalPin(a,'D7',1);
writeDigitalPin(a,'D8',1);
writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'D13',1);
writeDigitalPin(a,'A4',1);
 L=Ton(Pfac);
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
  
  if Pfac==2
writeDigitalPin(a,'D3',1);
writeDigitalPin(a,'D6',1);
writeDigitalPin(a,'D8',1);
writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'D13',1);
writeDigitalPin(a,'A2',1);
 L=Ton(Pfac);
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
  
  if Pfac==3
writeDigitalPin(a,'D4',1);
writeDigitalPin(a,'D6',1);
writeDigitalPin(a,'D7',1);
writeDigitalPin(a,'D9',1);
writeDigitalPin(a,'D11',1);
writeDigitalPin(a,'A2',1);
writeDigitalPin(a,'A4',1);
 L=Ton(Pfac);
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
  
  if Pfac==4
writeDigitalPin(a,'D5',1);
writeDigitalPin(a,'D6',1);
writeDigitalPin(a,'D7',1);
writeDigitalPin(a,'D8',1);
writeDigitalPin(a,'D13',1);
writeDigitalPin(a,'A2',1);
writeDigitalPin(a,'A4',1);
 L=Ton(Pfac);
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